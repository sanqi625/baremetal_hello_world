
#ifndef __TRAP_HANDLER__
#define __TRAP_HANDLER__

void sbi_ecall_handler(void);

void sbi_illegal_insn_handler(void);

void sbi_ebreak_handler(void);

void sbi_fetch_access_handler(void);

void sbi_load_access_handler(void);

void sbi_store_access_handler(void);

//static int sbi_trap_irq(unsigned long mcause);
void sbi_irqchip_process();

void to_host(void);

#endif