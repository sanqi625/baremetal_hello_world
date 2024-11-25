#include "print.h"
#include "toy/global.h"
#include "toy/include/riscv_asm.h"
#include "toy/include/riscv_encoding.h"

void sbi_irqchip_process()
{
    
    unsigned int mpec    = csr_read(CSR_MEPC);
    unsigned int mstatus = csr_read(CSR_MSTATUS);
    unsigned int mip     = csr_read(CSR_MIP);
    unsigned int mie     = csr_read(CSR_MIE);

    printf("[External interrupt] mepc value = %0x\n",mpec);
    printf("[External interrupt] mstatus value = %0x\n",mstatus);
    printf("[External interrupt] mip value = %0x\n",mip);
    printf("[External interrupt] mie value = %0x\n",mie);

    printf("/*============== Pay attention to the external interrupt !!!==============*/\n");

}