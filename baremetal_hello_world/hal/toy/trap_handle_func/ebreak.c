#include "print.h"
#include "toy/include/riscv_asm.h"
#include "toy/include/riscv_encoding.h"

void sbi_ebreak_handler()
{

    printf("/*============== Not Enter in Debug mode!!!==============*/\n");

    unsigned int mpec    = csr_read(CSR_MEPC);
    printf("EBREAK PC value = %0x\n",mpec);

    //ECALL next PC +4
    unsigned int next_pc = mpec + 4;

    csr_write(CSR_MEPC,next_pc);

    unsigned int next_pc_val = csr_read(CSR_MEPC);

    printf("EBREAK NEXT PC value = %0x\n",next_pc_val);

}