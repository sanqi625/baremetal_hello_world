#include <stdint.h>
#define TO_HOST_BASE 0xc0000000

void to_host() {
    volatile uint32_t * to_host_ptr = (volatile uint32_t *)TO_HOST_BASE;
    *to_host_ptr = 1;
}