	.file	"printf.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text._out_buffer,"ax",@progbits
	.align	2
	.type	_out_buffer, @function
_out_buffer:
	bgeu	a2,a3,.L1
	add	a1,a1,a2
	sb	a0,0(a1)
.L1:
	ret
	.size	_out_buffer, .-_out_buffer
	.section	.text._out_null,"ax",@progbits
	.align	2
	.type	_out_null, @function
_out_null:
	ret
	.size	_out_null, .-_out_null
	.section	.text._out_rev,"ax",@progbits
	.align	2
	.type	_out_rev, @function
_out_rev:
	addi	sp,sp,-48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	ra,44(sp)
	mv	s9,a7
	sw	s1,36(sp)
	sw	s2,32(sp)
	andi	a7,a7,3
	mv	s3,a0
	mv	s4,a1
	mv	s6,a2
	mv	s5,a3
	mv	s7,a4
	mv	s0,a5
	mv	s8,a6
	bne	a7,zero,.L6
	bgeu	a5,a6,.L27
	sub	s2,a6,a5
	add	s2,s2,a2
	mv	s1,a2
.L11:
	mv	a2,s1
	mv	a3,s5
	addi	s1,s1,1
	mv	a1,s4
	li	a0,32
	jalr	s3
	bne	s1,s2,.L11
	beq	s0,zero,.L5
.L9:
	add	s2,s2,s0
.L13:
	sub	a2,s2,s0
	addi	s0,s0,-1
	add	a5,s7,s0
	lbu	a0,0(a5)
	mv	a3,s5
	mv	a1,s4
	mv	s1,s2
	jalr	s3
	bne	s0,zero,.L13
.L10:
	andi	s9,s9,2
	beq	s9,zero,.L5
	sub	s6,s1,s6
	bleu	s8,s6,.L5
.L14:
	mv	a2,s1
	mv	a3,s5
	mv	a1,s4
	li	a0,32
	addi	s6,s6,1
	addi	s1,s1,1
	jalr	s3
	bgtu	s8,s6,.L14
.L5:
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	lw	s8,8(sp)
	lw	s9,4(sp)
	mv	a0,s1
	lw	s1,36(sp)
	addi	sp,sp,48
	jr	ra
.L6:
	mv	s2,a2
	mv	s1,a2
	bne	a5,zero,.L9
	j	.L10
.L27:
	mv	s2,a2
	bne	a5,zero,.L9
	mv	s1,a2
	j	.L5
	.size	_out_rev, .-_out_rev
	.section	.text._ntoa_format,"ax",@progbits
	.align	2
	.type	_ntoa_format, @function
_ntoa_format:
	lw	t2,8(sp)
	lw	t0,0(sp)
	lw	t6,4(sp)
	andi	t1,t2,2
	mv	t5,a6
	bne	t1,zero,.L29
	bne	t6,zero,.L139
	bgeu	a5,t0,.L29
	li	t1,32
	andi	a6,t2,1
	beq	a5,t1,.L140
.L40:
	li	t3,48
	li	t4,32
	j	.L50
.L34:
	beq	a5,t4,.L141
.L50:
	addi	a5,a5,1
	add	t1,a4,a5
	sb	t3,-1(t1)
	bgtu	t0,a5,.L34
	beq	a6,zero,.L29
.L39:
	bgeu	a5,t6,.L29
	li	a6,32
	li	t3,48
	li	t4,32
	bne	a5,a6,.L49
	j	.L43
.L142:
	beq	a5,t4,.L47
.L49:
	addi	a5,a5,1
	add	t1,a4,a5
	sb	t3,-1(t1)
	bne	a5,t6,.L142
.L29:
	andi	a6,t2,16
	beq	a6,zero,.L54
	andi	a6,t2,1024
	bne	a6,zero,.L55
	bne	a5,zero,.L89
	li	a5,16
	beq	a7,a5,.L143
.L66:
	li	a5,2
	beq	a7,a5,.L144
	li	a5,48
	sb	a5,0(a4)
	li	a5,1
.L64:
	bne	t5,zero,.L145
.L77:
	andi	a6,t2,4
	beq	a6,zero,.L78
	add	a6,a4,a5
	li	a7,43
	sb	a7,0(a6)
	addi	a5,a5,1
.L45:
	mv	a7,t2
	mv	a6,t6
	tail	_out_rev
.L47:
	andi	a6,t2,16
	li	a5,32
	beq	a6,zero,.L45
	andi	a6,t2,1024
	bne	a6,zero,.L55
.L89:
	beq	t0,a5,.L57
	beq	a5,t6,.L57
.L55:
	li	a6,16
	beq	a7,a6,.L146
	li	a6,2
	beq	a7,a6,.L147
.L73:
	li	a6,32
	beq	a5,a6,.L45
.L61:
	mv	a6,a5
	addi	a5,a5,1
.L75:
	add	a6,a4,a6
	li	a7,48
	sb	a7,0(a6)
.L54:
	li	a6,32
	bne	a5,a6,.L64
	mv	a7,t2
	mv	a6,t6
	tail	_out_rev
.L139:
	andi	a6,t2,1
	beq	a6,zero,.L31
	bne	t5,zero,.L32
	andi	t1,t2,12
	bne	t1,zero,.L32
.L33:
	bgeu	a5,t0,.L39
	li	t1,32
	bne	a5,t1,.L40
	bgtu	t6,a5,.L43
.L41:
	andi	a6,t2,16
	li	a5,32
	beq	a6,zero,.L45
	andi	a6,t2,1024
	bne	a6,zero,.L126
	beq	t0,a5,.L100
	bne	t6,a5,.L55
.L100:
	li	a6,31
.L79:
	li	t1,16
	beq	a7,t1,.L148
	li	a5,2
	beq	a7,a5,.L93
	addi	a5,a6,1
	j	.L75
.L141:
	beq	a6,zero,.L46
	bleu	t6,a5,.L47
.L43:
	andi	a6,t2,16
	li	a5,32
	beq	a6,zero,.L45
	andi	a6,t2,1024
	bne	a6,zero,.L126
	beq	t0,a5,.L100
	beq	t6,a5,.L100
.L126:
	li	a6,16
	bne	a7,a6,.L45
.L70:
	li	a5,32
	j	.L45
.L145:
	add	a6,a4,a5
	li	a7,45
	sb	a7,0(a6)
	addi	a5,a5,1
	mv	a7,t2
	mv	a6,t6
	tail	_out_rev
.L31:
	bgeu	a5,t0,.L29
	li	t1,32
	bne	a5,t1,.L40
.L42:
	andi	a5,t2,16
	beq	a5,zero,.L70
	andi	a5,t2,1024
	bne	a5,zero,.L70
	li	a5,32
	beq	t0,a5,.L98
	bne	t6,a5,.L70
.L98:
	li	a5,32
	li	a6,31
	j	.L79
.L147:
	li	a6,32
	beq	a5,a6,.L45
.L74:
	add	a6,a4,a5
	li	a7,98
	sb	a7,0(a6)
	addi	a5,a5,1
	j	.L73
.L57:
	addi	a6,a5,-1
	bne	a6,zero,.L79
	li	a5,16
	bne	a7,a5,.L66
	andi	a5,t2,32
	beq	a5,zero,.L67
	li	a5,88
	sb	a5,0(a4)
	li	a5,48
	sb	a5,1(a4)
	li	a5,2
.L149:
	beq	t5,zero,.L77
	j	.L145
.L32:
	addi	t6,t6,-1
	j	.L33
.L146:
	andi	a6,t2,32
	bne	a6,zero,.L72
	li	a6,32
	beq	a5,a6,.L70
	add	a6,a4,a5
	li	a7,120
	sb	a7,0(a6)
	addi	a5,a5,1
	j	.L73
