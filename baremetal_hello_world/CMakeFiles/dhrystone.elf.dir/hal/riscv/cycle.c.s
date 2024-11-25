	.file	"cycle.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.get_instret,"ax",@progbits
	.align	2
	.globl	get_instret
	.type	get_instret, @function
get_instret:
 #APP
# 7 "/data/usr/qijiahuan/baremetal_hello_world/hal/riscv/cycle.c" 1
	csrr a0, instret
# 0 "" 2
 #NO_APP
	ret
	.size	get_instret, .-get_instret
	.section	.text.get_cycle,"ax",@progbits
	.align	2
	.globl	get_cycle
	.type	get_cycle, @function
get_cycle:
 #APP
# 14 "/data/usr/qijiahuan/baremetal_hello_world/hal/riscv/cycle.c" 1
	csrr a0, mcycle
# 0 "" 2
# 15 "/data/usr/qijiahuan/baremetal_hello_world/hal/riscv/cycle.c" 1
	csrr a1, mcycleh
# 0 "" 2
 #NO_APP
	ret
	.size	get_cycle, .-get_cycle
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
