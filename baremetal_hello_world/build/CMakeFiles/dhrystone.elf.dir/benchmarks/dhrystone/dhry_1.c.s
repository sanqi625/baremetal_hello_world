	.file	"dhry_1.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.Proc_1,"ax",@progbits
	.align	2
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
	addi	sp,sp,-16
	sw	s2,0(sp)
	lui	s2,%hi(Ptr_Glob)
	lw	a5,%lo(Ptr_Glob)(s2)
	sw	s0,8(sp)
	lw	s0,0(a0)
	lw	a4,0(a5)
	lw	t6,4(a5)
	lw	t5,8(a5)
	lw	t4,16(a5)
	lw	t3,20(a5)
	lw	t1,24(a5)
	lw	a7,28(a5)
	lw	a6,32(a5)
	lw	a2,44(a5)
	lw	a1,40(a5)
	sw	ra,12(sp)
	sw	s1,4(sp)
	mv	s1,a0
	lw	a0,36(a5)
	sw	a4,0(s0)
	lw	a3,0(s1)
	li	a4,5
	sw	t6,4(s0)
	sw	t5,8(s0)
	sw	t4,16(s0)
	sw	t3,20(s0)
	sw	t1,24(s0)
	sw	a7,28(s0)
	sw	a6,32(s0)
	sw	a0,36(s0)
	sw	a2,44(s0)
	sw	a1,40(s0)
	sw	a4,12(s1)
	sw	a3,0(s0)
	lw	a5,0(a5)
	lui	a3,%hi(Int_Glob)
	lw	a1,%lo(Int_Glob)(a3)
	sw	a5,0(s0)
	lw	a2,%lo(Ptr_Glob)(s2)
	sw	a4,12(s0)
	li	a0,10
	addi	a2,a2,12
	call	Proc_7
	lw	a5,4(s0)
	beq	a5,zero,.L5
	lw	a5,0(s1)
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	t6,0(a5)
	lw	t5,4(a5)
	lw	t4,8(a5)
	lw	t3,12(a5)
	lw	t1,16(a5)
	lw	a7,20(a5)
	lw	a6,24(a5)
	lw	a1,28(a5)
	lw	a2,32(a5)
	lw	a3,36(a5)
	lw	a4,40(a5)
	lw	a5,44(a5)
	sw	t6,0(s1)
	sw	t5,4(s1)
	sw	t4,8(s1)
	sw	t3,12(s1)
	sw	t1,16(s1)
	sw	a7,20(s1)
	sw	a6,24(s1)
	sw	a1,28(s1)
	sw	a2,32(s1)
	sw	a3,36(s1)
	sw	a4,40(s1)
	sw	a5,44(s1)
	lw	s2,0(sp)
	lw	s1,4(sp)
	addi	sp,sp,16
	jr	ra
.L5:
	lw	a0,8(s1)
	li	a5,6
	sw	a5,12(s0)
	addi	a1,s0,8
	call	Proc_6
	lw	a5,%lo(Ptr_Glob)(s2)
	lw	a0,12(s0)
	addi	a2,s0,12
	lw	a5,0(a5)
	lw	ra,12(sp)
	lw	s1,4(sp)
	sw	a5,0(s0)
	lw	s0,8(sp)
	lw	s2,0(sp)
	li	a1,10
	addi	sp,sp,16
	tail	Proc_7
	.size	Proc_1, .-Proc_1
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"\n"
	.align	2
.LC3:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"
	.align	2
.LC4:
	.string	"Program compiled with 'register' attribute\n"
	.align	2
.LC5:
	.string	"Program compiled without 'register' attribute\n"
	.align	2
.LC6:
	.string	"Execution starts, %d runs through Dhrystone\n"
	.align	2
.LC9:
	.string	"Execution ends\n"
	.align	2
.LC10:
	.string	"Final values of the variables used in the benchmark:\n"
	.align	2
.LC11:
	.string	"Int_Glob:            %d\n"
	.align	2
.LC12:
	.string	"        should be:   %d\n"
	.align	2
.LC13:
	.string	"Bool_Glob:           %d\n"
	.align	2
.LC14:
	.string	"Ch_1_Glob:           %c\n"
	.align	2
.LC15:
	.string	"        should be:   %c\n"
	.align	2
