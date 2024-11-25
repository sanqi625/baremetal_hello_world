	.file	"uart.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.uart_init,"ax",@progbits
	.align	2
	.globl	uart_init
	.type	uart_init, @function
uart_init:
	sw	a1,0(a0)
	ret
	.size	uart_init, .-uart_init
	.section	.text.uart_put_char,"ax",@progbits
	.align	2
	.globl	uart_put_char
	.type	uart_put_char, @function
uart_put_char:
	lw	a5,0(a0)
	sw	a1,0(a5)
	ret
	.size	uart_put_char, .-uart_put_char
	.section	.text.uart_put_string,"ax",@progbits
	.align	2
	.globl	uart_put_string
	.type	uart_put_string, @function
uart_put_string:
	lbu	a5,0(a1)
	beq	a5,zero,.L4
	lw	a4,0(a0)
.L6:
	sw	a5,0(a4)
	lbu	a5,1(a1)
	addi	a1,a1,1
	bne	a5,zero,.L6
.L4:
	ret
	.size	uart_put_string, .-uart_put_string
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
