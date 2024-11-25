
#include "print.h"
#include "global.h"
#include "include/trap_handler.h"
#include "include/riscv_asm.h"
#include "include/trap.h"
#include "include/riscv_encoding.h"

#define __riscv_xlen 32

static int sbi_trap_irq(unsigned long mcause)
{
	mcause &= ~(1UL << ( __riscv_xlen - 1));
	switch (mcause) {
	case IRQ_M_TIMER:
		//sbi_timer_process();
		printf("TIMER Interrupt!!!\n");
		break;
	case IRQ_M_SOFT:
		//sbi_ipi_process();
		printf("Software Interrupt!!!\n");
		break;
	case IRQ_M_EXT:
		printf("External Interrupt!!!\n");
		sbi_irqchip_process();
		// to_host(); 
		break;
	default:
		break;
	};

	return 0;
}

struct sbi_trap_regs *toy_trap_handler(struct sbi_trap_regs *regs) 
{
    
    printf("/*=================TRAP handle Begin==================*/\n");
    
	unsigned long mepc   = csr_read(CSR_MEPC);
    unsigned long mcause = csr_read(CSR_MCAUSE);
	unsigned long mtval  = csr_read(CSR_MTVAL);

	printf("MEPC value is %08x \n", mepc);
    printf("MCAUSE value is %x \n", mcause);
    printf("MTVAL value is %08x \n", mtval);

	//printf("ra value is %08x \n", regs->ra);
	//printf("sp value is %08x \n", regs->sp);

	//interrupt process
	if (mcause & (1UL << (__riscv_xlen - 1))) 
	{
		sbi_trap_irq(mcause);
		//printf("global_cnt is %d \n",global_cnt);
		global_cnt++;
		printf("/*=============interrupt handle success !!!=============*/\n");
		//return regs;
	}

	//exception process
    switch (mcause) {
	case CAUSE_FETCH_ACCESS:
		printf("Trap cause is : FTECH ACCESS FAULT\n");
		sbi_fetch_access_handler();
		to_host();
		break;
	case CAUSE_ILLEGAL_INSTRUCTION:
		//rc  = sbi_illegal_insn_handler(mtval, regs);
		//msg = "illegal instruction handler failed";
        printf("Trap cause is : ILLEGAL_INSTRUCTION\n");
		sbi_illegal_insn_handler();
		to_host();  	// exit simmulation
		break;
    case CAUSE_BREAKPOINT:
        printf("Trap cause is : BREAK_PONIT\n");
		sbi_ebreak_handler();
		to_host(); 
		break;
	case CAUSE_MISALIGNED_LOAD:
		//rc = sbi_misaligned_load_handler(mtval, mtval2, mtinst, regs);
		//msg = "misaligned load handler failed";
        printf("Trap cause is : MISALIGNED_LOAD\n");
		break;
	case CAUSE_MISALIGNED_STORE:
		//rc  = sbi_misaligned_store_handler(mtval, mtval2, mtinst, regs);
		//msg = "misaligned store handler failed";
        printf("Trap cause is : MISALIGNED_STORE\n");
		break;
	case CAUSE_SUPERVISOR_ECALL:
        printf("Trap cause is : SUPERVISOR_ECALL\n");
        break;
	case CAUSE_MACHINE_ECALL:
		//rc  = sbi_ecall_handler(regs);
		//msg = "ecall handler failed";
		printf("Trap cause is : MACHINE_ECALL\n");
        sbi_ecall_handler();
		break;
	case CAUSE_LOAD_ACCESS:
        printf("Trap cause is : LOAD_ACCESS\n");
		sbi_load_access_handler();
		to_host();  	// exit simmulation
        break;
	case CAUSE_STORE_ACCESS:
		//sbi_pmu_ctr_incr_fw(mcause == CAUSE_LOAD_ACCESS ?
		//	SBI_PMU_FW_ACCESS_LOAD : SBI_PMU_FW_ACCESS_STORE);
        printf("Trap cause is : STORE_ACCESS\n");
		sbi_store_access_handler();
		to_host();  	// exit simmulation
        break;
		/* fallthrough */
	default:
		break;
	};

	printf("/*=================Trap handle End=================*/\n");

	return regs;
	
} 