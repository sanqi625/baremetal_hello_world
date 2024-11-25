	.file	"global.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	global_cnt
	.section	.sdata.global_cnt,"aw"
	.align	2
	.type	global_cnt, @object
	.size	global_cnt, 4
global_cnt:
	.word	1
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