.LC16:
	.string	"Ch_2_Glob:           %c\n"
	.align	2
.LC17:
	.string	"Arr_1_Glob[8]:       %d\n"
	.align	2
.LC18:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.align	2
.LC19:
	.string	"        should be:   Number_Of_Runs + 10\n"
	.align	2
.LC20:
	.string	"Ptr_Glob->\n"
	.align	2
.LC21:
	.string	"  Ptr_Comp:          %d\n"
	.align	2
.LC22:
	.string	"        should be:   (implementation-dependent)\n"
	.align	2
.LC23:
	.string	"  Discr:             %d\n"
	.align	2
.LC24:
	.string	"  Enum_Comp:         %d\n"
	.align	2
.LC25:
	.string	"  Int_Comp:          %d\n"
	.align	2
.LC26:
	.string	"  Str_Comp:          %s\n"
	.align	2
.LC27:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.align	2
.LC28:
	.string	"Next_Ptr_Glob->\n"
	.align	2
.LC29:
	.string	"        should be:   (implementation-dependent), same as above\n"
	.align	2
.LC30:
	.string	"Int_1_Loc:           %d\n"
	.align	2
.LC31:
	.string	"Int_2_Loc:           %d\n"
	.align	2
.LC32:
	.string	"Int_3_Loc:           %d\n"
	.align	2
.LC33:
	.string	"Enum_Loc:            %d\n"
	.align	2
.LC34:
	.string	"Str_1_Loc:           %s\n"
	.align	2
.LC35:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.align	2
.LC36:
	.string	"Str_2_Loc:           %s\n"
	.align	2
.LC37:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align	2
.LC38:
	.string	"start_instret :%#x end_instret:%#x duration:%#d\n"
	.align	2
.LC39:
	.string	"start_cycle upper:%#x lower:%#x\n "
	.align	2
.LC40:
	.string	"end_cycle upper:%#x lower:%#x\n"
	.align	2
.LC41:
	.string	"duration upper:%#x lower:%#x\n"
	.align	2
.LC42:
	.string	"Cycle Duration: %ld\n"
	.align	2
.LC43:
	.string	"Assuming CPU frequency is (Hz): %d\n"
	.globl	__floatundisf
	.globl	__floatunsisf
	.globl	__divsf3
	.globl	__extendsfdf2
	.align	2
.LC44:
	.string	"IPC: %f\n"
	.globl	__mulsf3
	.align	2
.LC48:
	.string	"DMIPS/MHz: %f\n"
	.globl	__udivdi3
	.align	2
.LC49:
	.string	"Microseconds for one run through Dhrystone: "
	.align	2
.LC50:
	.string	"%d \n"
	.align	2
.LC51:
	.string	"Dhrystones per Second:                      "
	.align	2
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.align	2
.LC1:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
	.align	2
