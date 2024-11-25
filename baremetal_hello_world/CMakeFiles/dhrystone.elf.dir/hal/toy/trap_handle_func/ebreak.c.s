	.file	"ebreak.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.sbi_ebreak_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"/*============== Not Enter in Debug mode!!!==============*/\n"
	.align	2
.LC1:
	.string	"EBREAK PC value = %0x\n"
	.align	2
.LC2:
	.string	"EBREAK NEXT PC value = %0x\n"
	.section	.text.sbi_ebreak_handler,"ax",@progbits
	.align	2
	.globl	sbi_ebreak_handler
	.type	sbi_ebreak_handler, @function
sbi_ebreak_handler:
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	sw	s0,8(sp)
	call	printf_
 #APP
# 10 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ebreak.c" 1
	csrr s0, 0x341
# 0 "" 2
 #NO_APP
	lui	a0,%hi(.LC1)
	mv	a1,s0
	addi	a0,a0,%lo(.LC1)
	call	printf_
	addi	s0,s0,4
 #APP
# 16 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ebreak.c" 1
	csrw 0x341, s0
# 0 "" 2
# 18 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ebreak.c" 1
	csrr a1, 0x341
# 0 "" 2
 #NO_APP
	lw	s0,8(sp)
	lw	ra,12(sp)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	addi	sp,sp,16
	tail	printf_
	.size	sbi_ebreak_handler, .-sbi_ebreak_handler
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
