# 0 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c"
# 18 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry.h" 1
# 385 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry.h"
  typedef int Enumeration;
# 402 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry.h"
typedef int One_Thirty;
typedef int One_Fifty;
typedef char Capital_Letter;
typedef int Boolean;
typedef char Str_30 [31];
typedef int Arr_1_Dim [50];
typedef int Arr_2_Dim [50] [50];

typedef struct record
    {
    struct record *Ptr_Comp;
    Enumeration Discr;
    union {
          struct {
                  Enumeration Enum_Comp;
                  int Int_Comp;
                  char Str_Comp [31];
                  } var_1;
          struct {
                  Enumeration E_Comp_2;
                  char Str_2_Comp [31];
                  } var_2;
          struct {
                  char Ch_1_Comp;
                  char Ch_2_Comp;
                  } var_3;
          } variant;
      } Rec_Type, *Rec_Pointer;
# 19 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c" 2
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
# 20 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c" 2

# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint.h" 1 3 4
# 9 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint.h" 3 4
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 1 3 4
# 12 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 3 4
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 1 3 4







# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/features.h" 1 3 4
# 28 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/features.h" 3 4
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/_newlib_version.h" 1 3 4
# 29 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/features.h" 2 3 4
# 9 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 2 3 4
# 41 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4

# 41 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 2 3 4
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/_intsup.h" 1 3 4
# 35 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 2 3 4
# 1 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/_stdint.h" 1 3 4
# 20 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/tools/software/riscv/riscv32-unknown-elf-gcc/riscv32-unknown-elf/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/tools/software/riscv/riscv32-unknown-elf-gcc/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint.h" 2 3 4
# 22 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/riscv/cycle.h" 1
# 23 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c" 2


# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/machine.h" 1
# 26 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c" 2
# 50 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c"

# 50 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c"
Rec_Pointer Ptr_Glob,
                Next_Ptr_Glob;
int Int_Glob;
Boolean Bool_Glob;
char Ch_1_Glob,
                Ch_2_Glob;
int Arr_1_Glob [50];
int Arr_2_Glob [50] [50];

Enumeration Func_1 ();



        Boolean Reg = 0;







long Begin_Time,
                End_Time,
                User_Time;
uint32_t Microseconds,
                Dhrystones_Per_Second;




Rec_Type Next_Ptr_Glob_inst;
Rec_Type Ptr_Glob_inst;
main ()




