	.file	"ext_inter_proc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.sbi_irqchip_process.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[External interrupt] mepc value = %0x\n"
	.align	2
.LC1:
	.string	"[External interrupt] mstatus value = %0x\n"
	.align	2
.LC2:
	.string	"[External interrupt] mip value = %0x\n"
	.align	2
.LC3:
	.string	"[External interrupt] mie value = %0x\n"
	.align	2
.LC4:
	.string	"/*============== Pay attention to the external interrupt !!!==============*/\n"
	.section	.text.sbi_irqchip_process,"ax",@progbits
	.align	2
	.globl	sbi_irqchip_process
	.type	sbi_irqchip_process, @function
sbi_irqchip_process:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
 #APP
# 9 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 1
	csrr a1, 0x341
# 0 "" 2
# 10 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 1
	csrr s2, 0x300
# 0 "" 2
# 11 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 1
	csrr s1, 0x344
# 0 "" 2
# 12 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handle_func/ext_inter_proc.c" 1
	csrr s0, 0x304
# 0 "" 2
 #NO_APP
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf_
	lui	a0,%hi(.LC1)
	mv	a1,s2
	addi	a0,a0,%lo(.LC1)
	call	printf_
	lui	a0,%hi(.LC2)
	mv	a1,s1
	addi	a0,a0,%lo(.LC2)
	call	printf_
	lui	a0,%hi(.LC3)
	mv	a1,s0
	addi	a0,a0,%lo(.LC3)
	call	printf_
	lw	s0,8(sp)
	lw	ra,12(sp)
	lw	s1,4(sp)
	lw	s2,0(sp)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	addi	sp,sp,16
	tail	printf_
	.size	sbi_irqchip_process, .-sbi_irqchip_process
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
