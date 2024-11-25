	.file	"init.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text._putchar,"ax",@progbits
	.align	2
	.globl	_putchar
	.type	_putchar, @function
_putchar:
	mv	a1,a0
	lui	a0,%hi(uart)
	addi	a0,a0,%lo(uart)
	tail	uart_put_char
	.size	_putchar, .-_putchar
	.section	.rodata.init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Bare Metal Init Start.\n"
	.align	2
.LC1:
	.string	"Bare Metal Init Finished.\n"
	.section	.text.init,"ax",@progbits
	.align	2
	.globl	init
	.type	init, @function
init:
	lui	a0,%hi(uart)
	addi	sp,sp,-16
	li	a1,-1073737728
	addi	a0,a0,%lo(uart)
	sw	ra,12(sp)
	call	uart_init
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf_
	lw	ra,12(sp)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	addi	sp,sp,16
	tail	printf_
	.size	init, .-init
	.globl	uart
	.section	.sbss.uart,"aw",@nobits
	.align	2
	.type	uart, @object
	.size	uart, 4
uart:
	.zero	4
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