.L78:
	andi	a6,t2,8
	beq	a6,zero,.L45
	add	a6,a4,a5
	li	a7,32
	sb	a7,0(a6)
	addi	a5,a5,1
	j	.L45
.L72:
	li	a6,32
	beq	a5,a6,.L70
	add	a6,a4,a5
	li	a7,88
	sb	a7,0(a6)
	addi	a5,a5,1
	j	.L73
.L143:
	andi	a5,t2,32
	beq	a5,zero,.L67
	li	a5,88
	sb	a5,0(a4)
	li	a5,48
	sb	a5,1(a4)
	li	a5,2
	beq	t5,zero,.L77
	j	.L145
.L144:
	li	a5,98
.L135:
	sb	a5,0(a4)
	li	a5,48
	sb	a5,1(a4)
	li	a5,2
	j	.L149
.L67:
	li	a5,120
	j	.L135
.L140:
	bne	a6,zero,.L41
	j	.L42
.L148:
	addi	a6,a5,-2
	andi	a7,t2,32
	add	a6,a4,a6
	addi	a5,a5,-1
	bne	a7,zero,.L60
	li	a7,120
	sb	a7,0(a6)
	j	.L61
.L93:
	mv	a5,a6
	j	.L74
.L60:
	li	a7,88
	sb	a7,0(a6)
	j	.L61
.L46:
	andi	a6,t2,16
	beq	a6,zero,.L45
	andi	a6,t2,1024
	bne	a6,zero,.L126
	bne	a5,t6,.L55
	j	.L57
	.size	_ntoa_format, .-_ntoa_format
	.section	.text._ntoa_long,"ax",@progbits
	.align	2
	.type	_ntoa_long, @function
_ntoa_long:
	addi	sp,sp,-64
	sw	s0,56(sp)
	sw	ra,60(sp)
	mv	t4,a6
	lw	s0,68(sp)
	mv	t3,a4
	mv	a6,a5
	bne	a4,zero,.L151
	andi	a5,s0,1024
	andi	s0,s0,-17
	bne	a5,zero,.L158
.L151:
	srli	a4,s0,5
	andi	a4,a4,1
	li	t0,97
	bne	a4,zero,.L162
.L154:
	li	a5,0
	addi	a4,sp,16
	li	t2,9
	addi	t0,t0,-10
	li	ra,32
	j	.L157
.L163:
	beq	a5,ra,.L152
	mv	t3,t1
.L157:
	remu	t5,t3,t4
	andi	t1,t5,0xff
	addi	t6,t1,48
	add	t1,t1,t0
	andi	t1,t1,0xff
	bgtu	t5,t2,.L156
	andi	t1,t6,0xff
.L156:
	addi	a5,a5,1
	add	t5,a4,a5
	sb	t1,-1(t5)
	divu	t1,t3,t4
	bgeu	t3,t4,.L163
.L152:
	lw	t1,64(sp)
	sw	s0,8(sp)
	sw	a7,0(sp)
	sw	t1,4(sp)
	mv	a7,t4
	call	_ntoa_format
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
.L162:
	li	t0,65
	j	.L154
.L158:
	li	a5,0
	addi	a4,sp,16
	j	.L152
	.size	_ntoa_long, .-_ntoa_long
	.globl	__umoddi3
	.globl	__udivdi3
	.section	.text._ntoa_long_long,"ax",@progbits
	.align	2
	.type	_ntoa_long_long, @function
_ntoa_long_long:
	addi	sp,sp,-144
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s6,96(sp)
	sw	s8,88(sp)
	sw	s9,84(sp)
	sw	s10,80(sp)
	sw	s11,76(sp)
	mv	s8,a5
	sw	ra,124(sp)
	sw	s3,108(sp)
	sw	s7,92(sp)
	sw	a7,140(sp)
	or	a5,a4,a5
	sw	a0,20(sp)
	sw	a1,24(sp)
	sw	a2,28(sp)
	lw	s9,144(sp)
	lw	s6,156(sp)
	mv	s0,a4
	mv	s10,a3
	mv	s11,a6
	mv	s1,a7
	bne	a5,zero,.L165
	andi	a5,s6,1024
	andi	s6,s6,-17
	bne	a5,zero,.L173
.L165:
	srli	a5,s6,5
	sw	s2,112(sp)
	sw	s4,104(sp)
	sw	s5,100(sp)
	andi	a5,a5,1
	li	s2,97
	bne	a5,zero,.L180
.L168:
	li	s7,0
	addi	s3,sp,32
	li	s4,9
	addi	s2,s2,-10
	li	s5,32
.L172:
	mv	a3,s9
	mv	a2,s1
	mv	a0,s0
	mv	a1,s8
	call	__umoddi3
	andi	a0,a0,0xff
	add	a6,a0,s2
	addi	a3,a0,48
	andi	a6,a6,0xff
	bgtu	a0,s4,.L170
	andi	a6,a3,0xff
.L170:
	addi	s7,s7,1
	add	a7,s3,s7
	mv	a2,s1
	mv	a3,s9
	mv	a0,s0
	mv	a1,s8
	sb	a6,-1(a7)
	call	__udivdi3
	bgtu	s9,s8,.L179
	beq	s9,s8,.L181
.L175:
	beq	s7,s5,.L179
	mv	s0,a0
	mv	s8,a1
	j	.L172
.L181:
	bleu	s1,s0,.L175
.L179:
	lw	s2,112(sp)
	lw	s4,104(sp)
	lw	s5,100(sp)
.L166:
	lw	a4,152(sp)
	lw	a2,28(sp)
	lw	a1,24(sp)
	sw	a4,4(sp)
	lw	a4,148(sp)
	lw	a0,20(sp)
	sw	s6,8(sp)
	sw	a4,0(sp)
	mv	a7,s1
	mv	a6,s11
	mv	a5,s7
	mv	a4,s3
	mv	a3,s10
	call	_ntoa_format
	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s1,116(sp)
	lw	s3,108(sp)
	lw	s6,96(sp)
	lw	s7,92(sp)
	lw	s8,88(sp)
	lw	s9,84(sp)
	lw	s10,80(sp)
	lw	s11,76(sp)
	addi	sp,sp,144
	jr	ra
.L180:
	li	s2,65
	j	.L168
.L173:
	li	s7,0
	addi	s3,sp,32
	j	.L166
	.size	_ntoa_long_long, .-_ntoa_long_long
	.globl	__nedf2
	.globl	__gtdf2
	.globl	__ltdf2
	.globl	__floatsidf
	.globl	__muldf3
	.globl	__adddf3
	.globl	__subdf3
	.globl	__fixdfsi
	.globl	__divdf3
	.globl	__gedf2
	.section	.text._etoa,"ax",@progbits
	.align	2
	.type	_etoa, @function
_etoa:
	addi	sp,sp,-128
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	s5,100(sp)
	mv	s3,a0
	mv	s4,a1
	mv	s2,a2
	mv	s5,a3
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s6,96(sp)
	sw	s8,88(sp)
	sw	s9,84(sp)
	sw	ra,124(sp)
	lw	s9,128(sp)
	mv	s0,a4
	mv	s1,a5
	mv	s8,a6
	mv	s6,a7
	call	__nedf2
	bne	a0,zero,.L183
	lui	a3,%hi(.LC0)
	lw	a2,%lo(.LC0)(a3)
	lw	a3,%lo(.LC0+4)(a3)
	mv	a0,s0
	mv	a1,s1
	call	__gtdf2
	bgt	a0,zero,.L183
	lui	a3,%hi(.LC1)
	lw	a2,%lo(.LC1)(a3)
	lw	a3,%lo(.LC1+4)(a3)
	mv	a0,s0
	mv	a1,s1
	call	__ltdf2
	blt	a0,zero,.L183
	mv	a0,s0
	mv	a1,s1
	li	a2,0
	li	a3,0
	sw	s7,92(sp)
	sw	s10,80(sp)
	sw	s11,76(sp)
	call	__ltdf2
	sw	s0,36(sp)
	mv	s7,s1
	bge	a0,zero,.L186
	li	s7,-2147483648
	xor	s7,s7,s1