.LC7:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.align	2
.LC8:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	addi	sp,sp,-192
	lw	t0,0(a5)
	lw	t6,4(a5)
	lw	t4,12(a5)
	lw	t3,16(a5)
	lw	t5,8(a5)
	lw	t1,20(a5)
	lw	a7,24(a5)
	lhu	a6,28(a5)
	lbu	a1,30(a5)
	lui	a3,%hi(Next_Ptr_Glob_inst)
	lui	a5,%hi(Ptr_Glob_inst)
	addi	a5,a5,%lo(Ptr_Glob_inst)
	sw	ra,188(sp)
	sw	s0,184(sp)
	sw	s5,164(sp)
	sw	s7,156(sp)
	sw	s1,180(sp)
	sw	s2,176(sp)
	sw	s3,172(sp)
	sw	s4,168(sp)
	sw	s6,160(sp)
	sw	s8,152(sp)
	sw	s9,148(sp)
	sw	s10,144(sp)
	sw	s11,140(sp)
	lui	t2,%hi(Next_Ptr_Glob)
	addi	a3,a3,%lo(Next_Ptr_Glob_inst)
	lui	a4,%hi(.LC1)
	addi	a4,a4,%lo(.LC1)
	sw	a3,%lo(Next_Ptr_Glob)(t2)
	sw	a3,0(a5)
	li	a3,2
	lw	a2,0(a4)
	sw	a3,8(a5)
	lui	s5,%hi(Ptr_Glob)
	li	a3,40
	sw	t0,16(a5)
	sw	t6,20(a5)
	sw	a3,12(a5)
	sw	a5,%lo(Ptr_Glob)(s5)
	sw	zero,4(a5)
	lw	a0,4(a4)
	sw	t5,24(a5)
	sw	t4,28(a5)
	sw	t3,32(a5)
	sw	t1,36(a5)
	sw	a7,40(a5)
	sh	a6,44(a5)
	sb	a1,46(a5)
	lbu	a5,30(a4)
	lw	t1,8(a4)
	lw	a7,12(a4)
	lw	a6,16(a4)
	lw	a1,20(a4)
	lhu	a3,28(a4)
	sw	a2,64(sp)
	lw	a2,24(a4)
	lui	s0,%hi(.LC2)
	lui	s7,%hi(Arr_2_Glob)
	addi	a4,s7,%lo(Arr_2_Glob)
	sw	a0,68(sp)
	sb	a5,94(sp)
	addi	a0,s0,%lo(.LC2)
	li	a5,10
	sw	a5,1628(a4)
	sw	t1,72(sp)
	sw	a7,76(sp)
	sw	a6,80(sp)
	sw	a1,84(sp)
	sw	a2,88(sp)
	sh	a3,92(sp)
	call	printf_
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf_
	addi	a0,s0,%lo(.LC2)
	call	printf_
	lui	a5,%hi(Reg)
	lw	a5,%lo(Reg)(a5)
	beq	a5,zero,.L7
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf_
	addi	a0,s0,%lo(.LC2)
	call	printf_
.L8:
	lui	a0,%hi(.LC6)
	li	a1,20
	addi	a0,a0,%lo(.LC6)
	call	printf_
	call	get_cycle
	srai	a5,a0,31
	sw	a5,44(sp)
	sw	a0,40(sp)
	call	get_instret
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	lw	a4,4(a5)
	lw	s11,0(a5)
	lui	a6,%hi(.LC8)
	sw	a4,4(sp)
	lw	a4,8(a5)
	sw	a0,36(sp)
	li	s1,1
	sw	a4,8(sp)
	lw	a4,12(a5)
	lui	s2,%hi(Ch_1_Glob)
	lui	s3,%hi(Bool_Glob)
	sw	a4,12(sp)
	lw	a4,16(a5)
	lui	s0,%hi(Ch_2_Glob)
	lui	s6,%hi(Arr_1_Glob)
	sw	a4,16(sp)
	lw	a4,20(a5)
	lui	s4,%hi(Int_Glob)
	addi	s8,a6,%lo(.LC8)
	sw	a4,20(sp)
	lw	a4,24(a5)
	sw	a4,24(sp)
	lhu	a4,28(a5)
	lbu	a5,30(a5)
	sw	a4,28(sp)
	sw	a5,32(sp)
.L13:
	li	a4,65
	sb	a4,%lo(Ch_1_Glob)(s2)
	li	a4,66
	sb	a4,%lo(Ch_2_Glob)(s0)
	lw	a4,4(sp)
	li	a5,1
	addi	a1,sp,96
	sw	a4,100(sp)
	lw	a4,8(sp)
	addi	a0,sp,64
	sw	a5,%lo(Bool_Glob)(s3)
	sw	a4,104(sp)
	lw	a4,12(sp)
	sw	a5,60(sp)
	sw	s11,96(sp)
	sw	a4,108(sp)
	lw	a4,16(sp)
	sw	a4,112(sp)
	lw	a4,20(sp)
	sw	a4,116(sp)
	lw	a4,24(sp)
	sw	a4,120(sp)
	lw	a4,28(sp)
	sh	a4,124(sp)
	lw	a4,32(sp)
	sb	a4,126(sp)
	call	Func_2
	seqz	a5,a0
	addi	a2,sp,56
	li	a1,3
	sw	a5,%lo(Bool_Glob)(s3)
	li	a0,2
	li	a5,7
	sw	a5,56(sp)
	call	Proc_7
	lw	a3,56(sp)
	li	a2,3
	addi	a1,s7,%lo(Arr_2_Glob)
	addi	a0,s6,%lo(Arr_1_Glob)
	call	Proc_8
	lw	a0,%lo(Ptr_Glob)(s5)
	call	Proc_1
	lbu	a4,%lo(Ch_2_Glob)(s0)
	li	a5,64
	bleu	a4,a5,.L14
	li	s10,65
	li	s9,3
	j	.L11
