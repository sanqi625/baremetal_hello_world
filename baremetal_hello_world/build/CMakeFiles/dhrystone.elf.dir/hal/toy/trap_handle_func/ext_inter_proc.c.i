# 0 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/print.h" 1

# 1 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h" 1
# 35 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdarg.h" 1 3 4
# 40 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdarg.h" 3 4

# 40 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 103 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 36 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h" 2
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h" 1 3 4
# 145 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 329 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 425 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 436 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h" 3 4
} max_align_t;
# 37 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h" 2
# 49 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"

# 49 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
void _putchar(char character);
# 61 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
int printf_(const char* format, ...);
# 72 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
int sprintf_(char* buffer, const char* format, ...);
# 87 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
int snprintf_(char* buffer, size_t count, const char* format, ...);
int vsnprintf_(char* buffer, size_t count, const char* format, va_list va);
# 98 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
int vprintf_(const char* format, va_list va);
# 109 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/printf.h"
int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...);
# 3 "/data/usr/qijiahuan/baremetal_hello_world/lib/print/print.h" 2
# 2 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/global.h" 1



extern int global_cnt;
# 3 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_asm.h" 1
# 4 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_encoding.h" 1
# 5 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 2

void sbi_irqchip_process()
{

    unsigned int mpec = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x341" : "=r"(__v) : : "memory"); __v; });
    unsigned int mstatus = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x300" : "=r"(__v) : : "memory"); __v; });
    unsigned int mip = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x344" : "=r"(__v) : : "memory"); __v; });
    unsigned int mie = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x304" : "=r"(__v) : : "memory"); __v; });

    printf_("[External interrupt] mepc value = %0x\n",mpec);
    printf_("[External interrupt] mstatus value = %0x\n",mstatus);
    printf_("[External interrupt] mip value = %0x\n",mip);
    printf_("[External interrupt] mie value = %0x\n",mie);

    printf_("/*============== Pay attention to the external interrupt !!!==============*/\n");

}
