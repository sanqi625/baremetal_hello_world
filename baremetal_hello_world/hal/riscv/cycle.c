

#include <stdint.h>

uint32_t get_instret(void) {
    uint32_t ret = 0;
    asm volatile("csrr %0, instret":"=r"(ret));
    return ret;
}

uint64_t get_cycle(void) {
    uint32_t lower32_cycle = 0;
    uint32_t upper32_cycle = 0;
    asm volatile("csrr %0, mcycle":"=r"(lower32_cycle));
    asm volatile("csrr %0, mcycleh":"=r"(upper32_cycle));
    return ((uint64_t)upper32_cycle << 32) + (uint64_t)lower32_cycle;
}