.L10:
	lbu	a5,%lo(Ch_2_Glob)(s0)
	addi	s10,s10,1
	andi	s10,s10,0xff
	bltu	a5,s10,.L19
.L11:
	li	a1,67
	mv	a0,s10
	call	Func_1
	lw	a5,60(sp)
	bne	a0,a5,.L10
	addi	a1,sp,60
	li	a0,0
	call	Proc_6
	lbu	a5,30(s8)
	lw	t1,0(s8)
	lw	a7,4(s8)
	lw	a6,8(s8)
	lw	a0,12(s8)
	lw	a1,16(s8)
	lw	a2,20(s8)
	lw	a3,24(s8)
	lhu	a4,28(s8)
	sb	a5,126(sp)
	lbu	a5,%lo(Ch_2_Glob)(s0)
	addi	s10,s10,1
	sw	t1,96(sp)
	sw	a7,100(sp)
	sw	a6,104(sp)
	sw	a0,108(sp)
	sw	a1,112(sp)
	sw	a2,116(sp)
	sw	a3,120(sp)
	sh	a4,124(sp)
	sw	s1,%lo(Int_Glob)(s4)
	andi	s10,s10,0xff
	mv	s9,s1
	bgeu	a5,s10,.L11
.L19:
	slli	a5,s9,1
	add	a5,a5,s9
.L9:
	lw	t1,56(sp)
	lbu	a2,%lo(Ch_1_Glob)(s2)
	li	a3,65
	div	a7,a5,t1
	mv	a4,a7
	bne	a2,a3,.L12
	lw	a3,%lo(Int_Glob)(s4)
	addi	a4,a7,9
	sub	a4,a4,a3
