# 0 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/startup.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/startup.S"

# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_asm.h" 1
# 3 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/startup.S" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h" 1
# 16 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h"
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_encoding.h" 1
# 17 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/trap.h" 2
# 4 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/startup.S" 2
# 1 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/include/riscv_encoding.h" 1
# 5 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/startup.S" 2

    .text
    .align 2
    .global __start

__start:
    # disable interrupt
    # initialize mtvec value

    # intialize all common reigsters
    li x1, 0
    li x2, 0
    li x3, 0
    li x4, 0
    li x5, 0
    li x6, 0
    li x7, 0
    li x8, 0
    li x9, 0
    li x10, 0
    li x11, 0
    li x12, 0
    li x13, 0
    li x14, 0
    li x15, 0
    li x16, 0
    li x17, 0
    li x18, 0
    li x19, 0
    li x20, 0
    li x21, 0
    li x22, 0
    li x23, 0
    li x24, 0
    li x25, 0
    li x26, 0
    li x27, 0
    li x28, 0
    li x29, 0
    li x30, 0
    li x31, 0
# csrrw x0, pmpcfg0, 0x1f1f
# csrrw x0, pmpaddr0, 0x8fffffff
# csrrw x0, pmpaddr1, 0xafffffff
 csrw pmpcfg0, 8
 csrr x1, pmpcfg0

# setup sp
    la sp, __stack_base

# clear bss
    la t0, __bss_start
    la t1, __bss_end
clear_bss_loop:
    sw zero, 0(t0)
    addi t0, t0, 4
    blt t0, t1, clear_bss_loop

# clear sbss
    la t0, __sbss_start
    la t1, __sbss_end
clear_sbss_loop:
    sw zero, 0(t0)
    addi t0, t0, 4
    blt t0, t1, clear_sbss_loop

start_warm:
    jal init

 # init mstatus

 add x3,x0,8
 csrw mstatus,x3

 # init mie
 li x3,0x888
 csrw mie,x3

    # init trap handler
    lla a4, _trap_handler
 csrw mtvec, a4

    jal main
    jal to_host

    wfi

.macro TRAP_SAVE_AND_SETUP_SP_T0

 csrrw tp, 0x340, tp
 add tp, sp, 0
# 121 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/startup.S"
 sw sp, (((2) * 4) - ((35) * 4))(tp)


 add sp, tp, -(((35) * 4))







 csrrw tp, 0x340, tp
.endm

.macro TRAP_SAVE_GENERAL_REGS_EXCEPT_SP_T0

 sw zero, ((0) * 4)(sp)
 sw ra, ((1) * 4)(sp)
 sw gp, ((3) * 4)(sp)
 sw tp, ((4) * 4)(sp)
 sw t0, ((5) * 4)(sp)
 sw t2, ((7) * 4)(sp)
 sw t1, ((6) * 4)(sp)
 sw t2, ((7) * 4)(sp)
 sw s0, ((8) * 4)(sp)
 sw s1, ((9) * 4)(sp)
 sw a0, ((10) * 4)(sp)
 sw a1, ((11) * 4)(sp)
 sw a2, ((12) * 4)(sp)
 sw a3, ((13) * 4)(sp)
 sw a4, ((14) * 4)(sp)
 sw a5, ((15) * 4)(sp)
 sw a6, ((16) * 4)(sp)
 sw a7, ((17) * 4)(sp)
 sw s2, ((18) * 4)(sp)
 sw s3, ((19) * 4)(sp)
 sw s4, ((20) * 4)(sp)
 sw s5, ((21) * 4)(sp)
 sw s6, ((22) * 4)(sp)
 sw s7, ((23) * 4)(sp)
 sw s8, ((24) * 4)(sp)
 sw s9, ((25) * 4)(sp)
 sw s10, ((26) * 4)(sp)
 sw s11, ((27) * 4)(sp)
 sw t3, ((28) * 4)(sp)
 sw t4, ((29) * 4)(sp)
 sw t5, ((30) * 4)(sp)
 sw t6, ((31) * 4)(sp)
.endm

.macro TRAP_CALL_C_ROUTINE

 add a0, sp, zero
 jal toy_trap_handler
.endm

.macro TRAP_RESTORE_GENERAL_REGS_EXCEPT_A0_T0

 lw ra, ((1) * 4)(a0)
 lw sp, ((2) * 4)(a0)
 lw gp, ((3) * 4)(a0)
 lw tp, ((4) * 4)(a0)
 lw t0, ((5) * 4)(a0)
 lw t1, ((6) * 4)(a0)
 lw t2, ((7) * 4)(a0)
 lw s0, ((8) * 4)(a0)
 lw s1, ((9) * 4)(a0)
 lw a1, ((11) * 4)(a0)
 lw a2, ((12) * 4)(a0)
 lw a3, ((13) * 4)(a0)
 lw a4, ((14) * 4)(a0)
 lw a5, ((15) * 4)(a0)
 lw a6, ((16) * 4)(a0)
 lw a7, ((17) * 4)(a0)
 lw s2, ((18) * 4)(a0)
 lw s3, ((19) * 4)(a0)
 lw s4, ((20) * 4)(a0)
 lw s5, ((21) * 4)(a0)
 lw s6, ((22) * 4)(a0)
 lw s7, ((23) * 4)(a0)
 lw s8, ((24) * 4)(a0)
 lw s9, ((25) * 4)(a0)
 lw s10, ((26) * 4)(a0)
 lw s11, ((27) * 4)(a0)
 lw t3, ((28) * 4)(a0)
 lw t4, ((29) * 4)(a0)
 lw t5, ((30) * 4)(a0)
 lw t6, ((31) * 4)(a0)
.endm

.macro TRAP_RESTORE_A0_T0




 lw a0, ((10) * 4)(a0)


.endm

 .section .text, "ax", %progbits
 .align 2
 .globl _trap_handler
 .globl _trap_exit

_trap_handler:

 TRAP_SAVE_AND_SETUP_SP_T0



 TRAP_SAVE_GENERAL_REGS_EXCEPT_SP_T0

    TRAP_CALL_C_ROUTINE

_trap_exit:
 TRAP_RESTORE_GENERAL_REGS_EXCEPT_A0_T0



 TRAP_RESTORE_A0_T0

 mret
