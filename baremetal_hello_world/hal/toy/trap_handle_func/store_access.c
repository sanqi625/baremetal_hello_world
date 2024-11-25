#include "print.h"
#include "toy/include/riscv_asm.h"
#include "toy/include/riscv_encoding.h"
#include "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_asm.h"

void sbi_store_access_handler()
{

    unsigned int mepc    = csr_read(CSR_MEPC);
    unsigned int mtval   = csr_read(CSR_MTVAL);

    printf("Illegal PC is = %0x\n",mepc);
    printf("Illegal instruction is = %0x\n",mtval);
    csr_write(pmpcfg0, 0x1818);

    printf("/*============== Please check store access priviledge !!!==============*/\n");

}