.L12:
	addi	s1,s1,1
	li	a3,21
	bne	s1,a3,.L13
	sw	t1,16(sp)
	sw	a7,12(sp)
	sw	a4,8(sp)
	sw	a5,4(sp)
	call	get_instret
	mv	s8,a0
	call	get_cycle
	mv	s7,a0
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf_
	lui	s11,%hi(.LC2)
	addi	a0,s11,%lo(.LC2)
	call	printf_
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf_
	addi	a0,s11,%lo(.LC2)
	call	printf_
	lw	a1,%lo(Int_Glob)(s4)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	lui	s4,%hi(.LC12)
	call	printf_
	li	a1,5
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a1,%lo(Bool_Glob)(s3)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf_
	li	a1,1
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lbu	a1,%lo(Ch_1_Glob)(s2)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf_
	lui	s2,%hi(.LC15)
	li	a1,65
	addi	a0,s2,%lo(.LC15)
	call	printf_
	lbu	a1,%lo(Ch_2_Glob)(s0)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf_
	li	a1,66
	addi	a0,s2,%lo(.LC15)
	call	printf_
	addi	s6,s6,%lo(Arr_1_Glob)
	lw	a1,32(s6)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf_
	li	a1,7
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lui	a5,%hi(Arr_2_Glob)
	addi	a5,a5,%lo(Arr_2_Glob)
	lw	a1,1628(a5)
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf_
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf_
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	printf_
	lw	a3,%lo(Ptr_Glob)(s5)
	lui	s10,%hi(.LC21)
	addi	a0,s10,%lo(.LC21)
	lw	a1,0(a3)
	lui	s9,%hi(.LC23)
	lui	s6,%hi(.LC24)
	call	printf_
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	call	printf_
	lw	a3,%lo(Ptr_Glob)(s5)
	addi	a0,s9,%lo(.LC23)
	lui	s3,%hi(.LC25)
	lw	a1,4(a3)
	lui	s2,%hi(.LC26)
	lui	s0,%hi(.LC27)
	call	printf_
	li	a1,0
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a3,%lo(Ptr_Glob)(s5)
	addi	a0,s6,%lo(.LC24)
	srai	s1,s7,31
	lw	a1,8(a3)
	call	printf_
	li	a1,2
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a3,%lo(Ptr_Glob)(s5)
	addi	a0,s3,%lo(.LC25)
	lw	a1,12(a3)
	call	printf_
	li	a1,17
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a1,%lo(Ptr_Glob)(s5)
	addi	a0,s2,%lo(.LC26)
	lui	s5,%hi(Next_Ptr_Glob)
	addi	a1,a1,16
	call	printf_
	addi	a0,s0,%lo(.LC27)
	call	printf_
	lui	a0,%hi(.LC28)
	addi	a0,a0,%lo(.LC28)
	call	printf_
	lw	a3,%lo(Next_Ptr_Glob)(s5)
	addi	a0,s10,%lo(.LC21)
	lw	a1,0(a3)
	call	printf_
	lui	a0,%hi(.LC29)
	addi	a0,a0,%lo(.LC29)
	call	printf_
	lw	a3,%lo(Next_Ptr_Glob)(s5)
	addi	a0,s9,%lo(.LC23)
	lw	a1,4(a3)
	call	printf_
	li	a1,0
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a3,%lo(Next_Ptr_Glob)(s5)
	addi	a0,s6,%lo(.LC24)
	lw	a1,8(a3)
	call	printf_
	li	a1,1
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a3,%lo(Next_Ptr_Glob)(s5)
	addi	a0,s3,%lo(.LC25)
	lw	a1,12(a3)
	call	printf_
	li	a1,18
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a1,%lo(Next_Ptr_Glob)(s5)
	addi	a0,s2,%lo(.LC26)
	addi	a1,a1,16
	call	printf_
	addi	a0,s0,%lo(.LC27)
	call	printf_
	lw	a4,8(sp)
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	mv	a1,a4
	call	printf_
	li	a1,5
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	t1,16(sp)
	lw	a5,4(sp)
	lw	a7,12(sp)
	lui	a0,%hi(.LC31)
	sub	a5,a5,t1
	slli	a1,a5,3
	sub	a1,a1,a5
	sub	a1,a1,a7
	addi	a0,a0,%lo(.LC31)
	call	printf_
	li	a1,13
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a1,56(sp)
	lui	a0,%hi(.LC32)
	addi	a0,a0,%lo(.LC32)
	call	printf_
	li	a1,7
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lw	a1,60(sp)
	lui	a0,%hi(.LC33)
	addi	a0,a0,%lo(.LC33)
	call	printf_
	li	a1,1
	addi	a0,s4,%lo(.LC12)
	call	printf_
	lui	a0,%hi(.LC34)
	addi	a1,sp,64
	addi	a0,a0,%lo(.LC34)
	call	printf_
	lui	a0,%hi(.LC35)
	addi	a0,a0,%lo(.LC35)
	call	printf_
	lui	a0,%hi(.LC36)
	addi	a1,sp,96
	addi	a0,a0,%lo(.LC36)
	call	printf_
	lui	a0,%hi(.LC37)
	addi	a0,a0,%lo(.LC37)
	call	printf_
	addi	a0,s11,%lo(.LC2)
	call	printf_
	lw	a4,36(sp)
	lw	s4,40(sp)
	lw	s5,44(sp)
	sub	s3,s8,a4
	sub	s2,s7,s4
	lui	a0,%hi(.LC38)
	mv	a1,a4
	sgtu	a5,s2,s7
	mv	a3,s3
	sub	s0,s1,s5
	mv	a2,s8
	addi	a0,a0,%lo(.LC38)
	sub	s0,s0,a5
	call	printf_
	lui	a0,%hi(.LC39)
	mv	a2,s4
	mv	a1,s5
	addi	a0,a0,%lo(.LC39)
	call	printf_
	lui	a0,%hi(.LC40)
	mv	a2,s7
	mv	a1,s1
	addi	a0,a0,%lo(.LC40)
	call	printf_
	lui	a0,%hi(.LC41)
	mv	a1,s0
	mv	a2,s2
	addi	a0,a0,%lo(.LC41)
	call	printf_
	lui	a0,%hi(.LC42)
	mv	a2,s2
	mv	a3,s0
	addi	a0,a0,%lo(.LC42)
	call	printf_
	li	a1,1000001536
	lui	a0,%hi(.LC43)
	addi	a1,a1,-1536
	addi	a0,a0,%lo(.LC43)
	call	printf_
	mv	a1,s0
	mv	a0,s2
	call	__floatundisf
	mv	s1,a0
	mv	a0,s3
	call	__floatunsisf
	mv	a1,s1
	call	__divsf3
	call	__extendsfdf2
	mv	a2,a0
	lui	a0,%hi(.LC44)
	mv	a3,a1
	addi	a0,a0,%lo(.LC44)
	call	printf_
	lui	a5,%hi(.LC45)
	lw	a0,%lo(.LC45)(a5)
	mv	a1,s1
	lui	s3,%hi(Microseconds)
	call	__divsf3
	lui	a5,%hi(.LC46)
	lw	a1,%lo(.LC46)(a5)
	lui	s1,%hi(Dhrystones_Per_Second)
	call	__mulsf3
	lui	a5,%hi(.LC47)
	lw	a1,%lo(.LC47)(a5)
	call	__divsf3
	call	__extendsfdf2
	mv	a2,a0
	lui	a0,%hi(.LC48)
	mv	a3,a1
	addi	a0,a0,%lo(.LC48)
	call	printf_
	li	a2,20480
	addi	a2,a2,-480
	li	a3,0
	mv	a0,s2
	mv	a1,s0
	call	__udivdi3
	mv	a5,a0
	li	a0,1000001536
	mv	a2,s2
	mv	a3,s0
	addi	a0,a0,-1536
	li	a1,0
	sw	a5,%lo(Microseconds)(s3)
	call	__udivdi3
	slli	a5,a0,2
	add	a5,a5,a0
	lui	a0,%hi(.LC49)
	slli	a5,a5,2
	addi	a0,a0,%lo(.LC49)
	sw	a5,%lo(Dhrystones_Per_Second)(s1)
	call	printf_
	lw	a1,%lo(Microseconds)(s3)
	lui	s0,%hi(.LC50)
	addi	a0,s0,%lo(.LC50)
	call	printf_
	lui	a0,%hi(.LC51)
	addi	a0,a0,%lo(.LC51)
	call	printf_
	lw	a1,%lo(Dhrystones_Per_Second)(s1)
	addi	a0,s0,%lo(.LC50)
	call	printf_
	addi	a0,s11,%lo(.LC2)
	call	printf_
	lw	ra,188(sp)
	lw	s0,184(sp)
	lw	s1,180(sp)
	lw	s2,176(sp)
	lw	s3,172(sp)
	lw	s4,168(sp)
	lw	s5,164(sp)
	lw	s6,160(sp)
	lw	s7,156(sp)
	lw	s8,152(sp)
	lw	s9,148(sp)
	lw	s10,144(sp)
	lw	s11,140(sp)
	li	a0,0
	addi	sp,sp,192
	jr	ra
