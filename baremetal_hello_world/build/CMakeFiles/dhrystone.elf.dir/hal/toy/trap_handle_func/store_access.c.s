	.file	"store_access.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.sbi_store_access_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Illegal PC is = %0x\n"
	.align	2
.LC1:
	.string	"Illegal instruction is = %0x\n"
	.align	2
.LC2:
	.string	"/*============== Please check store access priviledge !!!==============*/\n"
	.section	.text.sbi_store_access_handler,"ax",@progbits
	.align	2
	.globl	sbi_store_access_handler
	.type	sbi_store_access_handler, @function
sbi_store_access_handler:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
 #APP
# 9 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/store_access.c" 1
	csrr a1, 0x341
# 0 "" 2
# 10 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/store_access.c" 1
	csrr s0, 0x343
# 0 "" 2
 #NO_APP
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf_
	lui	a0,%hi(.LC1)
	mv	a1,s0
	addi	a0,a0,%lo(.LC1)
	call	printf_
	li	a5,8192
	addi	a5,a5,-2024
 #APP
# 14 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/store_access.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
 #NO_APP
	lw	s0,8(sp)
	lw	ra,12(sp)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	addi	sp,sp,16
	tail	printf_
	.size	sbi_store_access_handler, .-sbi_store_access_handler
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
