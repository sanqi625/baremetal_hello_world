#include "print.h"

int main() {

/*=================exception==================*/

    printf("/*=================TEST exception==================*/\n");
    
    int mstatus_val;
    int mie_val;
    int mtvec_val;
    int mepc_val;
    int mcause_val;
    int mtval_val;
    int mip_val;
    int mscratch_val;
    int mstatus_ecall_val;
    int mtvec_read;

    asm volatile(
        "csrr %[mstatus_out],mstatus\n\t"
        "csrr %[mie_out],mie\n\t"
        "csrr %[mtvec_out],mtvec\n\t"
        "csrr %[mepc_out],mepc\n\t"
        "csrr %[mcause_out],mcause\n\t"
        "csrr %[mtval_out],mtval\n\t"
        "csrr %[mip_out],mip\n\t"
        "csrr %[mscratch_out],mscratch\n\t"
        :[mstatus_out]"=r"(mstatus_val),
        [mie_out]"=r"(mie_val),
        [mtvec_out]"=r"(mtvec_val),
        [mepc_out]"=r"(mepc_val),
        [mcause_out]"=r"(mcause_val),
        [mtval_out]"=r"(mtval_val),
        [mip_out]"=r"(mip_val),
        [mscratch_out]"=r"(mscratch_val)
        //:[base0]"r"(mtvec_base0),
        // [base1]"r"(mtvec_base1)
    );

    printf("mstatus_val value is = %08x\n",mstatus_val);
    printf("mie_val value is = %08x\n",mie_val);
    printf("mtvec_val value is = %08x\n",mtvec_val);
    printf("mepc_val value is = %08x\n",mepc_val);
    printf("mcause_val value is = %08x\n",mcause_val);
    printf("mtval_val value is = %08x\n",mtval_val);
    printf("mip_val value is = %08x\n",mip_val);
    printf("mscratch_val value is = %08x\n",mscratch_val);

    asm volatile(
            "ecall \n\t"
    );

    printf("/*=================TEST Ecall Success!!!==================*/\n");

    return 0;

} 