.L14:
	li	a5,9
	j	.L9
.L7:
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf_
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf_
	j	.L8
	.size	main, .-main
	.section	.text.Proc_2,"ax",@progbits
	.align	2
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
	lui	a5,%hi(Ch_1_Glob)
	lbu	a4,%lo(Ch_1_Glob)(a5)
	li	a5,65
	beq	a4,a5,.L22
	ret
.L22:
	lw	a5,0(a0)
	lui	a4,%hi(Int_Glob)
	lw	a4,%lo(Int_Glob)(a4)
	addi	a5,a5,9
	sub	a5,a5,a4
	sw	a5,0(a0)
	ret
	.size	Proc_2, .-Proc_2
	.section	.text.Proc_3,"ax",@progbits
	.align	2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
	lui	a5,%hi(Ptr_Glob)
	lw	a2,%lo(Ptr_Glob)(a5)
	beq	a2,zero,.L24
	lw	a4,0(a2)
	sw	a4,0(a0)
	lw	a2,%lo(Ptr_Glob)(a5)
.L24:
	lui	a5,%hi(Int_Glob)
	lw	a1,%lo(Int_Glob)(a5)
	addi	a2,a2,12
	li	a0,10
	tail	Proc_7
	.size	Proc_3, .-Proc_3
	.section	.text.Proc_4,"ax",@progbits
	.align	2
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
	lui	a5,%hi(Ch_1_Glob)
	lbu	a5,%lo(Ch_1_Glob)(a5)
	lui	a4,%hi(Bool_Glob)
	lw	a3,%lo(Bool_Glob)(a4)
	addi	a5,a5,-65
	seqz	a5,a5
	or	a5,a5,a3
	sw	a5,%lo(Bool_Glob)(a4)
	lui	a5,%hi(Ch_2_Glob)
	li	a4,66
	sb	a4,%lo(Ch_2_Glob)(a5)
	ret
	.size	Proc_4, .-Proc_4
	.section	.text.Proc_5,"ax",@progbits
	.align	2
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
	lui	a5,%hi(Ch_1_Glob)
	li	a4,65
	sb	a4,%lo(Ch_1_Glob)(a5)
	lui	a5,%hi(Bool_Glob)
	sw	zero,%lo(Bool_Glob)(a5)
	ret
	.size	Proc_5, .-Proc_5
	.globl	Ptr_Glob_inst
	.section	.bss.Ptr_Glob_inst,"aw",@nobits
	.align	2
	.type	Ptr_Glob_inst, @object
	.size	Ptr_Glob_inst, 48
