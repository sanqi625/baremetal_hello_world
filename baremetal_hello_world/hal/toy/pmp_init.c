#include "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_asm.h"
#include "pmp_init.h"

//uart_element_t uart;
//void _putchar(char character) {
//    uart_put_char(&uart, character);
//}

void pmp_init(void) {
    //uart_init(&uart, UART_BASE_ADDR);

    csr_write(pmpaddr0, 0x8000596c);
    //csr_write(pmpaddr1, 0xafffffff);
    csr_write(pmpaddr1, 0xbfffffe0);
    csr_write(pmpaddr2, 0x8000596c);
    csr_write(pmpaddr3, 0xbfffffe0);
    csr_write(pmpcfg0, 0x98981898);

} 