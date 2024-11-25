	.file	"trap_handler.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.toy_trap_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"/*=================TRAP handle Begin==================*/\n"
	.align	2
.LC1:
	.string	"MEPC value is %08x \n"
	.align	2
.LC2:
	.string	"MCAUSE value is %x \n"
	.align	2
.LC3:
	.string	"MTVAL value is %08x \n"
	.align	2
.LC4:
	.string	"TIMER Interrupt!!!\n"
	.align	2
.LC5:
	.string	"Software Interrupt!!!\n"
	.align	2
.LC6:
	.string	"External Interrupt!!!\n"
	.align	2
.LC7:
	.string	"/*=============interrupt handle success !!!=============*/\n"
	.align	2
.LC8:
	.string	"Trap cause is : FTECH ACCESS FAULT\n"
	.align	2
.LC9:
	.string	"Trap cause is : ILLEGAL_INSTRUCTION\n"
	.align	2
.LC10:
	.string	"Trap cause is : BREAK_PONIT\n"
	.align	2
.LC11:
	.string	"Trap cause is : MISALIGNED_LOAD\n"
	.align	2
.LC12:
	.string	"Trap cause is : MISALIGNED_STORE\n"
	.align	2
.LC13:
	.string	"Trap cause is : SUPERVISOR_ECALL\n"
	.align	2
.LC14:
	.string	"Trap cause is : MACHINE_ECALL\n"
	.align	2
.LC15:
	.string	"Trap cause is : LOAD_ACCESS\n"
	.align	2
.LC16:
	.string	"Trap cause is : STORE_ACCESS\n"
	.align	2
.LC17:
	.string	"/*=================Trap handle End=================*/\n"
	.section	.text.toy_trap_handler,"ax",@progbits
	.align	2
	.globl	toy_trap_handler
	.type	toy_trap_handler, @function
toy_trap_handler:
	addi	sp,sp,-16
	sw	s1,4(sp)
	mv	s1,a0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	call	printf_
 #APP
# 40 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 1
	csrr a1, 0x341
# 0 "" 2
# 41 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 1
	csrr s0, 0x342
# 0 "" 2
# 42 "/data/usr/qijiahuan/baremetal_hello_world/hal/toy/trap_handler.c" 1
	csrr s2, 0x343
# 0 "" 2
 #NO_APP
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf_
	lui	a0,%hi(.LC2)
	mv	a1,s0
	addi	a0,a0,%lo(.LC2)
	call	printf_
	lui	a0,%hi(.LC3)
	mv	a1,s2
	addi	a0,a0,%lo(.LC3)
	call	printf_
	blt	s0,zero,.L20
	li	a5,11
	bgtu	s0,a5,.L7
	lui	a5,%hi(.L9)
	addi	a5,a5,%lo(.L9)
	slli	s0,s0,2
	add	s0,s0,a5
	lw	a5,0(s0)
	jr	a5
	.section	.rodata.toy_trap_handler,"a",@progbits
	.align	2
	.align	2
.L9:
	.word	.L7
	.word	.L17
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L7
	.word	.L10
	.word	.L7
	.word	.L8
	.section	.text.toy_trap_handler
.L20:
	slli	s0,s0,1
	srli	s0,s0,1
	li	a5,7
	beq	s0,a5,.L3
	li	a5,11
	beq	s0,a5,.L4
	li	a5,3
	bne	s0,a5,.L6
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf_
.L6:
	lui	a4,%hi(global_cnt)
	lw	a5,%lo(global_cnt)(a4)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	addi	a5,a5,1
	sw	a5,%lo(global_cnt)(a4)
	call	printf_
.L7:
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf_
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s2,0(sp)
	mv	a0,s1
	lw	s1,4(sp)
	addi	sp,sp,16
	jr	ra
.L17:
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf_
	call	sbi_fetch_access_handler
	call	to_host
	j	.L7
.L16:
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf_
	call	sbi_illegal_insn_handler
	call	to_host
	j	.L7
.L15:
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf_
	call	sbi_ebreak_handler
	call	to_host
	j	.L7
.L14:
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf_
	j	.L7
.L13:
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf_
	j	.L7
.L12:
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf_
	j	.L7
.L11:
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf_
	j	.L7
.L10:
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf_
	j	.L7
.L8:
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf_
	call	sbi_ecall_handler
	j	.L7
.L3:
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf_
	j	.L6
.L4:
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf_
	call	sbi_irqchip_process
	j	.L6
	.size	toy_trap_handler, .-toy_trap_handler
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
