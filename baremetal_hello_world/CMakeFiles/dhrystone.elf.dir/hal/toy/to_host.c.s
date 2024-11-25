	.file	"to_host.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.to_host,"ax",@progbits
	.align	2
	.globl	to_host
	.type	to_host, @function
to_host:
	li	a5,-1073741824
	li	a4,1
	sw	a4,0(a5)
	ret
	.size	to_host, .-to_host
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
