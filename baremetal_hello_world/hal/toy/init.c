#include <stdint.h>
//#define TO_HOST_BASE 0xc0000000
#include "uart.h"
#include "printf.h"
#include "pmp_init.h"

uart_element_t uart;


void _putchar(char character) {
    uart_put_char(&uart, character);
}


void init() {

    uart_init(&uart, UART_BASE_ADDR);
    printf("Bare Metal Init Start.\n");
    pmp_init();


    //int csr_val;
    //asm("csrr %[out1],fcsr\n\t" :[out1]"=r"(csr_val));
    //printf("CSR Read Finished.\n");
    //printf("CSR Val is %d.\n", csr_val);
    printf("Bare Metal Init Finished.\n");
}