.L186:
	andi	a5,s9,1024
	sw	a5,60(sp)
	bne	a5,zero,.L188
	li	s8,6
.L188:
	srli	a0,s7,20
	andi	a0,a0,2047
	addi	a0,a0,-1023
	call	__floatsidf
	lui	a5,%hi(.LC2)
	lw	a2,%lo(.LC2)(a5)
	lw	a3,%lo(.LC2+4)(a5)
	call	__muldf3
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__adddf3
	slli	a3,s7,12
	srli	a3,a3,12
	li	a5,1072693248
	or	a5,a5,a3
	lui	a3,%hi(.LC4)
	lw	a2,%lo(.LC4)(a3)
	lw	a3,%lo(.LC4+4)(a3)
	mv	s11,a0
	mv	s10,a1
	mv	a0,s0
	mv	a1,a5
	call	__subdf3
	lui	a5,%hi(.LC5)
	lw	a2,%lo(.LC5)(a5)
	lw	a3,%lo(.LC5+4)(a5)
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s11
	mv	a1,s10
	call	__adddf3
	call	__fixdfsi
	mv	s10,a0
	call	__floatsidf
	lui	a5,%hi(.LC6)
	lw	a2,%lo(.LC6)(a5)
	lw	a3,%lo(.LC6+4)(a5)
	mv	s11,a1
	sw	a0,24(sp)
	call	__muldf3
	lui	a4,%hi(.LC7)
	lw	a2,%lo(.LC7)(a4)
	lw	a3,%lo(.LC7+4)(a4)
	call	__adddf3
	call	__fixdfsi
	lw	a5,24(sp)
	lui	a3,%hi(.LC8)
	lw	a2,%lo(.LC8)(a3)
	lw	a3,%lo(.LC8+4)(a3)
	mv	a4,a0
	mv	a1,s11
	mv	a0,a5
	mv	s11,a4
	call	__muldf3
	mv	a5,a0
	mv	a0,s11
	sw	a5,24(sp)
	sw	s11,40(sp)
	mv	s11,a1
	call	__floatsidf
	lui	a4,%hi(.LC9)
	lw	a2,%lo(.LC9)(a4)
	lw	a3,%lo(.LC9+4)(a4)
	call	__muldf3
	lw	a5,24(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a5
	mv	a1,s11
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	sw	a0,44(sp)
	sw	a1,24(sp)
	call	__muldf3
	lw	a5,24(sp)
	lw	a4,44(sp)
	mv	s11,a0
	mv	a3,a5
	mv	a2,a4
	mv	a0,a4
	mv	a6,a1
	mv	a1,a5
	sw	a4,56(sp)
	sw	a5,52(sp)
	sw	a6,24(sp)
	call	__adddf3
	lui	a3,%hi(.LC10)
	mv	a7,a1
	lw	a2,%lo(.LC10)(a3)
	lw	a1,24(sp)
	lw	a3,%lo(.LC10+4)(a3)
	mv	t1,a0
	mv	a0,s11
	sw	t1,48(sp)
	sw	a7,44(sp)
	call	__divdf3
	lui	a6,%hi(.LC11)
	lw	a2,%lo(.LC11)(a6)
	lw	a3,%lo(.LC11+4)(a6)
	call	__adddf3
	mv	a3,a1
	lw	a1,24(sp)
	mv	a2,a0
	mv	a0,s11
	call	__divdf3
	lui	a3,%hi(.LC12)
	lw	a2,%lo(.LC12)(a3)
	lw	a3,%lo(.LC12+4)(a3)
	call	__adddf3
	mv	a3,a1
	lw	a1,24(sp)
	mv	a2,a0
	mv	a0,s11
	call	__divdf3
	lw	a4,56(sp)
	lw	a5,52(sp)
	lui	a3,%hi(.LC13)
	mv	t3,a0
	mv	s11,a1
	lw	a0,%lo(.LC13)(a3)
	lw	a1,%lo(.LC13+4)(a3)
	mv	a2,a4
	mv	a3,a5
	sw	t3,24(sp)
	call	__subdf3
	lw	t3,24(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,t3
	mv	a1,s11
	call	__adddf3
	lw	t1,48(sp)
	lw	a7,44(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,t1
	mv	a1,a7
	call	__divdf3
	lui	a5,%hi(.LC14)
	lw	a2,%lo(.LC14)(a5)
	lw	a3,%lo(.LC14+4)(a5)
	call	__adddf3
	lw	a5,40(sp)
	li	a2,0
	addi	a5,a5,1023
	slli	a5,a5,20
	mv	a3,a5
	call	__muldf3
	mv	a2,s0
	mv	a3,s7
	mv	s11,a0
	sw	a1,24(sp)
	call	__gtdf2
	lui	a6,%hi(.LC11)
	bgt	a0,zero,.L189
	lw	a5,24(sp)
	mv	a4,s11
.L190:
	li	a3,198
	addi	s11,s10,99
	sgtu	s11,s11,a3
	slli	a3,s9,20
	addi	s11,s11,4
	bge	a3,zero,.L192
	lui	a3,%hi(.LC15)
	lw	a2,%lo(.LC15)(a3)
	lw	a3,%lo(.LC15+4)(a3)
	mv	a0,s0
	mv	a1,s7
	sw	a4,24(sp)
	sw	a5,28(sp)
	call	__gedf2
	lw	a4,24(sp)
	lw	a5,28(sp)
	blt	a0,zero,.L193
	lui	a3,%hi(.LC16)
	lw	a2,%lo(.LC16)(a3)
	lw	a3,%lo(.LC16+4)(a3)
	mv	a0,s0
	mv	a1,s7
	call	__ltdf2
	lw	a4,24(sp)
	lw	a5,28(sp)
	blt	a0,zero,.L242
.L193:
	beq	s8,zero,.L192
	lw	a3,60(sp)
	snez	a3,a3
	sub	s8,s8,a3
.L192:
	li	a7,0
	bgeu	s11,s6,.L197
	sub	a7,s6,s11
.L197:
	andi	a3,s9,2
	sw	a3,40(sp)
	beq	a3,zero,.L198
	seqz	a3,s11
	neg	a3,a3
	and	a7,a7,a3
.L198:
	beq	s10,zero,.L199
	mv	a1,s7
	mv	a0,s0
	mv	a2,a4
	mv	a3,a5
	sw	a7,24(sp)
	call	__divdf3
	lw	a7,24(sp)
	sw	a0,36(sp)
	mv	s7,a1
.L199:
	mv	a0,s0
	mv	a1,s1
	li	a2,0
	li	a3,0
	sw	a7,24(sp)
	call	__ltdf2
	lw	a7,24(sp)
	bge	a0,zero,.L200
	li	a5,-2147483648
	xor	s7,a5,s7
.L200:
	lw	a3,36(sp)
	li	a5,-4096
	addi	a5,a5,2047
	and	a5,s9,a5
	sw	a5,0(sp)
	mv	a4,a3
	mv	a6,s8
	mv	a5,s7
	mv	a3,s5
	mv	a2,s2
	mv	a1,s4
	mv	a0,s3
	call	_ftoa
	mv	s0,a0
	beq	s11,zero,.L182
	andi	s9,s9,32
	li	a0,101
	beq	s9,zero,.L203
	li	a0,69
.L203:
	mv	a2,s0
	mv	a3,s5
	mv	a1,s4
	jalr	s3
	srai	a4,s10,31
	addi	s0,s0,1
	xor	a3,a4,s10
	li	a5,5
	addi	s11,s11,-1
	sw	a5,4(sp)
	sub	a4,a3,a4
	srli	a5,s10,31
	mv	a2,s0
	sw	s11,0(sp)
	li	a7,0
	li	a6,10
	mv	a3,s5
	mv	a1,s4
	mv	a0,s3
	call	_ntoa_long
	lw	a5,40(sp)
	mv	s0,a0
	beq	a5,zero,.L182
	sub	s2,a0,s2
	bleu	s6,s2,.L182
.L204:
	mv	a2,s0
	mv	a3,s5
	mv	a1,s4
	li	a0,32
	addi	s2,s2,1
	addi	s0,s0,1
	jalr	s3
	bgtu	s6,s2,.L204
.L182:
	lw	ra,124(sp)
	mv	a0,s0
	lw	s0,120(sp)
	lw	s7,92(sp)
	lw	s10,80(sp)
	lw	s11,76(sp)
	lw	s1,116(sp)
	lw	s2,112(sp)
	lw	s3,108(sp)
	lw	s4,104(sp)
	lw	s5,100(sp)
	lw	s6,96(sp)
	lw	s8,88(sp)
	lw	s9,84(sp)
	addi	sp,sp,128
	jr	ra
.L183:
	mv	a4,s0
	lw	s0,120(sp)
	sw	s9,128(sp)
	lw	ra,124(sp)
	lw	s9,84(sp)
	mv	a5,s1
	mv	a7,s6
	lw	s1,116(sp)
	lw	s6,96(sp)
	mv	a6,s8
	mv	a3,s5
	lw	s8,88(sp)
	lw	s5,100(sp)
	mv	a2,s2
	mv	a1,s4
	lw	s2,112(sp)
	lw	s4,104(sp)
	mv	a0,s3
	lw	s3,108(sp)
	addi	sp,sp,128
	tail	_ftoa
.L189:
	lw	a2,%lo(.LC11)(a6)
	lw	a3,%lo(.LC11+4)(a6)
	lw	a1,24(sp)
	mv	a0,s11
	addi	s10,s10,-1
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	j	.L190
.L242:
	ble	s8,s10,.L208
	sub	s10,s8,s10
	addi	s8,s10,-1
.L196:
	ori	s9,s9,1024
	li	s11,0
	li	s10,0
	j	.L192
.L208:
	li	s8,0
	j	.L196
	.size	_etoa, .-_etoa
	.section	.rodata._ftoa.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"fni+"
	.align	2
.LC18:
	.string	"fni"
	.align	2
.LC20:
	.string	"nan"
	.align	2
.LC21:
	.string	"fni-"
	.globl	__fixunsdfsi
	.globl	__floatunsidf
	.section	.text._ftoa,"ax",@progbits
	.align	2
	.type	_ftoa, @function
_ftoa:
	addi	sp,sp,-128
	sw	s3,108(sp)
	sw	s8,88(sp)
	sw	s9,84(sp)
	sw	s10,80(sp)
	mv	s3,a0
	mv	s8,a1
	mv	s9,a2
	mv	s10,a3
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s6,96(sp)
	sw	s11,76(sp)
	sw	ra,124(sp)
	lw	s11,128(sp)
	mv	s1,a4
	mv	s0,a5
	mv	s6,a6
	mv	s2,a7
	call	__nedf2
	bne	a0,zero,.L331
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	mv	a0,s1
	mv	a1,s0
	call	__ltdf2
	blt	a0,zero,.L332
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	mv	a0,s1
	mv	a1,s0
	call	__gtdf2
	bgt	a0,zero,.L333
	sw	s4,104(sp)
	lui	s4,%hi(.LC19)
	lw	a2,%lo(.LC19)(s4)
	lw	a3,%lo(.LC19+4)(s4)
	mv	a0,s1
	mv	a1,s0
	call	__gtdf2
	bgt	a0,zero,.L251
	lui	a5,%hi(.LC22)
	lw	a2,%lo(.LC22)(a5)
	lw	a3,%lo(.LC22+4)(a5)
	mv	a0,s1
	mv	a1,s0
	call	__ltdf2
	blt	a0,zero,.L251
	mv	a0,s1
	mv	a1,s0
	li	a2,0
	li	a3,0
	sw	s5,100(sp)
	sw	s7,92(sp)
	call	__ltdf2
	blt	a0,zero,.L334
	sw	zero,24(sp)
.L254:
	andi	s5,s11,1024
	beq	s5,zero,.L288
	li	a5,9
	bleu	s6,a5,.L257
	addi	s5,s6,-9
	li	a3,0
	addi	s7,sp,32
	li	a0,48
	li	a1,32
.L258:
	addi	a3,a3,1
	add	a2,s7,a3
	sb	a0,-1(a2)
	sub	t1,s6,a3
	beq	a3,a1,.L289
	bne	a3,s5,.L258
	lw	a5,%lo(.LC19)(s4)
	lw	a6,%lo(.LC19+4)(s4)
	sw	a5,0(sp)
	sw	a6,4(sp)
.L256:
	mv	a1,s0
	mv	a0,s1
	sw	t1,20(sp)
	call	__fixdfsi
	mv	s4,a0
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__subdf3
	lw	a2,0(sp)
	lw	a3,4(sp)
	call	__muldf3
	mv	s6,a1
	sw	a0,16(sp)
	call	__fixunsdfsi
	sw	a0,12(sp)
	call	__floatunsidf
	lw	a5,16(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a5
	mv	a1,s6
	call	__subdf3
	lui	s6,%hi(.LC7)
	lw	a2,%lo(.LC7)(s6)
	lw	a3,%lo(.LC7+4)(s6)
	sw	a0,16(sp)
	sw	a1,28(sp)
	call	__gtdf2
	lw	a7,12(sp)
	lw	t1,20(sp)
	ble	a0,zero,.L325
	addi	a7,a7,1
	mv	a0,a7
	sw	t1,16(sp)
	sw	a7,12(sp)
	call	__floatunsidf
	lw	a2,0(sp)
	lw	a3,4(sp)
	call	__gedf2
	lw	a7,12(sp)
	lw	t1,16(sp)
	blt	a0,zero,.L261
	addi	s4,s4,1
	li	a7,0
.L261:
	beq	t1,zero,.L326
	li	a0,32
	li	a2,10
	li	t3,9
.L264:
	beq	s5,a0,.L266
	remu	a3,a7,a2
	addi	s5,s5,1
	add	a1,s7,s5
	addi	t1,t1,-1
	addi	a3,a3,48
	sb	a3,-1(a1)
	divu	a3,a7,a2
	bleu	a7,t3,.L335
	mv	a7,a3
	j	.L264
.L333:
	andi	a5,s11,4
	bne	a5,zero,.L336
	lui	a4,%hi(.LC18)
	addi	a4,a4,%lo(.LC18)
	li	a5,3
.L250:
	mv	a7,s11
	mv	a6,s2
	j	.L330
.L331:
	lui	a4,%hi(.LC20)
	mv	a7,s11
	mv	a6,s2
	li	a5,3
	addi	a4,a4,%lo(.LC20)
.L330:
	lw	s0,120(sp)
	lw	ra,124(sp)
	lw	s1,116(sp)
	lw	s2,112(sp)
	lw	s6,96(sp)
	lw	s11,76(sp)
	mv	a3,s10
	mv	a2,s9
	lw	s10,80(sp)
	lw	s9,84(sp)
	mv	a1,s8
	mv	a0,s3
	lw	s8,88(sp)
	lw	s3,108(sp)
	addi	sp,sp,128
	tail	_out_rev
.L336:
	lui	a4,%hi(.LC17)
	addi	a4,a4,%lo(.LC17)
	li	a5,4
	j	.L250
.L334:
	mv	a2,s1
	mv	a3,s0
	li	a0,0
	li	a1,0
	call	__subdf3
	li	a5,1
	mv	s1,a0
	mv	s0,a1
	sw	a5,24(sp)
	j	.L254
.L251:
	mv	a5,s0
	lw	s0,120(sp)
	sw	s11,128(sp)
	lw	s4,104(sp)
	lw	ra,124(sp)
	lw	s11,76(sp)
	mv	a4,s1
	mv	a7,s2
	lw	s1,116(sp)
	lw	s2,112(sp)
	mv	a6,s6
	mv	a3,s10
	lw	s6,96(sp)
	lw	s10,80(sp)
	mv	a2,s9
	mv	a1,s8
	lw	s9,84(sp)
	lw	s8,88(sp)
	mv	a0,s3
	lw	s3,108(sp)
	addi	sp,sp,128
	tail	_etoa
.L332:
	lui	a4,%hi(.LC21)
	mv	a7,s11
	mv	a6,s2
	li	a5,4
	addi	a4,a4,%lo(.LC21)
	j	.L330
.L326:
	mv	a0,s4
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__subdf3
	lw	a2,%lo(.LC7)(s6)
	lw	a3,%lo(.LC7+4)(s6)
	call	__ltdf2
	blt	a0,zero,.L265
	andi	a3,s4,1
	add	s4,s4,a3
.L265:
	li	a0,32
	li	a2,10
.L272:
	beq	s5,a0,.L337
	rem	a3,s4,a2
	addi	s5,s5,1
	add	a1,s7,s5
	div	s4,s4,a2
	addi	a3,a3,48
	sb	a3,-1(a1)
	bne	s4,zero,.L272
	andi	a3,s11,3
	li	a2,1
	beq	a3,a2,.L338
.L275:
	li	a3,32
	beq	s5,a3,.L281
	lw	a5,24(sp)
	beq	a5,zero,.L280
	addi	a5,s5,32
	addi	a4,sp,32
	add	a3,a5,a4
	li	a2,45
	sb	a2,-32(a3)
	addi	s5,s5,1
.L281:
	mv	a7,s11
	mv	a6,s2
	mv	a5,s5
	mv	a4,s7
	mv	a3,s10
	mv	a2,s9
	mv	a1,s8
	mv	a0,s3
	call	_out_rev
	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s4,104(sp)
	lw	s5,100(sp)
	lw	s7,92(sp)
	lw	s1,116(sp)
	lw	s2,112(sp)
	lw	s3,108(sp)
	lw	s6,96(sp)
	lw	s8,88(sp)
	lw	s9,84(sp)
	lw	s10,80(sp)
	lw	s11,76(sp)
	addi	sp,sp,128
	jr	ra
.L337:
	andi	a3,s11,3
	li	a2,1
	bne	a3,a2,.L281
	beq	s2,zero,.L281
.L285:
	lw	a5,24(sp)
	bne	a5,zero,.L276
	andi	a3,s11,12
	bne	a3,zero,.L276
	bgeu	s5,s2,.L339
.L278:
	li	a3,32
	li	a2,48
	li	a1,32
	beq	s5,a3,.L283
.L282:
	addi	s5,s5,1
	add	a3,s7,s5
	sb	a2,-1(a3)
	beq	s2,s5,.L275
	bne	s5,a1,.L282
.L283:
	li	s5,32
	j	.L281
.L325:
	lui	a5,%hi(.LC7)
	lw	a0,16(sp)
	lw	a1,28(sp)
	lw	a2,%lo(.LC7)(a5)
	lw	a3,%lo(.LC7+4)(a5)
	sw	t1,12(sp)
	sw	a7,0(sp)
	call	__ltdf2
	lw	a7,0(sp)
	lw	t1,12(sp)
	blt	a0,zero,.L261
	bne	a7,zero,.L340
	addi	a7,a7,1
	j	.L261
.L288:
	lui	a4,%hi(.LC16)
	lw	a5,%lo(.LC16)(a4)
	lw	a6,%lo(.LC16+4)(a4)
	li	t1,6
	sw	a5,0(sp)
	sw	a6,4(sp)
	addi	s7,sp,32
	j	.L256
.L335:
	beq	s5,a0,.L266
	add	a0,t1,s5
	li	a1,48
	li	a2,32
	bne	t1,zero,.L270
	j	.L268
.L341:
	beq	s5,a0,.L268
.L270:
	addi	s5,s5,1
	add	a3,s7,s5
	sb	a1,-1(a3)
	bne	s5,a2,.L341
.L266:
	li	s5,32
	j	.L265
.L289:
	lw	a5,%lo(.LC19)(s4)
	lw	a6,%lo(.LC19+4)(s4)
	li	s5,32
	sw	a5,0(sp)
	sw	a6,4(sp)
	j	.L256
.L339:
	li	a3,32
	beq	s5,a3,.L281
.L280:
	andi	a3,s11,4
	bne	a3,zero,.L342
	andi	a3,s11,8
	beq	a3,zero,.L281
	addi	a5,s5,32
	addi	a4,sp,32
	add	a3,a5,a4
	li	a2,32
	sb	a2,-32(a3)
	addi	s5,s5,1
	j	.L281
.L268:
	addi	a5,s5,32
	addi	a4,sp,32
	add	a3,a5,a4
	li	a2,46
	sb	a2,-32(a3)
	addi	s5,s5,1
	j	.L265
.L342:
	addi	a5,s5,32
	addi	a4,sp,32
	add	a3,a5,a4
	li	a2,43
	sb	a2,-32(a3)
	addi	s5,s5,1
	j	.L281
.L340:
	andi	a3,a7,1
	beq	a3,zero,.L261
	addi	a7,a7,1
	j	.L261
.L276:
	addi	s2,s2,-1
	bltu	s5,s2,.L278
	j	.L275
.L257:
	lui	a5,%hi(pow10.0)
	slli	a4,s6,3
	addi	a5,a5,%lo(pow10.0)
	add	a5,a5,a4
	lw	a6,4(a5)
	lw	a5,0(a5)
	mv	t1,s6
	sw	a6,4(sp)
	sw	a5,0(sp)
	li	s5,0
	addi	s7,sp,32
	j	.L256
.L338:
	beq	s2,zero,.L275
	j	.L285
	.size	_ftoa, .-_ftoa
	.section	.text._out_char,"ax",@progbits
	.align	2
	.type	_out_char, @function
_out_char:
	bne	a0,zero,.L345
	ret
.L345:
	tail	_putchar
	.size	_out_char, .-_out_char
	.section	.text._out_fct,"ax",@progbits
	.align	2
	.type	_out_fct, @function
_out_fct:
	beq	a0,zero,.L346
	lw	a5,0(a1)
	lw	a1,4(a1)
	jr	a5
.L346:
	ret
	.size	_out_fct, .-_out_fct
	.section	.text._vsnprintf,"ax",@progbits
	.align	2
	.type	_vsnprintf, @function
_vsnprintf:
	addi	sp,sp,-112
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s7,76(sp)
	sw	s11,60(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s10,64(sp)
	mv	s3,a1
	mv	s2,a2
	mv	s7,a3
	mv	s11,a4
	mv	s4,a0
	beq	a1,zero,.L505
	lbu	a0,0(s7)
	li	s10,0
	beq	a0,zero,.L496
.L519:
	lui	a5,%hi(.L372)
	sw	s5,84(sp)
	addi	a5,a5,%lo(.L372)
	lui	s5,%hi(.L355)
	sw	s1,100(sp)
	sw	s6,80(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	li	s1,16
	addi	s5,s5,%lo(.L355)
	li	s6,9
	sw	a5,36(sp)
	j	.L439
.L380:
	mv	a2,s10
	mv	a3,s2
	mv	a1,s3
	addi	s10,s10,1
	jalr	s4
.L352:
	lbu	a0,0(s7)
	beq	a0,zero,.L506
.L439:
	li	a5,37
	addi	s7,s7,1
	bne	a0,a5,.L380
	li	s0,0
.L351:
	lbu	a0,0(s7)
	addi	a4,s7,1
	addi	a5,a0,-32
	andi	a5,a5,0xff
	bgtu	a5,s1,.L353
	slli	a5,a5,2
	add	a5,a5,s5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata._vsnprintf,"a",@progbits
	.align	2
	.align	2
.L355:
	.word	.L359
	.word	.L353
	.word	.L353
	.word	.L358
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L353
	.word	.L357
	.word	.L353
	.word	.L356
	.word	.L353
	.word	.L353
	.word	.L354
	.section	.text._vsnprintf
.L353:
	addi	a5,a0,-48
	andi	a5,a5,0xff
	bleu	a5,s6,.L507
	li	a5,42
	li	t4,0
	beq	a0,a5,.L508
.L363:
	li	a5,46
	li	s9,0
	beq	a0,a5,.L509
.L366:
	addi	a5,a0,-104
	andi	a5,a5,0xff
	li	a3,18
	bgtu	a5,a3,.L370
	lw	a3,36(sp)
	slli	a5,a5,2
	add	a5,a5,a3
	lw	a5,0(a5)
	jr	a5
	.section	.rodata._vsnprintf
	.align	2
	.align	2
.L372:
	.word	.L375
	.word	.L370
	.word	.L374
	.word	.L370
	.word	.L373
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L371
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L370
	.word	.L371
	.section	.text._vsnprintf
.L354:
	ori	s0,s0,1
	mv	s7,a4
	j	.L351
.L356:
	ori	s0,s0,2
	mv	s7,a4
	j	.L351
.L357:
	ori	s0,s0,4
	mv	s7,a4
	j	.L351
.L358:
	ori	s0,s0,16
	mv	s7,a4
	j	.L351
.L359:
	ori	s0,s0,8
	mv	s7,a4
	j	.L351
.L371:
	lbu	a0,1(s7)
.L501:
	ori	s0,s0,256
	addi	a4,a4,1
.L370:
	li	a5,103
	mv	s7,a4
	bgtu	a0,a5,.L378
	li	a5,36
	bleu	a0,a5,.L380
	addi	a5,a0,-37
	andi	a5,a5,0xff
	li	a4,66
	bgtu	a5,a4,.L380
	lui	a4,%hi(.L385)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L385)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata._vsnprintf
	.align	2
	.align	2
.L385:
	.word	.L389
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L384
	.word	.L386
	.word	.L384
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L387
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L380
	.word	.L387
	.word	.L388
	.word	.L387
	.word	.L384
	.word	.L386
	.word	.L384
	.section	.text._vsnprintf
.L507:
	li	t4,0
.L360:
	slli	a5,t4,2
	add	a5,a5,t4
	slli	a5,a5,1
	add	a5,a5,a0
	lbu	a0,0(a4)
	addi	t4,a5,-48
	mv	s7,a4
	addi	a5,a0,-48
	andi	a5,a5,0xff
	addi	a4,a4,1
	bleu	a5,s6,.L360
	li	a5,46
	li	s9,0
	bne	a0,a5,.L366
.L509:
	lbu	a0,1(s7)
	li	a2,9
	mv	a3,a4
	addi	a5,a0,-48
	andi	a5,a5,0xff
	ori	s0,s0,1024
	bleu	a5,a2,.L510
	li	a5,42
	beq	a0,a5,.L511
	mv	s7,a4
	addi	a4,a4,1
	j	.L366
.L506:
	lw	s1,100(sp)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	mv	s0,s10
	bgtu	s2,s10,.L441
.L520:
	addi	s10,s2,-1
.L441:
	mv	a3,s2
	mv	a2,s10
	mv	a1,s3
	li	a0,0
	jalr	s4
	lw	ra,108(sp)
	mv	a0,s0
	lw	s0,104(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s7,76(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	addi	sp,sp,112
	jr	ra
.L378:
	addi	a5,a0,-105
	andi	a5,a5,0xff
	li	a4,15
	bgtu	a5,a4,.L380
	li	a4,36864
	li	s8,1
	sll	s8,s8,a5
	addi	a4,a4,65
	and	s8,s8,a4
	bne	s8,zero,.L381
	li	a4,10
	beq	a5,a4,.L382
	li	a4,7
	bne	a5,a4,.L380
	lw	a4,0(s11)
	li	a5,8
	ori	s0,s0,33
	sw	a5,0(sp)
	mv	a2,s10
	sw	s0,4(sp)
	mv	a7,s9
	li	a6,16
	li	a5,0
	mv	a3,s2
	mv	a1,s3
	mv	a0,s4
	call	_ntoa_long
	addi	s11,s11,4
	mv	s10,a0
	j	.L352
.L508:
	lw	t4,0(s11)
	addi	s11,s11,4
	blt	t4,zero,.L512
	lbu	a0,1(s7)
	mv	s7,a4
	addi	a4,a4,1
	j	.L363
.L382:
	lw	a5,0(s11)
	addi	a4,s11,4
	sw	a4,44(sp)
	lbu	a3,0(a5)
	sw	a5,32(sp)
	mv	a0,a3
	bne	s9,zero,.L513
	beq	a3,zero,.L422
	li	s8,-2
.L423:
	lw	a5,32(sp)
	addi	s8,s8,1
	add	s8,a5,s8
	j	.L425
.L424:
	beq	s8,a5,.L514
.L425:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L424
	lw	a4,32(sp)
	sub	s8,a5,a4
.L422:
	andi	s11,s0,1024
	beq	s11,zero,.L426
	bleu	s8,s9,.L426
	mv	s8,s9
.L426:
	andi	a5,s0,2
	sw	a5,40(sp)
	beq	a5,zero,.L515
	beq	a3,zero,.L435
.L434:
	mv	s0,s10
.L432:
	beq	s11,zero,.L437
	addi	a5,s9,-1
	beq	s9,zero,.L433
	mv	s9,a5
.L437:
	sw	t4,28(sp)
	mv	a2,s0
	mv	a3,s2
	mv	a1,s3
	jalr	s4
	lw	a5,32(sp)
	addi	s0,s0,1
	sub	a4,s0,s10
	add	a4,a5,a4
	lbu	a0,0(a4)
	lw	t4,28(sp)
	bne	a0,zero,.L432
.L433:
	lw	a5,40(sp)
	bne	a5,zero,.L516
.L436:
	lw	s11,44(sp)
	mv	s10,s0
	j	.L352
.L512:
	lbu	a0,1(s7)
	ori	s0,s0,2
	mv	s7,a4
	neg	t4,t4
	addi	a4,a4,1
	j	.L363
.L373:
	lbu	a0,1(s7)
	li	a5,108
	bne	a0,a5,.L501
	lbu	a0,2(s7)
	ori	s0,s0,768
	addi	a4,s7,3
	j	.L370
.L374:
	lbu	a0,1(s7)
	ori	s0,s0,512
	addi	a4,a4,1
	j	.L370
.L375:
	lbu	a0,1(s7)
	li	a5,104
	beq	a0,a5,.L377
	ori	s0,s0,128
	addi	a4,a4,1
	j	.L370
.L384:
	li	a5,103
	beq	a0,a5,.L412
	li	a5,71
	beq	a0,a5,.L413
	li	a5,69
	beq	a0,a5,.L414
.L415:
	addi	s11,s11,7
	andi	s11,s11,-8
	lw	a4,0(s11)
	lw	a5,4(s11)
	mv	a2,s10
	mv	a7,t4
	sw	s0,0(sp)
	mv	a6,s9
	mv	a3,s2
	mv	a1,s3
	mv	a0,s4
	call	_etoa
	addi	s11,s11,8
	mv	s10,a0
	j	.L352
.L386:
	li	a5,70
	beq	a0,a5,.L517
.L411:
	addi	s11,s11,7
	andi	s11,s11,-8
	lw	a4,0(s11)
	lw	a5,4(s11)
	mv	a2,s10
	mv	a7,t4
	sw	s0,0(sp)
	mv	a6,s9
	mv	a3,s2
	mv	a1,s3
	mv	a0,s4
	call	_ftoa
	addi	s11,s11,8
	mv	s10,a0
	j	.L352
.L389:
	mv	a2,s10
	mv	a3,s2
	mv	a1,s3
	li	a0,37
	addi	s10,s10,1
	jalr	s4
	j	.L352
.L388:
	andi	s0,s0,2
	addi	s9,s10,1
	addi	s8,s11,4
	beq	s0,zero,.L518
	lbu	a0,0(s11)
	sw	t4,28(sp)
	mv	a2,s10
	mv	a3,s2
	mv	a1,s3
	jalr	s4
	lw	t4,28(sp)
	li	a5,1
	add	s10,s10,t4
	bleu	t4,a5,.L443
.L420:
	mv	a2,s9
	mv	a3,s2
	addi	s9,s9,1
	mv	a1,s3
	li	a0,32
	jalr	s4
	bne	s10,s9,.L420
	mv	s11,s8
	j	.L352
.L505:
	lbu	a0,0(s7)
	lui	s4,%hi(_out_null)
	addi	s4,s4,%lo(_out_null)
	li	s10,0
	bne	a0,zero,.L519
.L496:
	li	s0,0
	bgtu	s2,s10,.L441
	j	.L520
.L510:
	li	a4,9
.L368:
	slli	a5,s9,2
	add	a5,a5,s9
	addi	a3,a3,1
	slli	a5,a5,1
	add	a5,a5,a0
	lbu	a0,0(a3)
	addi	s9,a5,-48
	addi	a5,a0,-48
	andi	a5,a5,0xff
	bleu	a5,a4,.L368
	mv	s7,a3
	addi	a4,a3,1
	j	.L366
.L381:
	li	a5,111
	beq	a0,a5,.L521
	bleu	a0,a5,.L522
	li	a5,120
	li	a6,16
	beq	a0,a5,.L391
	andi	s0,s0,-17
	li	a6,10
	j	.L391
.L511:
	lw	s9,0(s11)
	lbu	a0,2(s7)
	addi	s7,s7,2
	not	a5,s9
	srai	a5,a5,31
	and	s9,s9,a5
	addi	s11,s11,4
	addi	a4,s7,1
	j	.L366
.L513:
	beq	a3,zero,.L422
	addi	s8,s9,-1
	j	.L423
.L517:
	ori	s0,s0,32
	j	.L411
.L412:
	li	a5,4096
	addi	a5,a5,-2048
	or	s0,s0,a5
	j	.L415
.L521:
	li	a6,8
.L391:
	andi	a4,s0,1024
	andi	a5,s0,-13
	beq	a4,zero,.L399
	andi	a5,s0,-14
.L399:
	andi	a4,a5,512
	bne	a4,zero,.L523
	andi	a4,a5,256
	addi	s0,s11,4
	bne	a4,zero,.L524
	andi	a4,a5,64
	bne	a4,zero,.L525
	andi	a4,a5,128
	beq	a4,zero,.L410
	lhu	a4,0(s11)
.L409:
	sw	a5,4(sp)
	sw	t4,0(sp)
	mv	a7,s9
.L502:
	li	a5,0
.L503:
	mv	a2,s10
	mv	a3,s2
	mv	a1,s3
	mv	a0,s4
	call	_ntoa_long
	mv	s10,a0
	mv	s11,s0
	j	.L352
.L387:
	li	a5,88
	beq	a0,a5,.L393
	li	a5,98
	li	a6,2
	beq	a0,a5,.L391
	andi	a5,s0,1024
	andi	a3,s0,-18
	bne	a5,zero,.L397
	andi	a3,s0,-17
	j	.L397
.L516:
	mv	s10,s0
.L435:
	bleu	t4,s8,.L460
	add	a5,t4,s10
	sub	s0,a5,s8
.L438:
	mv	a2,s10
	mv	a3,s2
	addi	s10,s10,1
	mv	a1,s3
	li	a0,32
	jalr	s4
	bne	s0,s10,.L438
	j	.L436
.L413:
	li	a5,4096
	addi	a5,a5,-2048
	or	s0,s0,a5
.L414:
	ori	s0,s0,32
	j	.L415
.L377:
	lbu	a0,2(s7)
	ori	s0,s0,192
	addi	a4,s7,3
	j	.L370
.L514:
	lw	a5,32(sp)
	sub	s8,s8,a5
	j	.L422
.L393:
	ori	s0,s0,32
	li	a6,16
	j	.L391
.L515:
	bleu	t4,s8,.L429
	add	a5,t4,s10
	sub	s8,a5,s8
.L430:
	sw	t4,28(sp)
	mv	a2,s10
	mv	a3,s2
	mv	a1,s3
	li	a0,32
	jalr	s4
	addi	s10,s10,1
	lw	t4,28(sp)
	bne	s8,s10,.L430
	lw	a5,32(sp)
	addi	s8,t4,1
	lbu	a3,0(a5)
.L431:
	mv	a0,a3
	bne	a3,zero,.L434
.L460:
	mv	s0,s10
	j	.L436
.L518:
	li	a5,1
	bleu	t4,a5,.L417
	addi	s0,s10,-1
	add	s0,s0,t4
	mv	s9,s10
.L418:
	sw	t4,28(sp)
	mv	a2,s9
	mv	a3,s2
	mv	a1,s3
	li	a0,32
	jalr	s4
	addi	s9,s9,1
	lw	t4,28(sp)
	bne	s0,s9,.L418
	lbu	a0,0(s11)
	mv	a3,s2
	mv	a2,s0
	mv	a1,s3
	add	s10,s10,t4
	mv	s11,s8
	jalr	s4
	j	.L352
.L525:
	lbu	a4,0(s11)
	j	.L409
.L417:
	lbu	a0,0(s11)
	mv	a3,s2
	mv	a2,s10
	mv	a1,s3
	jalr	s4
.L443:
	mv	s10,s9
	mv	s11,s8
	j	.L352
.L523:
	addi	s11,s11,7
	andi	s11,s11,-8
	lw	a2,0(s11)
	lw	a3,4(s11)
	mv	a7,a6
	sw	a5,12(sp)
	sw	t4,8(sp)
	sw	s9,4(sp)
	sw	zero,0(sp)
	li	a6,0
	mv	a4,a2
	mv	a5,a3
.L504:
	mv	a2,s10
	mv	a3,s2
	mv	a1,s3
	mv	a0,s4
	call	_ntoa_long_long
	addi	s11,s11,8
	mv	s10,a0
	j	.L352
.L522:
	li	a5,105
	andi	a3,s0,-17
	bne	a0,a5,.L526
	andi	a5,s0,1024
	beq	a5,zero,.L397
	andi	a3,s0,-18
.L397:
	andi	a5,a3,512
	bne	a5,zero,.L527
	andi	a5,a3,256
	addi	s0,s11,4
	bne	a5,zero,.L528
	andi	a5,a3,64
	beq	a5,zero,.L403
	lbu	a5,0(s11)
	mv	a4,a5
.L404:
	sw	a3,4(sp)
	sw	t4,0(sp)
	mv	a7,s9
	li	a6,10
	srli	a5,a5,31
	j	.L503
.L527:
	addi	s11,s11,7
	andi	s11,s11,-8
	lw	a6,4(s11)
	lw	a5,0(s11)
	li	a7,10
	srai	a2,a6,31
	xor	a5,a2,a5
	sub	a4,a5,a2
	xor	a1,a2,a6
	sgtu	a5,a4,a5
	sub	a2,a1,a2
	sw	a3,12(sp)
	sw	t4,8(sp)
	sw	s9,4(sp)
	sw	zero,0(sp)
	srli	a6,a6,31
	sub	a5,a2,a5
	j	.L504
.L403:
	andi	a5,a3,128
	beq	a5,zero,.L405
	lh	a5,0(s11)
	srai	a2,a5,15
	xor	a4,a5,a2
	sub	a4,a4,a2
	slli	a4,a4,16
	srli	a4,a4,16
	j	.L404
.L528:
	lw	a5,0(s11)
	sw	a3,4(sp)
	mv	a7,s9
	srai	a4,a5,31
	xor	a3,a4,a5
	sw	t4,0(sp)
	li	a6,10
	srli	a5,a5,31
	sub	a4,a3,a4
	j	.L503
.L524:
	lw	a4,0(s11)
	mv	a7,s9
	sw	a5,4(sp)
	sw	t4,0(sp)
	j	.L502
.L405:
	lw	a5,0(s11)
	srai	a2,a5,31
	xor	a4,a2,a5
	sub	a4,a4,a2
	j	.L404
.L410:
	lw	a4,0(s11)
	j	.L409
.L429:
	addi	s8,s8,1
	j	.L431
.L526:
	mv	s0,a3
	li	a6,10
	j	.L391
	.size	_vsnprintf, .-_vsnprintf
	.section	.text.printf_,"ax",@progbits
	.align	2
	.globl	printf_
	.type	printf_, @function
printf_:
	addi	sp,sp,-64
	addi	t1,sp,36
	sw	a3,44(sp)
	mv	a3,a0
	lui	a0,%hi(_out_char)
	sw	a1,36(sp)
	sw	a2,40(sp)
	sw	a4,48(sp)
	addi	a1,sp,8
	mv	a4,t1
	li	a2,-1
	addi	a0,a0,%lo(_out_char)
	sw	ra,28(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	sw	t1,12(sp)
	call	_vsnprintf
	lw	ra,28(sp)
	addi	sp,sp,64
	jr	ra
	.size	printf_, .-printf_
	.section	.text.sprintf_,"ax",@progbits
	.align	2
	.globl	sprintf_
	.type	sprintf_, @function
sprintf_:
	addi	sp,sp,-64
	addi	t1,sp,40
	sw	a3,44(sp)
	mv	a3,a1
	mv	a1,a0
	lui	a0,%hi(_out_buffer)
	sw	a2,40(sp)
	sw	a4,48(sp)
	li	a2,-1
	mv	a4,t1
	addi	a0,a0,%lo(_out_buffer)
	sw	ra,28(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	sw	t1,12(sp)
	call	_vsnprintf
	lw	ra,28(sp)
	addi	sp,sp,64
	jr	ra
	.size	sprintf_, .-sprintf_
	.section	.text.snprintf_,"ax",@progbits
	.align	2
	.globl	snprintf_
	.type	snprintf_, @function
snprintf_:
	addi	sp,sp,-64
	addi	t1,sp,44
	sw	a3,44(sp)
	mv	a3,a2
	mv	a2,a1
	mv	a1,a0
	lui	a0,%hi(_out_buffer)
	sw	a4,48(sp)
	addi	a0,a0,%lo(_out_buffer)
	mv	a4,t1
	sw	ra,28(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	sw	t1,12(sp)
	call	_vsnprintf
	lw	ra,28(sp)
	addi	sp,sp,64
	jr	ra
	.size	snprintf_, .-snprintf_
	.section	.text.vprintf_,"ax",@progbits
	.align	2
	.globl	vprintf_
	.type	vprintf_, @function
vprintf_:
	addi	sp,sp,-32
	mv	a3,a0
	lui	a0,%hi(_out_char)
	mv	a4,a1
	li	a2,-1
	addi	a1,sp,12
	addi	a0,a0,%lo(_out_char)
	sw	ra,28(sp)
	call	_vsnprintf
	lw	ra,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	vprintf_, .-vprintf_
	.section	.text.vsnprintf_,"ax",@progbits
	.align	2
	.globl	vsnprintf_
	.type	vsnprintf_, @function
vsnprintf_:
	mv	a4,a3
	mv	a3,a2
	mv	a2,a1
	mv	a1,a0
	lui	a0,%hi(_out_buffer)
	addi	a0,a0,%lo(_out_buffer)
	tail	_vsnprintf
	.size	vsnprintf_, .-vsnprintf_
	.section	.text.fctprintf,"ax",@progbits
	.align	2
	.globl	fctprintf
	.type	fctprintf, @function
fctprintf:
	addi	sp,sp,-64
	addi	t1,sp,44
	mv	t4,a0
	lui	a0,%hi(_out_fct)
	mv	t3,a1
	sw	a3,44(sp)
	sw	a4,48(sp)
	mv	a3,a2
	addi	a1,sp,8
	mv	a4,t1
	li	a2,-1
	addi	a0,a0,%lo(_out_fct)
	sw	ra,28(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	sw	t1,4(sp)
	sw	t4,8(sp)
	sw	t3,12(sp)
	call	_vsnprintf
	lw	ra,28(sp)
	addi	sp,sp,64
	jr	ra
	.size	fctprintf, .-fctprintf
	.section	.rodata.pow10.0,"a"
	.align	3
	.type	pow10.0, @object
	.size	pow10.0, 80
pow10.0:
	.word	0
	.word	1072693248
	.word	0
	.word	1076101120
	.word	0
	.word	1079574528
	.word	0
	.word	1083129856
	.word	0
	.word	1086556160
	.word	0
	.word	1090021888
	.word	0
	.word	1093567616
	.word	0
	.word	1097011920
	.word	0
	.word	1100470148
	.word	0
	.word	1104006501
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	-1
	.word	2146435071
	.align	3
.LC1:
	.word	-1
	.word	-1048577
	.align	3
.LC2:
	.word	1352628731
	.word	1070810131
	.align	3
.LC3:
	.word	-1956591437
	.word	1069976104
	.align	3
.LC4:
	.word	0
	.word	1073217536
	.align	3
.LC5:
	.word	1668236129
	.word	1070761895
	.align	3
.LC6:
	.word	158966641
	.word	1074434895
	.align	3
.LC7:
	.word	0
	.word	1071644672
	.align	3
.LC8:
	.word	-1145744106
	.word	1073900465
	.align	3
.LC9:
	.word	-17155601
	.word	1072049730
	.align	3
.LC10:
	.word	0
	.word	1076625408
	.align	3
.LC11:
	.word	0
	.word	1076101120
	.align	3
.LC12:
	.word	0
	.word	1075314688
	.align	3
.LC13:
	.word	0
	.word	1073741824
	.align	3
.LC14:
	.word	0
	.word	1072693248
	.align	3
.LC15:
	.word	-350469331
	.word	1058682594
	.align	3
.LC16:
	.word	0
	.word	1093567616
	.align	3
.LC19:
	.word	0
	.word	1104006501
	.align	3
.LC22:
	.word	0
	.word	-1043477147
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
