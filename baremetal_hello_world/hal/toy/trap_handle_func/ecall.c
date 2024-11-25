#include "print.h"
#include "toy/include/riscv_asm.h"
#include "toy/include/riscv_encoding.h"

void sbi_ecall_handler()
{

    unsigned int mpec    = csr_read(CSR_MEPC);
    printf("ECALL PC value = %0x\n",mpec);

    //ECALL next PC +4
    unsigned int next_pc = mpec + 4;

    csr_write(CSR_MEPC,next_pc);

    unsigned int next_pc_val = csr_read(CSR_MEPC);

    printf("ECALL NEXT PC value = %0x\n",next_pc_val);


}