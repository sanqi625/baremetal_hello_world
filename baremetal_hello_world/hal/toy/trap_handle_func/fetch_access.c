#include "print.h"
#include "toy/include/riscv_asm.h"
#include "toy/include/riscv_encoding.h"

void sbi_fetch_access_handler()
{

    unsigned int mepc    = csr_read(CSR_MEPC);
    unsigned int mtval   = csr_read(CSR_MTVAL);

    printf("Illegal PC is = %0x\n",mepc);
    printf("Illegal instruction is = %0x\n",mtval);

    printf("/*============== Please check instruction access priviledge !!!==============*/\n");

}