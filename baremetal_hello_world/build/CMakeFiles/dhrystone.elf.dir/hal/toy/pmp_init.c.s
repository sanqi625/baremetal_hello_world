	.file	"pmp_init.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.pmp_init,"ax",@progbits
	.align	2
	.globl	pmp_init
	.type	pmp_init, @function
pmp_init:
	li	a4,-2147459072
	addi	a4,a4,-1684
 #APP
# 12 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/pmp_init.c" 1
	csrw pmpaddr0, a4
# 0 "" 2
 #NO_APP
	li	a5,-1073741824
	addi	a5,a5,-32
 #APP
# 14 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/pmp_init.c" 1
	csrw pmpaddr1, a5
# 0 "" 2
# 15 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/pmp_init.c" 1
	csrw pmpaddr2, a4
# 0 "" 2
# 16 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/pmp_init.c" 1
	csrw pmpaddr3, a5
# 0 "" 2
 #NO_APP
	li	a5,-1734860800
	addi	a5,a5,-1896
 #APP
# 17 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/pmp_init.c" 1
	csrw pmpcfg0, a5
# 0 "" 2
 #NO_APP
	ret
	.size	pmp_init, .-pmp_init
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
