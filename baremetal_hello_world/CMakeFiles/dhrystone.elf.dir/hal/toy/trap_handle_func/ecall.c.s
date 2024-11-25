	.file	"ecall.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.sbi_ecall_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ECALL PC value = %0x\n"
	.align	2
.LC1:
	.string	"ECALL NEXT PC value = %0x\n"
	.section	.text.sbi_ecall_handler,"ax",@progbits
	.align	2
	.globl	sbi_ecall_handler
	.type	sbi_ecall_handler, @function
sbi_ecall_handler:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
 #APP
# 8 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ecall.c" 1
	csrr s0, 0x341
# 0 "" 2
 #NO_APP
	lui	a0,%hi(.LC0)
	mv	a1,s0
	addi	a0,a0,%lo(.LC0)
	call	printf_
	addi	s0,s0,4
 #APP
# 14 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ecall.c" 1
	csrw 0x341, s0
# 0 "" 2
# 16 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ecall.c" 1
	csrr a1, 0x341
# 0 "" 2
 #NO_APP
	lw	s0,8(sp)
	lw	ra,12(sp)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	addi	sp,sp,16
	tail	printf_
	.size	sbi_ecall_handler, .-sbi_ecall_handler
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
