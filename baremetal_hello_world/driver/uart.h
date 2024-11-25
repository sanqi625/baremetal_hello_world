#ifndef __UART_H__
#define __UART_H__

#include <stdint.h>

typedef struct uart_element_t {
    uintptr_t base_addr;
}uart_element_t;

#define UART_BASE_ADDR 0xC0001000
#define UART_DR_OFFSET 0x0


void uart_init(uart_element_t *element, uintptr_t base_addr);

void uart_put_char(uart_element_t *element, char dat);

void uart_put_string(uart_element_t *element, char *str);

#endif