{

        One_Fifty Int_1_Loc;
  One_Fifty Int_2_Loc;
        One_Fifty Int_3_Loc;
  char Ch_Index;
        Enumeration Enum_Loc;
        Str_30 Str_1_Loc;
        Str_30 Str_2_Loc;
  int Run_Index;
  int Number_Of_Runs;


  Next_Ptr_Glob = &Next_Ptr_Glob_inst;
  Ptr_Glob= &Ptr_Glob_inst;

  Ptr_Glob->Ptr_Comp = Next_Ptr_Glob;
  Ptr_Glob->Discr = 0;
  Ptr_Glob->variant.var_1.Enum_Comp = 2;
  Ptr_Glob->variant.var_1.Int_Comp = 40;
  strcpy (Ptr_Glob->variant.var_1.Str_Comp,
          "DHRYSTONE PROGRAM, SOME STRING");
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");

  Arr_2_Glob [8][7] = 10;





  printf_ ("\n");
  printf_ ("Dhrystone Benchmark, Version 2.1 (Language: C)\n");
  printf_ ("\n");
  if (Reg)
  {
    printf_ ("Program compiled with 'register' attribute\n");
    printf_ ("\n");
  }
  else
  {
    printf_ ("Program compiled without 'register' attribute\n");
    printf_ ("\n");
  }

  Number_Of_Runs = 20;
# 142 "/data/usr/qijiahuan/baremetal_hello_world/benchmarks/dhrystone/dhry_1.c"
  printf_ ("Execution starts, %d runs through Dhrystone\n", Number_Of_Runs);






  uint64_t start_cycle = get_cycle();
  uint32_t start_instret = get_instret();

  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
  {
    Proc_5();
    Proc_4();

    Int_1_Loc = 2;
    Int_2_Loc = 3;
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
    Enum_Loc = 1;
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);

    while (Int_1_Loc < Int_2_Loc)
    {
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;

      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);

      Int_1_Loc += 1;
    }

    Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);

    Proc_1 (Ptr_Glob);
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)

    {
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))

        {
        Proc_6 (0, &Enum_Loc);
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
        Int_2_Loc = Run_Index;
        Int_Glob = Run_Index;
        }
    }

    Int_2_Loc = Int_2_Loc * Int_1_Loc;
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;

    Proc_2 (&Int_1_Loc);


  }






  uint32_t end_instret = get_instret();
  uint64_t end_cycle = get_cycle();

  printf_ ("Execution ends\n");
  printf_ ("\n");
  printf_ ("Final values of the variables used in the benchmark:\n");
  printf_ ("\n");
  printf_ ("Int_Glob:            %d\n", Int_Glob);
  printf_ ("        should be:   %d\n", 5);
  printf_ ("Bool_Glob:           %d\n", Bool_Glob);
  printf_ ("        should be:   %d\n", 1);
  printf_ ("Ch_1_Glob:           %c\n", Ch_1_Glob);
  printf_ ("        should be:   %c\n", 'A');
  printf_ ("Ch_2_Glob:           %c\n", Ch_2_Glob);
  printf_ ("        should be:   %c\n", 'B');
  printf_ ("Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
  printf_ ("        should be:   %d\n", 7);
  printf_ ("Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
  printf_ ("        should be:   Number_Of_Runs + 10\n");
  printf_ ("Ptr_Glob->\n");
  printf_ ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
  printf_ ("        should be:   (implementation-dependent)\n");
  printf_ ("  Discr:             %d\n", Ptr_Glob->Discr);
  printf_ ("        should be:   %d\n", 0);
  printf_ ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
  printf_ ("        should be:   %d\n", 2);
  printf_ ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
  printf_ ("        should be:   %d\n", 17);
  printf_ ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
  printf_ ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  printf_ ("Next_Ptr_Glob->\n");
  printf_ ("  Ptr_Comp:          %d\n", (int) Next_Ptr_Glob->Ptr_Comp);
  printf_ ("        should be:   (implementation-dependent), same as above\n");
  printf_ ("  Discr:             %d\n", Next_Ptr_Glob->Discr);
  printf_ ("        should be:   %d\n", 0);
  printf_ ("  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
  printf_ ("        should be:   %d\n", 1);
  printf_ ("  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
  printf_ ("        should be:   %d\n", 18);
  printf_ ("  Str_Comp:          %s\n",
                                Next_Ptr_Glob->variant.var_1.Str_Comp);
  printf_ ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  printf_ ("Int_1_Loc:           %d\n", Int_1_Loc);
  printf_ ("        should be:   %d\n", 5);
  printf_ ("Int_2_Loc:           %d\n", Int_2_Loc);
  printf_ ("        should be:   %d\n", 13);
  printf_ ("Int_3_Loc:           %d\n", Int_3_Loc);
  printf_ ("        should be:   %d\n", 7);
  printf_ ("Enum_Loc:            %d\n", Enum_Loc);
  printf_ ("        should be:   %d\n", 1);
  printf_ ("Str_1_Loc:           %s\n", Str_1_Loc);
  printf_ ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
  printf_ ("Str_2_Loc:           %s\n", Str_2_Loc);
  printf_ ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
  printf_ ("\n");

  uint64_t duration_cycle = end_cycle - start_cycle;
  uint32_t duration_instret = end_instret - start_instret;


  printf_("start_instret :%#x end_instret:%#x duration:%#d\n", start_instret, end_instret, duration_instret);
  printf_("start_cycle upper:%#x lower:%#x\n ", (uint32_t)(start_cycle>>32), (uint32_t)start_cycle);
  printf_("end_cycle upper:%#x lower:%#x\n", (uint32_t)(end_cycle>>32), (uint32_t)end_cycle);
  printf_("duration upper:%#x lower:%#x\n", (uint32_t)(duration_cycle>>32), (uint32_t)duration_cycle);
  printf_("Cycle Duration: %ld\n", duration_cycle);

  printf_("Assuming CPU frequency is (Hz): %d\n", 1000*1000*1000);

  printf_("IPC: %f\n", (float)duration_instret / duration_cycle);
  printf_("DMIPS/MHz: %f\n", (float)Number_Of_Runs / duration_cycle * 1000000 / 1757);
  Microseconds = duration_cycle / (1000*1000*1000 / 1000000 * Number_Of_Runs);
  Dhrystones_Per_Second = Number_Of_Runs * (1000*1000*1000 / duration_cycle);

  printf_ ("Microseconds for one run through Dhrystone: ");

  printf_ ("%d \n", (int)Microseconds);
  printf_ ("Dhrystones per Second:                      ");

  printf_ ("%d \n", (int)Dhrystones_Per_Second);
  printf_ ("\n");

}


Proc_1 (Ptr_Val_Par)


 Rec_Pointer Ptr_Val_Par;

{
  Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;



  *Ptr_Val_Par->Ptr_Comp = *Ptr_Glob;
  Ptr_Val_Par->variant.var_1.Int_Comp = 5;
  Next_Record->variant.var_1.Int_Comp
        = Ptr_Val_Par->variant.var_1.Int_Comp;
  Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
  Proc_3 (&Next_Record->Ptr_Comp);


  if (Next_Record->Discr == 0)

  {
    Next_Record->variant.var_1.Int_Comp = 6;
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp,
           &Next_Record->variant.var_1.Enum_Comp);
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10,
           &Next_Record->variant.var_1.Int_Comp);
  }
  else {
    *Ptr_Val_Par = *Ptr_Val_Par->Ptr_Comp;
  }
}


Proc_2 (Int_Par_Ref)




One_Fifty *Int_Par_Ref;
{
  One_Fifty Int_Loc;
  Enumeration Enum_Loc;

  Int_Loc = *Int_Par_Ref + 10;
  do
    if (Ch_1_Glob == 'A')

    {
      Int_Loc -= 1;
      *Int_Par_Ref = Int_Loc - Int_Glob;
      Enum_Loc = 0;
    }
  while (Enum_Loc != 0);
}


Proc_3 (Ptr_Ref_Par)




Rec_Pointer *Ptr_Ref_Par;

{
  if (Ptr_Glob != 0)

    *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
  Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
}


Proc_4 ()


{
  Boolean Bool_Loc;

  Bool_Loc = Ch_1_Glob == 'A';
  Bool_Glob = Bool_Loc | Bool_Glob;
  Ch_2_Glob = 'B';
}


Proc_5 ()


{
  Ch_1_Glob = 'A';
  Bool_Glob = 0;
}
