#include <stdint.h>
#include <time.h>
#include "machine.h"



uint64_t get_cycle(void) {
    uint64_t res;

    res = (CPU_FREQ_HZ * clock()) / CLOCKS_PER_SEC;
    
    return res;
}
