#include "uart.h"

void uart_init(uart_element_t *element, uintptr_t base_addr) {
    element->base_addr = base_addr;
}

void uart_put_char(uart_element_t *element, char dat) {
    volatile uint32_t *dr_reg = (volatile uint32_t *) (element->base_addr + UART_DR_OFFSET);
    *dr_reg = dat;
}


void uart_put_string(uart_element_t *element, char *str) {
    while (*str) {
        uart_put_char(element, *str);
        str++;
    }
}