Ptr_Glob_inst:
	.zero	48
	.globl	Next_Ptr_Glob_inst
	.section	.bss.Next_Ptr_Glob_inst,"aw",@nobits
	.align	2
	.type	Next_Ptr_Glob_inst, @object
	.size	Next_Ptr_Glob_inst, 48
Next_Ptr_Glob_inst:
	.zero	48
	.globl	Dhrystones_Per_Second
	.section	.sbss.Dhrystones_Per_Second,"aw",@nobits
	.align	2
	.type	Dhrystones_Per_Second, @object
	.size	Dhrystones_Per_Second, 4
Dhrystones_Per_Second:
	.zero	4
	.globl	Microseconds
	.section	.sbss.Microseconds,"aw",@nobits
	.align	2
	.type	Microseconds, @object
	.size	Microseconds, 4
Microseconds:
	.zero	4
	.globl	User_Time
	.section	.sbss.User_Time,"aw",@nobits
	.align	2
	.type	User_Time, @object
	.size	User_Time, 4
User_Time:
	.zero	4
	.globl	End_Time
	.section	.sbss.End_Time,"aw",@nobits
	.align	2
	.type	End_Time, @object
	.size	End_Time, 4
End_Time:
	.zero	4
	.globl	Begin_Time
	.section	.sbss.Begin_Time,"aw",@nobits
	.align	2
	.type	Begin_Time, @object
	.size	Begin_Time, 4
Begin_Time:
	.zero	4
	.globl	Reg
	.section	.sbss.Reg,"aw",@nobits
	.align	2
	.type	Reg, @object
	.size	Reg, 4
Reg:
	.zero	4
	.globl	Arr_2_Glob
	.section	.bss.Arr_2_Glob,"aw",@nobits
	.align	2
	.type	Arr_2_Glob, @object
	.size	Arr_2_Glob, 10000
Arr_2_Glob:
	.zero	10000
	.globl	Arr_1_Glob
	.section	.bss.Arr_1_Glob,"aw",@nobits
	.align	2
	.type	Arr_1_Glob, @object
	.size	Arr_1_Glob, 200
Arr_1_Glob:
	.zero	200
	.globl	Ch_2_Glob
	.section	.sbss.Ch_2_Glob,"aw",@nobits
	.type	Ch_2_Glob, @object
	.size	Ch_2_Glob, 1
Ch_2_Glob:
	.zero	1
	.globl	Ch_1_Glob
	.section	.sbss.Ch_1_Glob,"aw",@nobits
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.globl	Bool_Glob
	.section	.sbss.Bool_Glob,"aw",@nobits
	.align	2
	.type	Bool_Glob, @object
	.size	Bool_Glob, 4
Bool_Glob:
	.zero	4
	.globl	Int_Glob
	.section	.sbss.Int_Glob,"aw",@nobits
	.align	2
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.globl	Next_Ptr_Glob
	.section	.sbss.Next_Ptr_Glob,"aw",@nobits
	.align	2
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 4
Next_Ptr_Glob:
	.zero	4
	.globl	Ptr_Glob
	.section	.sbss.Ptr_Glob,"aw",@nobits
	.align	2
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 4
Ptr_Glob:
	.zero	4
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC45:
	.word	1101004800
	.align	2
.LC46:
	.word	1232348160
	.align	2
.LC47:
	.word	1155244032
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
