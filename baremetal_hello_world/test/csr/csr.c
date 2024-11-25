//#include "uart.h"
#include "print.h"
#include "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_asm.h"

//uart_element_t uart;
//void _putchar(char character) {
//    uart_put_char(&uart, character);
//}

int main(void) {
    //uart_init(&uart, UART_BASE_ADDR);

    csr_write(pmpaddr0, 0x8fffffff);
    csr_write(pmpaddr1, 0xafffffff);
    csr_write(pmpcfg0, 0x9818);
    return 0;
} 