# 0 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c"

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
# 3 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/global.h" 1



extern int global_cnt;
# 4 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap_handler.h" 1




void sbi_ecall_handler(void);

void sbi_illegal_insn_handler(void);

void sbi_ebreak_handler(void);

void sbi_fetch_access_handler(void);

void sbi_load_access_handler(void);

void sbi_store_access_handler(void);


void sbi_irqchip_process();

void to_host(void);
# 5 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_asm.h" 1
# 6 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h" 1
# 16 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_encoding.h" 1
# 17 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h" 2
# 130 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h"
struct sbi_trap_regs {

 unsigned long zero;

 unsigned long ra;

 unsigned long sp;

 unsigned long gp;

 unsigned long tp;

 unsigned long t0;

 unsigned long t1;

 unsigned long t2;

 unsigned long s0;

 unsigned long s1;

 unsigned long a0;

 unsigned long a1;

 unsigned long a2;

 unsigned long a3;

 unsigned long a4;

 unsigned long a5;

 unsigned long a6;

 unsigned long a7;

 unsigned long s2;

 unsigned long s3;

 unsigned long s4;

 unsigned long s5;

 unsigned long s6;

 unsigned long s7;

 unsigned long s8;

 unsigned long s9;

 unsigned long s10;

 unsigned long s11;

 unsigned long t3;

 unsigned long t4;

 unsigned long t5;

 unsigned long t6;

 unsigned long mepc;

 unsigned long mstatus;

 unsigned long mstatusH;
};


struct sbi_trap_info {

 unsigned long epc;

 unsigned long cause;

 unsigned long tval;

 unsigned long tval2;

 unsigned long tinst;

 unsigned long gva;
};
# 7 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_encoding.h" 1
# 8 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 2



static int sbi_trap_irq(unsigned long mcause)
{
 mcause &= ~(1UL << ( 32 - 1));
 switch (mcause) {
 case 7:

  printf_("TIMER Interrupt!!!\n");
  break;
 case 3:

  printf_("Software Interrupt!!!\n");
  break;
 case 11:
  printf_("External Interrupt!!!\n");
  sbi_irqchip_process();

  break;
 default:
  break;
 };

 return 0;
}

struct sbi_trap_regs *toy_trap_handler(struct sbi_trap_regs *regs)
{

    printf_("/*=================TRAP handle Begin==================*/\n");

 unsigned long mepc = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x341" : "=r"(__v) : : "memory"); __v; });
    unsigned long mcause = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x342" : "=r"(__v) : : "memory"); __v; });
 unsigned long mtval = ({ register unsigned long __v; __asm__ __volatile__("csrr %0, " "0x343" : "=r"(__v) : : "memory"); __v; });

 printf_("MEPC value is %08x \n", mepc);
    printf_("MCAUSE value is %x \n", mcause);
    printf_("MTVAL value is %08x \n", mtval);





 if (mcause & (1UL << (32 - 1)))
 {
  sbi_trap_irq(mcause);

  global_cnt++;
  printf_("/*=============interrupt handle success !!!=============*/\n");

 }


    switch (mcause) {
 case 0x1:
  printf_("Trap cause is : FTECH ACCESS FAULT\n");
  sbi_fetch_access_handler();
  to_host();
  break;
 case 0x2:


        printf_("Trap cause is : ILLEGAL_INSTRUCTION\n");
  sbi_illegal_insn_handler();
  to_host();
  break;
    case 0x3:
        printf_("Trap cause is : BREAK_PONIT\n");
  sbi_ebreak_handler();
  to_host();
  break;
 case 0x4:


        printf_("Trap cause is : MISALIGNED_LOAD\n");
  break;
 case 0x6:


        printf_("Trap cause is : MISALIGNED_STORE\n");
  break;
 case 0x9:
        printf_("Trap cause is : SUPERVISOR_ECALL\n");
        break;
 case 0xb:


  printf_("Trap cause is : MACHINE_ECALL\n");
        sbi_ecall_handler();
  break;
 case 0x5:
        printf_("Trap cause is : LOAD_ACCESS\n");
  sbi_load_access_handler();
  to_host();
        break;
 case 0x7:


        printf_("Trap cause is : STORE_ACCESS\n");
  sbi_store_access_handler();
  to_host();
        break;

 default:
  break;
 };

 printf_("/*=================Trap handle End=================*/\n");

 return regs;

}
