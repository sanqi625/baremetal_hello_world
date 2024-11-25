#include "uart.h"
#include "printf.h"

int a = 1;

uart_element_t uart;
void _putchar(char character) {
    uart_put_char(&uart, character);
}

int main(void) {
    uart_init(&uart, UART_BASE_ADDR);
    printf("hello world\n");
    printf("%d\n", a);
    return 0;
} 