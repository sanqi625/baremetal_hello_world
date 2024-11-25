
/data/usr/qijiahuan/baremetal_hello_world/test/fp_hello/build/toy_bm/fp_hello.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <__start>:
80000000:	00000093          	li	ra,0
80000004:	00000113          	li	sp,0
80000008:	00000193          	li	gp,0
8000000c:	00000213          	li	tp,0
80000010:	00000293          	li	t0,0
80000014:	00000313          	li	t1,0
80000018:	00000393          	li	t2,0
8000001c:	00000413          	li	s0,0
80000020:	00000493          	li	s1,0
80000024:	00000513          	li	a0,0
80000028:	00000593          	li	a1,0
8000002c:	00000613          	li	a2,0
80000030:	00000693          	li	a3,0
80000034:	00000713          	li	a4,0
80000038:	00000793          	li	a5,0
8000003c:	00000813          	li	a6,0
80000040:	00000893          	li	a7,0
80000044:	00000913          	li	s2,0
80000048:	00000993          	li	s3,0
8000004c:	00000a13          	li	s4,0
80000050:	00000a93          	li	s5,0
80000054:	00000b13          	li	s6,0
80000058:	00000b93          	li	s7,0
8000005c:	00000c13          	li	s8,0
80000060:	00000c93          	li	s9,0
80000064:	00000d13          	li	s10,0
80000068:	00000d93          	li	s11,0
8000006c:	00000e13          	li	t3,0
80000070:	00000e93          	li	t4,0
80000074:	00000f13          	li	t5,0
80000078:	00000f93          	li	t6,0
8000007c:	40000117          	auipc	sp,0x40000
80000080:	f8410113          	add	sp,sp,-124 # c0000000 <__stack_base>
80000084:	20001297          	auipc	t0,0x20001
80000088:	9fc28293          	add	t0,t0,-1540 # a0000a80 <__bss_end>
8000008c:	20001317          	auipc	t1,0x20001
80000090:	9f430313          	add	t1,t1,-1548 # a0000a80 <__bss_end>

80000094 <clear_bss_loop>:
80000094:	0002a023          	sw	zero,0(t0)
80000098:	00428293          	add	t0,t0,4
8000009c:	fe62cce3          	blt	t0,t1,80000094 <clear_bss_loop>
800000a0:	20001297          	auipc	t0,0x20001
800000a4:	9dc28293          	add	t0,t0,-1572 # a0000a7c <uart>
800000a8:	20001317          	auipc	t1,0x20001
800000ac:	9d830313          	add	t1,t1,-1576 # a0000a80 <__bss_end>

800000b0 <clear_sbss_loop>:
800000b0:	0002a023          	sw	zero,0(t0)
800000b4:	00428293          	add	t0,t0,4
800000b8:	fe62cce3          	blt	t0,t1,800000b0 <clear_sbss_loop>

800000bc <start_warm>:
800000bc:	00800193          	li	gp,8
800000c0:	30019073          	csrw	mstatus,gp
800000c4:	000011b7          	lui	gp,0x1
800000c8:	88818193          	add	gp,gp,-1912 # 888 <__stack_size-0x3778>
800000cc:	30419073          	csrw	mie,gp
800000d0:	00000717          	auipc	a4,0x0
800000d4:	01c70713          	add	a4,a4,28 # 800000ec <_trap_handler>
800000d8:	30571073          	csrw	mtvec,a4
800000dc:	665020ef          	jal	80002f40 <init>
800000e0:	4a1050ef          	jal	80005d80 <main>
800000e4:	5ed020ef          	jal	80002ed0 <to_host>
800000e8:	10500073          	wfi

800000ec <_trap_handler>:
800000ec:	34021273          	csrrw	tp,mscratch,tp
800000f0:	00010213          	mv	tp,sp
800000f4:	f6222e23          	sw	sp,-132(tp) # ffffff7c <__stack_base+0x3fffff7c>
800000f8:	f7420113          	add	sp,tp,-140 # ffffff74 <__stack_base+0x3fffff74>
800000fc:	34021273          	csrrw	tp,mscratch,tp
80000100:	00012023          	sw	zero,0(sp)
80000104:	00112223          	sw	ra,4(sp)
80000108:	00312623          	sw	gp,12(sp)
8000010c:	00412823          	sw	tp,16(sp)
80000110:	00512a23          	sw	t0,20(sp)
80000114:	00712e23          	sw	t2,28(sp)
80000118:	00612c23          	sw	t1,24(sp)
8000011c:	00712e23          	sw	t2,28(sp)
80000120:	02812023          	sw	s0,32(sp)
80000124:	02912223          	sw	s1,36(sp)
80000128:	02a12423          	sw	a0,40(sp)
8000012c:	02b12623          	sw	a1,44(sp)
80000130:	02c12823          	sw	a2,48(sp)
80000134:	02d12a23          	sw	a3,52(sp)
80000138:	02e12c23          	sw	a4,56(sp)
8000013c:	02f12e23          	sw	a5,60(sp)
80000140:	05012023          	sw	a6,64(sp)
80000144:	05112223          	sw	a7,68(sp)
80000148:	05212423          	sw	s2,72(sp)
8000014c:	05312623          	sw	s3,76(sp)
80000150:	05412823          	sw	s4,80(sp)
80000154:	05512a23          	sw	s5,84(sp)
80000158:	05612c23          	sw	s6,88(sp)
8000015c:	05712e23          	sw	s7,92(sp)
80000160:	07812023          	sw	s8,96(sp)
80000164:	07912223          	sw	s9,100(sp)
80000168:	07a12423          	sw	s10,104(sp)
8000016c:	07b12623          	sw	s11,108(sp)
80000170:	07c12823          	sw	t3,112(sp)
80000174:	07d12a23          	sw	t4,116(sp)
80000178:	07e12c23          	sw	t5,120(sp)
8000017c:	07f12e23          	sw	t6,124(sp)
80000180:	00010533          	add	a0,sp,zero
80000184:	2c4030ef          	jal	80003448 <toy_trap_handler>

80000188 <_trap_exit>:
80000188:	00452083          	lw	ra,4(a0)
8000018c:	00852103          	lw	sp,8(a0)
80000190:	00c52183          	lw	gp,12(a0)
80000194:	01052203          	lw	tp,16(a0)
80000198:	01452283          	lw	t0,20(a0)
8000019c:	01852303          	lw	t1,24(a0)
800001a0:	01c52383          	lw	t2,28(a0)
800001a4:	02052403          	lw	s0,32(a0)
800001a8:	02452483          	lw	s1,36(a0)
800001ac:	02c52583          	lw	a1,44(a0)
800001b0:	03052603          	lw	a2,48(a0)
800001b4:	03452683          	lw	a3,52(a0)
800001b8:	03852703          	lw	a4,56(a0)
800001bc:	03c52783          	lw	a5,60(a0)
800001c0:	04052803          	lw	a6,64(a0)
800001c4:	04452883          	lw	a7,68(a0)
800001c8:	04852903          	lw	s2,72(a0)
800001cc:	04c52983          	lw	s3,76(a0)
800001d0:	05052a03          	lw	s4,80(a0)
800001d4:	05452a83          	lw	s5,84(a0)
800001d8:	05852b03          	lw	s6,88(a0)
800001dc:	05c52b83          	lw	s7,92(a0)
800001e0:	06052c03          	lw	s8,96(a0)
800001e4:	06452c83          	lw	s9,100(a0)
800001e8:	06852d03          	lw	s10,104(a0)
800001ec:	06c52d83          	lw	s11,108(a0)
800001f0:	07052e03          	lw	t3,112(a0)
800001f4:	07452e83          	lw	t4,116(a0)
800001f8:	07852f03          	lw	t5,120(a0)
800001fc:	07c52f83          	lw	t6,124(a0)
80000200:	02852503          	lw	a0,40(a0)
80000204:	30200073          	mret

80000208 <__udivdi3>:
#endif

#ifdef L_udivdi3
UDWtype
__udivdi3 (UDWtype n, UDWtype d)
{
80000208:	00050893          	mv	a7,a0
8000020c:	00058313          	mv	t1,a1
  d0 = dd.s.low;
80000210:	00060713          	mv	a4,a2
  n0 = nn.s.low;
80000214:	00050813          	mv	a6,a0
  n1 = nn.s.high;
80000218:	00058793          	mv	a5,a1
  if (d1 == 0)
8000021c:	28069263          	bnez	a3,800004a0 <__udivdi3+0x298>
      if (d0 > n1)
80000220:	a00005b7          	lui	a1,0xa0000
80000224:	75858593          	add	a1,a1,1880 # a0000758 <__clz_tab>
80000228:	0ec37663          	bgeu	t1,a2,80000314 <__udivdi3+0x10c>
	  count_leading_zeros (bm, d0);
8000022c:	000106b7          	lui	a3,0x10
80000230:	0cd67863          	bgeu	a2,a3,80000300 <__udivdi3+0xf8>
80000234:	10063693          	sltiu	a3,a2,256
80000238:	0016b693          	seqz	a3,a3
8000023c:	00369693          	sll	a3,a3,0x3
80000240:	00d65533          	srl	a0,a2,a3
80000244:	00a585b3          	add	a1,a1,a0
80000248:	0005c583          	lbu	a1,0(a1)
8000024c:	02000513          	li	a0,32
80000250:	00d586b3          	add	a3,a1,a3
80000254:	40d505b3          	sub	a1,a0,a3
	  if (bm != 0)
80000258:	00d50c63          	beq	a0,a3,80000270 <__udivdi3+0x68>
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
8000025c:	00b317b3          	sll	a5,t1,a1
80000260:	00d8d6b3          	srl	a3,a7,a3
	      d0 = d0 << bm;
80000264:	00b61733          	sll	a4,a2,a1
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
80000268:	00f6e7b3          	or	a5,a3,a5
	      n0 = n0 << bm;
8000026c:	00b89833          	sll	a6,a7,a1
	  udiv_qrnnd (q0, n0, n1, n0, d0);
80000270:	01075593          	srl	a1,a4,0x10
80000274:	02b7d333          	divu	t1,a5,a1
80000278:	01071613          	sll	a2,a4,0x10
8000027c:	01065613          	srl	a2,a2,0x10
80000280:	02b7f7b3          	remu	a5,a5,a1
80000284:	00030513          	mv	a0,t1
80000288:	026608b3          	mul	a7,a2,t1
8000028c:	01079693          	sll	a3,a5,0x10
80000290:	01085793          	srl	a5,a6,0x10
80000294:	00d7e7b3          	or	a5,a5,a3
80000298:	0117fe63          	bgeu	a5,a7,800002b4 <__udivdi3+0xac>
8000029c:	00f707b3          	add	a5,a4,a5
800002a0:	fff30513          	add	a0,t1,-1
800002a4:	00e7e863          	bltu	a5,a4,800002b4 <__udivdi3+0xac>
800002a8:	0117f663          	bgeu	a5,a7,800002b4 <__udivdi3+0xac>
800002ac:	ffe30513          	add	a0,t1,-2
800002b0:	00e787b3          	add	a5,a5,a4
800002b4:	411787b3          	sub	a5,a5,a7
800002b8:	02b7d8b3          	divu	a7,a5,a1
800002bc:	01081813          	sll	a6,a6,0x10
800002c0:	01085813          	srl	a6,a6,0x10
800002c4:	02b7f7b3          	remu	a5,a5,a1
800002c8:	031606b3          	mul	a3,a2,a7
800002cc:	01079793          	sll	a5,a5,0x10
800002d0:	00f86833          	or	a6,a6,a5
800002d4:	00088793          	mv	a5,a7
800002d8:	00d87c63          	bgeu	a6,a3,800002f0 <__udivdi3+0xe8>
800002dc:	01070833          	add	a6,a4,a6
800002e0:	fff88793          	add	a5,a7,-1
800002e4:	00e86663          	bltu	a6,a4,800002f0 <__udivdi3+0xe8>
800002e8:	00d87463          	bgeu	a6,a3,800002f0 <__udivdi3+0xe8>
800002ec:	ffe88793          	add	a5,a7,-2
800002f0:	01051513          	sll	a0,a0,0x10
800002f4:	00f56533          	or	a0,a0,a5
	      q1 = 0;
800002f8:	00000593          	li	a1,0
  return __udivmoddi4 (n, d, (UDWtype *) 0);
}
800002fc:	00008067          	ret
	  count_leading_zeros (bm, d0);
80000300:	01000537          	lui	a0,0x1000
80000304:	01800693          	li	a3,24
80000308:	f2a67ce3          	bgeu	a2,a0,80000240 <__udivdi3+0x38>
8000030c:	01000693          	li	a3,16
80000310:	f31ff06f          	j	80000240 <__udivdi3+0x38>
	  count_leading_zeros (bm, d0);
80000314:	00000693          	li	a3,0
	  if (d0 == 0)
80000318:	00060c63          	beqz	a2,80000330 <__udivdi3+0x128>
	  count_leading_zeros (bm, d0);
8000031c:	000107b7          	lui	a5,0x10
80000320:	0cf67063          	bgeu	a2,a5,800003e0 <__udivdi3+0x1d8>
80000324:	10063693          	sltiu	a3,a2,256
80000328:	0016b693          	seqz	a3,a3
8000032c:	00369693          	sll	a3,a3,0x3
80000330:	00d657b3          	srl	a5,a2,a3
80000334:	00f585b3          	add	a1,a1,a5
80000338:	0005c783          	lbu	a5,0(a1)
8000033c:	00d787b3          	add	a5,a5,a3
80000340:	02000693          	li	a3,32
80000344:	40f685b3          	sub	a1,a3,a5
	  if (bm == 0)
80000348:	0af69663          	bne	a3,a5,800003f4 <__udivdi3+0x1ec>
	      n1 -= d0;
8000034c:	40c307b3          	sub	a5,t1,a2
	      q1 = 1;
80000350:	00100593          	li	a1,1
	  udiv_qrnnd (q0, n0, n1, n0, d0);
80000354:	01075893          	srl	a7,a4,0x10
80000358:	0317de33          	divu	t3,a5,a7
8000035c:	01071613          	sll	a2,a4,0x10
80000360:	01065613          	srl	a2,a2,0x10
80000364:	01085693          	srl	a3,a6,0x10
80000368:	0317f7b3          	remu	a5,a5,a7
8000036c:	000e0513          	mv	a0,t3
80000370:	03c60333          	mul	t1,a2,t3
80000374:	01079793          	sll	a5,a5,0x10
80000378:	00f6e7b3          	or	a5,a3,a5
8000037c:	0067fe63          	bgeu	a5,t1,80000398 <__udivdi3+0x190>
80000380:	00f707b3          	add	a5,a4,a5
80000384:	fffe0513          	add	a0,t3,-1
80000388:	00e7e863          	bltu	a5,a4,80000398 <__udivdi3+0x190>
8000038c:	0067f663          	bgeu	a5,t1,80000398 <__udivdi3+0x190>
80000390:	ffee0513          	add	a0,t3,-2
80000394:	00e787b3          	add	a5,a5,a4
80000398:	406787b3          	sub	a5,a5,t1
8000039c:	0317d333          	divu	t1,a5,a7
800003a0:	01081813          	sll	a6,a6,0x10
800003a4:	01085813          	srl	a6,a6,0x10
800003a8:	0317f7b3          	remu	a5,a5,a7
800003ac:	026606b3          	mul	a3,a2,t1
800003b0:	01079793          	sll	a5,a5,0x10
800003b4:	00f86833          	or	a6,a6,a5
800003b8:	00030793          	mv	a5,t1
800003bc:	00d87c63          	bgeu	a6,a3,800003d4 <__udivdi3+0x1cc>
800003c0:	01070833          	add	a6,a4,a6
800003c4:	fff30793          	add	a5,t1,-1
800003c8:	00e86663          	bltu	a6,a4,800003d4 <__udivdi3+0x1cc>
800003cc:	00d87463          	bgeu	a6,a3,800003d4 <__udivdi3+0x1cc>
800003d0:	ffe30793          	add	a5,t1,-2
800003d4:	01051513          	sll	a0,a0,0x10
800003d8:	00f56533          	or	a0,a0,a5
800003dc:	00008067          	ret
	  count_leading_zeros (bm, d0);
800003e0:	010007b7          	lui	a5,0x1000
800003e4:	01800693          	li	a3,24
800003e8:	f4f674e3          	bgeu	a2,a5,80000330 <__udivdi3+0x128>
800003ec:	01000693          	li	a3,16
800003f0:	f41ff06f          	j	80000330 <__udivdi3+0x128>
	      d0 = d0 << bm;
800003f4:	00b61733          	sll	a4,a2,a1
	      n2 = n1 >> b;
800003f8:	00f356b3          	srl	a3,t1,a5
	      udiv_qrnnd (q1, n1, n2, n1, d0);
800003fc:	01075513          	srl	a0,a4,0x10
	      n1 = (n1 << bm) | (n0 >> b);
80000400:	00b31333          	sll	t1,t1,a1
80000404:	00f8d7b3          	srl	a5,a7,a5
80000408:	0067e7b3          	or	a5,a5,t1
	      udiv_qrnnd (q1, n1, n2, n1, d0);
8000040c:	02a6d333          	divu	t1,a3,a0
80000410:	01071613          	sll	a2,a4,0x10
80000414:	01065613          	srl	a2,a2,0x10
	      n0 = n0 << bm;
80000418:	00b89833          	sll	a6,a7,a1
	      udiv_qrnnd (q1, n1, n2, n1, d0);
8000041c:	02a6f6b3          	remu	a3,a3,a0
80000420:	026608b3          	mul	a7,a2,t1
80000424:	01069593          	sll	a1,a3,0x10
80000428:	0107d693          	srl	a3,a5,0x10
8000042c:	00b6e6b3          	or	a3,a3,a1
80000430:	00030593          	mv	a1,t1
80000434:	0116fe63          	bgeu	a3,a7,80000450 <__udivdi3+0x248>
80000438:	00d706b3          	add	a3,a4,a3
8000043c:	fff30593          	add	a1,t1,-1
80000440:	00e6e863          	bltu	a3,a4,80000450 <__udivdi3+0x248>
80000444:	0116f663          	bgeu	a3,a7,80000450 <__udivdi3+0x248>
80000448:	ffe30593          	add	a1,t1,-2
8000044c:	00e686b3          	add	a3,a3,a4
80000450:	411686b3          	sub	a3,a3,a7
80000454:	02a6d8b3          	divu	a7,a3,a0
80000458:	01079793          	sll	a5,a5,0x10
8000045c:	0107d793          	srl	a5,a5,0x10
80000460:	02a6f6b3          	remu	a3,a3,a0
80000464:	03160633          	mul	a2,a2,a7
80000468:	01069693          	sll	a3,a3,0x10
8000046c:	00d7e7b3          	or	a5,a5,a3
80000470:	00088693          	mv	a3,a7
80000474:	00c7fe63          	bgeu	a5,a2,80000490 <__udivdi3+0x288>
80000478:	00f707b3          	add	a5,a4,a5
8000047c:	fff88693          	add	a3,a7,-1
80000480:	00e7e863          	bltu	a5,a4,80000490 <__udivdi3+0x288>
80000484:	00c7f663          	bgeu	a5,a2,80000490 <__udivdi3+0x288>
80000488:	ffe88693          	add	a3,a7,-2
8000048c:	00e787b3          	add	a5,a5,a4
80000490:	01059593          	sll	a1,a1,0x10
80000494:	40c787b3          	sub	a5,a5,a2
80000498:	00d5e5b3          	or	a1,a1,a3
8000049c:	eb9ff06f          	j	80000354 <__udivdi3+0x14c>
      if (d1 > n1)
800004a0:	18d5e663          	bltu	a1,a3,8000062c <__udivdi3+0x424>
	  count_leading_zeros (bm, d1);
800004a4:	000107b7          	lui	a5,0x10
800004a8:	04f6f463          	bgeu	a3,a5,800004f0 <__udivdi3+0x2e8>
800004ac:	1006b713          	sltiu	a4,a3,256
800004b0:	00173713          	seqz	a4,a4
800004b4:	00371713          	sll	a4,a4,0x3
800004b8:	a00007b7          	lui	a5,0xa0000
800004bc:	00e6d5b3          	srl	a1,a3,a4
800004c0:	75878793          	add	a5,a5,1880 # a0000758 <__clz_tab>
800004c4:	00b787b3          	add	a5,a5,a1
800004c8:	0007c783          	lbu	a5,0(a5)
800004cc:	00e787b3          	add	a5,a5,a4
800004d0:	02000713          	li	a4,32
800004d4:	40f705b3          	sub	a1,a4,a5
	  if (bm == 0)
800004d8:	02f71663          	bne	a4,a5,80000504 <__udivdi3+0x2fc>
		  q0 = 1;
800004dc:	00100513          	li	a0,1
	      if (n1 > d1 || n0 >= d0)
800004e0:	e066eee3          	bltu	a3,t1,800002fc <__udivdi3+0xf4>
800004e4:	00c8b533          	sltu	a0,a7,a2
800004e8:	00153513          	seqz	a0,a0
800004ec:	00008067          	ret
	  count_leading_zeros (bm, d1);
800004f0:	010007b7          	lui	a5,0x1000
800004f4:	01800713          	li	a4,24
800004f8:	fcf6f0e3          	bgeu	a3,a5,800004b8 <__udivdi3+0x2b0>
800004fc:	01000713          	li	a4,16
80000500:	fb9ff06f          	j	800004b8 <__udivdi3+0x2b0>
	      d1 = (d1 << bm) | (d0 >> b);
80000504:	00f65733          	srl	a4,a2,a5
80000508:	00b696b3          	sll	a3,a3,a1
8000050c:	00d766b3          	or	a3,a4,a3
	      n2 = n1 >> b;
80000510:	00f35733          	srl	a4,t1,a5
	      n1 = (n1 << bm) | (n0 >> b);
80000514:	00b31333          	sll	t1,t1,a1
80000518:	00f8d7b3          	srl	a5,a7,a5
8000051c:	0067e7b3          	or	a5,a5,t1
	      udiv_qrnnd (q0, n1, n2, n1, d1);
80000520:	0106d313          	srl	t1,a3,0x10
80000524:	02675eb3          	divu	t4,a4,t1
80000528:	01069813          	sll	a6,a3,0x10
8000052c:	01085813          	srl	a6,a6,0x10
	      d0 = d0 << bm;
80000530:	00b61633          	sll	a2,a2,a1
	      udiv_qrnnd (q0, n1, n2, n1, d1);
80000534:	02677733          	remu	a4,a4,t1
80000538:	03d80e33          	mul	t3,a6,t4
8000053c:	01071513          	sll	a0,a4,0x10
80000540:	0107d713          	srl	a4,a5,0x10
80000544:	00a76733          	or	a4,a4,a0
80000548:	000e8513          	mv	a0,t4
8000054c:	01c77e63          	bgeu	a4,t3,80000568 <__udivdi3+0x360>
80000550:	00e68733          	add	a4,a3,a4
80000554:	fffe8513          	add	a0,t4,-1
80000558:	00d76863          	bltu	a4,a3,80000568 <__udivdi3+0x360>
8000055c:	01c77663          	bgeu	a4,t3,80000568 <__udivdi3+0x360>
80000560:	ffee8513          	add	a0,t4,-2
80000564:	00d70733          	add	a4,a4,a3
80000568:	41c70733          	sub	a4,a4,t3
8000056c:	02675e33          	divu	t3,a4,t1
80000570:	01079793          	sll	a5,a5,0x10
80000574:	0107d793          	srl	a5,a5,0x10
80000578:	02677733          	remu	a4,a4,t1
8000057c:	03c80833          	mul	a6,a6,t3
80000580:	01071713          	sll	a4,a4,0x10
80000584:	00e7e7b3          	or	a5,a5,a4
80000588:	000e0713          	mv	a4,t3
8000058c:	0107fe63          	bgeu	a5,a6,800005a8 <__udivdi3+0x3a0>
80000590:	00f687b3          	add	a5,a3,a5
80000594:	fffe0713          	add	a4,t3,-1
80000598:	00d7e863          	bltu	a5,a3,800005a8 <__udivdi3+0x3a0>
8000059c:	0107f663          	bgeu	a5,a6,800005a8 <__udivdi3+0x3a0>
800005a0:	ffee0713          	add	a4,t3,-2
800005a4:	00d787b3          	add	a5,a5,a3
800005a8:	01051513          	sll	a0,a0,0x10
	      umul_ppmm (m1, m0, q0, d0);
800005ac:	00010e37          	lui	t3,0x10
	      udiv_qrnnd (q0, n1, n2, n1, d1);
800005b0:	00e56533          	or	a0,a0,a4
	      umul_ppmm (m1, m0, q0, d0);
800005b4:	fffe0693          	add	a3,t3,-1 # ffff <__stack_size+0xbfff>
800005b8:	00d57733          	and	a4,a0,a3
	      udiv_qrnnd (q0, n1, n2, n1, d1);
800005bc:	410787b3          	sub	a5,a5,a6
	      umul_ppmm (m1, m0, q0, d0);
800005c0:	00d676b3          	and	a3,a2,a3
800005c4:	01055813          	srl	a6,a0,0x10
800005c8:	01065613          	srl	a2,a2,0x10
800005cc:	02d70333          	mul	t1,a4,a3
800005d0:	02d806b3          	mul	a3,a6,a3
800005d4:	02c70733          	mul	a4,a4,a2
800005d8:	02c80833          	mul	a6,a6,a2
800005dc:	00d70633          	add	a2,a4,a3
800005e0:	01035713          	srl	a4,t1,0x10
800005e4:	00c70733          	add	a4,a4,a2
800005e8:	00d77463          	bgeu	a4,a3,800005f0 <__udivdi3+0x3e8>
800005ec:	01c80833          	add	a6,a6,t3
800005f0:	01075693          	srl	a3,a4,0x10
800005f4:	010686b3          	add	a3,a3,a6
	      if (m1 > n1 || (m1 == n1 && m0 > n0))
800005f8:	02d7e663          	bltu	a5,a3,80000624 <__udivdi3+0x41c>
800005fc:	ced79ee3          	bne	a5,a3,800002f8 <__udivdi3+0xf0>
	      umul_ppmm (m1, m0, q0, d0);
80000600:	000107b7          	lui	a5,0x10
80000604:	fff78793          	add	a5,a5,-1 # ffff <__stack_size+0xbfff>
80000608:	00f77733          	and	a4,a4,a5
8000060c:	01071713          	sll	a4,a4,0x10
80000610:	00f37333          	and	t1,t1,a5
	      n0 = n0 << bm;
80000614:	00b898b3          	sll	a7,a7,a1
	      umul_ppmm (m1, m0, q0, d0);
80000618:	00670733          	add	a4,a4,t1
	      q1 = 0;
8000061c:	00000593          	li	a1,0
	      if (m1 > n1 || (m1 == n1 && m0 > n0))
80000620:	cce8fee3          	bgeu	a7,a4,800002fc <__udivdi3+0xf4>
		  q0--;
80000624:	fff50513          	add	a0,a0,-1 # ffffff <__stack_size+0xffbfff>
		  sub_ddmmss (m1, m0, m1, m0, d1, d0);
80000628:	cd1ff06f          	j	800002f8 <__udivdi3+0xf0>
	  q1 = 0;
8000062c:	00000593          	li	a1,0
	  q0 = 0;
80000630:	00000513          	li	a0,0
80000634:	00008067          	ret

80000638 <__umoddi3>:
  d0 = dd.s.low;
80000638:	00060813          	mv	a6,a2
  n0 = nn.s.low;
8000063c:	00050793          	mv	a5,a0
  n1 = nn.s.high;
80000640:	00058713          	mv	a4,a1
  if (d1 == 0)
80000644:	20069663          	bnez	a3,80000850 <__umoddi3+0x218>
      if (d0 > n1)
80000648:	a00008b7          	lui	a7,0xa0000
8000064c:	75888893          	add	a7,a7,1880 # a0000758 <__clz_tab>
80000650:	0cc5fc63          	bgeu	a1,a2,80000728 <__umoddi3+0xf0>
	  count_leading_zeros (bm, d0);
80000654:	000106b7          	lui	a3,0x10
80000658:	0ad67e63          	bgeu	a2,a3,80000714 <__umoddi3+0xdc>
8000065c:	10063693          	sltiu	a3,a2,256
80000660:	0016b693          	seqz	a3,a3
80000664:	00369693          	sll	a3,a3,0x3
80000668:	00d65333          	srl	t1,a2,a3
8000066c:	006888b3          	add	a7,a7,t1
80000670:	0008c883          	lbu	a7,0(a7)
80000674:	02000313          	li	t1,32
80000678:	00d886b3          	add	a3,a7,a3
8000067c:	40d308b3          	sub	a7,t1,a3
	  if (bm != 0)
80000680:	00d30c63          	beq	t1,a3,80000698 <__umoddi3+0x60>
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
80000684:	01159733          	sll	a4,a1,a7
80000688:	00d556b3          	srl	a3,a0,a3
	      d0 = d0 << bm;
8000068c:	01161833          	sll	a6,a2,a7
	      n1 = (n1 << bm) | (n0 >> (W_TYPE_SIZE - bm));
80000690:	00e6e733          	or	a4,a3,a4
	      n0 = n0 << bm;
80000694:	011517b3          	sll	a5,a0,a7
	  udiv_qrnnd (q0, n0, n1, n0, d0);
80000698:	01085613          	srl	a2,a6,0x10
8000069c:	02c756b3          	divu	a3,a4,a2
800006a0:	01081513          	sll	a0,a6,0x10
800006a4:	01055513          	srl	a0,a0,0x10
800006a8:	02c77733          	remu	a4,a4,a2
800006ac:	02a686b3          	mul	a3,a3,a0
800006b0:	01071593          	sll	a1,a4,0x10
800006b4:	0107d713          	srl	a4,a5,0x10
800006b8:	00b76733          	or	a4,a4,a1
800006bc:	00d77a63          	bgeu	a4,a3,800006d0 <__umoddi3+0x98>
800006c0:	00e80733          	add	a4,a6,a4
800006c4:	01076663          	bltu	a4,a6,800006d0 <__umoddi3+0x98>
800006c8:	00d77463          	bgeu	a4,a3,800006d0 <__umoddi3+0x98>
800006cc:	01070733          	add	a4,a4,a6
800006d0:	40d70733          	sub	a4,a4,a3
800006d4:	02c756b3          	divu	a3,a4,a2
800006d8:	02c77733          	remu	a4,a4,a2
800006dc:	02a686b3          	mul	a3,a3,a0
	  udiv_qrnnd (q0, n0, n1, n0, d0);
800006e0:	01079793          	sll	a5,a5,0x10
800006e4:	01071713          	sll	a4,a4,0x10
800006e8:	0107d793          	srl	a5,a5,0x10
800006ec:	00e7e7b3          	or	a5,a5,a4
800006f0:	00d7fa63          	bgeu	a5,a3,80000704 <__umoddi3+0xcc>
800006f4:	00f807b3          	add	a5,a6,a5
800006f8:	0107e663          	bltu	a5,a6,80000704 <__umoddi3+0xcc>
800006fc:	00d7f463          	bgeu	a5,a3,80000704 <__umoddi3+0xcc>
80000700:	010787b3          	add	a5,a5,a6
80000704:	40d787b3          	sub	a5,a5,a3
	  rr.s.low = n0 >> bm;
80000708:	0117d533          	srl	a0,a5,a7
	  *rp = rr.ll;
8000070c:	00000593          	li	a1,0
80000710:	00008067          	ret
	  count_leading_zeros (bm, d0);
80000714:	01000337          	lui	t1,0x1000
80000718:	01800693          	li	a3,24
8000071c:	f46676e3          	bgeu	a2,t1,80000668 <__umoddi3+0x30>
80000720:	01000693          	li	a3,16
80000724:	f45ff06f          	j	80000668 <__umoddi3+0x30>
	  count_leading_zeros (bm, d0);
80000728:	00000693          	li	a3,0
	  if (d0 == 0)
8000072c:	00060c63          	beqz	a2,80000744 <__umoddi3+0x10c>
	  count_leading_zeros (bm, d0);
80000730:	00010737          	lui	a4,0x10
80000734:	06e67e63          	bgeu	a2,a4,800007b0 <__umoddi3+0x178>
80000738:	10063693          	sltiu	a3,a2,256
8000073c:	0016b693          	seqz	a3,a3
80000740:	00369693          	sll	a3,a3,0x3
80000744:	00d65733          	srl	a4,a2,a3
80000748:	00e888b3          	add	a7,a7,a4
8000074c:	0008c703          	lbu	a4,0(a7)
80000750:	00d70733          	add	a4,a4,a3
80000754:	02000693          	li	a3,32
80000758:	40e688b3          	sub	a7,a3,a4
	  if (bm == 0)
8000075c:	06e69463          	bne	a3,a4,800007c4 <__umoddi3+0x18c>
	      n1 -= d0;
80000760:	40c58733          	sub	a4,a1,a2
	  udiv_qrnnd (q0, n0, n1, n0, d0);
80000764:	01085593          	srl	a1,a6,0x10
80000768:	02b75633          	divu	a2,a4,a1
8000076c:	01081513          	sll	a0,a6,0x10
80000770:	01055513          	srl	a0,a0,0x10
80000774:	0107d693          	srl	a3,a5,0x10
80000778:	02b77733          	remu	a4,a4,a1
8000077c:	02a60633          	mul	a2,a2,a0
80000780:	01071713          	sll	a4,a4,0x10
80000784:	00e6e733          	or	a4,a3,a4
80000788:	00c77a63          	bgeu	a4,a2,8000079c <__umoddi3+0x164>
8000078c:	00e80733          	add	a4,a6,a4
80000790:	01076663          	bltu	a4,a6,8000079c <__umoddi3+0x164>
80000794:	00c77463          	bgeu	a4,a2,8000079c <__umoddi3+0x164>
80000798:	01070733          	add	a4,a4,a6
8000079c:	40c70733          	sub	a4,a4,a2
800007a0:	02b756b3          	divu	a3,a4,a1
800007a4:	02b77733          	remu	a4,a4,a1
800007a8:	02a686b3          	mul	a3,a3,a0
800007ac:	f35ff06f          	j	800006e0 <__umoddi3+0xa8>
	  count_leading_zeros (bm, d0);
800007b0:	01000737          	lui	a4,0x1000
800007b4:	01800693          	li	a3,24
800007b8:	f8e676e3          	bgeu	a2,a4,80000744 <__umoddi3+0x10c>
800007bc:	01000693          	li	a3,16
800007c0:	f85ff06f          	j	80000744 <__umoddi3+0x10c>
	      d0 = d0 << bm;
800007c4:	01161833          	sll	a6,a2,a7
	      n2 = n1 >> b;
800007c8:	00e5d6b3          	srl	a3,a1,a4
	      n0 = n0 << bm;
800007cc:	011517b3          	sll	a5,a0,a7
	      n1 = (n1 << bm) | (n0 >> b);
800007d0:	011595b3          	sll	a1,a1,a7
800007d4:	00e55733          	srl	a4,a0,a4
	      udiv_qrnnd (q1, n1, n2, n1, d0);
800007d8:	01085513          	srl	a0,a6,0x10
	      n1 = (n1 << bm) | (n0 >> b);
800007dc:	00b76733          	or	a4,a4,a1
	      udiv_qrnnd (q1, n1, n2, n1, d0);
800007e0:	02a6d5b3          	divu	a1,a3,a0
800007e4:	01081313          	sll	t1,a6,0x10
800007e8:	01035313          	srl	t1,t1,0x10
800007ec:	02a6f6b3          	remu	a3,a3,a0
800007f0:	026585b3          	mul	a1,a1,t1
800007f4:	01069613          	sll	a2,a3,0x10
800007f8:	01075693          	srl	a3,a4,0x10
800007fc:	00c6e6b3          	or	a3,a3,a2
80000800:	00b6fa63          	bgeu	a3,a1,80000814 <__umoddi3+0x1dc>
80000804:	00d806b3          	add	a3,a6,a3
80000808:	0106e663          	bltu	a3,a6,80000814 <__umoddi3+0x1dc>
8000080c:	00b6f463          	bgeu	a3,a1,80000814 <__umoddi3+0x1dc>
80000810:	010686b3          	add	a3,a3,a6
80000814:	40b686b3          	sub	a3,a3,a1
80000818:	02a6d633          	divu	a2,a3,a0
8000081c:	01071713          	sll	a4,a4,0x10
80000820:	01075713          	srl	a4,a4,0x10
80000824:	02a6f6b3          	remu	a3,a3,a0
80000828:	02660633          	mul	a2,a2,t1
8000082c:	01069693          	sll	a3,a3,0x10
80000830:	00d76733          	or	a4,a4,a3
80000834:	00c77a63          	bgeu	a4,a2,80000848 <__umoddi3+0x210>
80000838:	00e80733          	add	a4,a6,a4
8000083c:	01076663          	bltu	a4,a6,80000848 <__umoddi3+0x210>
80000840:	00c77463          	bgeu	a4,a2,80000848 <__umoddi3+0x210>
80000844:	01070733          	add	a4,a4,a6
80000848:	40c70733          	sub	a4,a4,a2
8000084c:	f19ff06f          	j	80000764 <__umoddi3+0x12c>
      if (d1 > n1)
80000850:	1cd5e463          	bltu	a1,a3,80000a18 <__umoddi3+0x3e0>
	  count_leading_zeros (bm, d1);
80000854:	00010837          	lui	a6,0x10
80000858:	0506fe63          	bgeu	a3,a6,800008b4 <__umoddi3+0x27c>
8000085c:	1006b813          	sltiu	a6,a3,256
80000860:	00183813          	seqz	a6,a6
80000864:	00381813          	sll	a6,a6,0x3
80000868:	a00008b7          	lui	a7,0xa0000
8000086c:	0106d333          	srl	t1,a3,a6
80000870:	75888893          	add	a7,a7,1880 # a0000758 <__clz_tab>
80000874:	006888b3          	add	a7,a7,t1
80000878:	0008c883          	lbu	a7,0(a7)
8000087c:	02000313          	li	t1,32
80000880:	010888b3          	add	a7,a7,a6
80000884:	41130833          	sub	a6,t1,a7
	  if (bm == 0)
80000888:	05131063          	bne	t1,a7,800008c8 <__umoddi3+0x290>
	      if (n1 > d1 || n0 >= d0)
8000088c:	00b6e463          	bltu	a3,a1,80000894 <__umoddi3+0x25c>
80000890:	00c56c63          	bltu	a0,a2,800008a8 <__umoddi3+0x270>
		  sub_ddmmss (n1, n0, n1, n0, d1, d0);
80000894:	40c50633          	sub	a2,a0,a2
80000898:	40d586b3          	sub	a3,a1,a3
8000089c:	00c53733          	sltu	a4,a0,a2
800008a0:	00060793          	mv	a5,a2
800008a4:	40e68733          	sub	a4,a3,a4
		  *rp = rr.ll;
800008a8:	00078513          	mv	a0,a5
800008ac:	00070593          	mv	a1,a4
800008b0:	00008067          	ret
	  count_leading_zeros (bm, d1);
800008b4:	010008b7          	lui	a7,0x1000
800008b8:	01800813          	li	a6,24
800008bc:	fb16f6e3          	bgeu	a3,a7,80000868 <__umoddi3+0x230>
800008c0:	01000813          	li	a6,16
800008c4:	fa5ff06f          	j	80000868 <__umoddi3+0x230>
	      d1 = (d1 << bm) | (d0 >> b);
800008c8:	011657b3          	srl	a5,a2,a7
800008cc:	010696b3          	sll	a3,a3,a6
800008d0:	00d7e6b3          	or	a3,a5,a3
	      n2 = n1 >> b;
800008d4:	0115d733          	srl	a4,a1,a7
	      udiv_qrnnd (q0, n1, n2, n1, d1);
800008d8:	0106de13          	srl	t3,a3,0x10
800008dc:	03c75f33          	divu	t5,a4,t3
800008e0:	01069313          	sll	t1,a3,0x10
800008e4:	01035313          	srl	t1,t1,0x10
	      n1 = (n1 << bm) | (n0 >> b);
800008e8:	010597b3          	sll	a5,a1,a6
800008ec:	011555b3          	srl	a1,a0,a7
800008f0:	00f5e5b3          	or	a1,a1,a5
	      udiv_qrnnd (q0, n1, n2, n1, d1);
800008f4:	0105d793          	srl	a5,a1,0x10
	      d0 = d0 << bm;
800008f8:	01061633          	sll	a2,a2,a6
	      n0 = n0 << bm;
800008fc:	01051533          	sll	a0,a0,a6
	      udiv_qrnnd (q0, n1, n2, n1, d1);
80000900:	03c77733          	remu	a4,a4,t3
80000904:	03e30eb3          	mul	t4,t1,t5
80000908:	01071713          	sll	a4,a4,0x10
8000090c:	00e7e7b3          	or	a5,a5,a4
80000910:	000f0713          	mv	a4,t5
80000914:	01d7fe63          	bgeu	a5,t4,80000930 <__umoddi3+0x2f8>
80000918:	00f687b3          	add	a5,a3,a5
8000091c:	ffff0713          	add	a4,t5,-1
80000920:	00d7e863          	bltu	a5,a3,80000930 <__umoddi3+0x2f8>
80000924:	01d7f663          	bgeu	a5,t4,80000930 <__umoddi3+0x2f8>
80000928:	ffef0713          	add	a4,t5,-2
8000092c:	00d787b3          	add	a5,a5,a3
80000930:	41d787b3          	sub	a5,a5,t4
80000934:	03c7deb3          	divu	t4,a5,t3
80000938:	01059593          	sll	a1,a1,0x10
8000093c:	0105d593          	srl	a1,a1,0x10
80000940:	03c7f7b3          	remu	a5,a5,t3
80000944:	000e8e13          	mv	t3,t4
80000948:	03d30333          	mul	t1,t1,t4
8000094c:	01079793          	sll	a5,a5,0x10
80000950:	00f5e5b3          	or	a1,a1,a5
80000954:	0065fe63          	bgeu	a1,t1,80000970 <__umoddi3+0x338>
80000958:	00b685b3          	add	a1,a3,a1
8000095c:	fffe8e13          	add	t3,t4,-1
80000960:	00d5e863          	bltu	a1,a3,80000970 <__umoddi3+0x338>
80000964:	0065f663          	bgeu	a1,t1,80000970 <__umoddi3+0x338>
80000968:	ffee8e13          	add	t3,t4,-2
8000096c:	00d585b3          	add	a1,a1,a3
80000970:	01071793          	sll	a5,a4,0x10
	      umul_ppmm (m1, m0, q0, d0);
80000974:	00010f37          	lui	t5,0x10
	      udiv_qrnnd (q0, n1, n2, n1, d1);
80000978:	01c7e7b3          	or	a5,a5,t3
8000097c:	406585b3          	sub	a1,a1,t1
	      umul_ppmm (m1, m0, q0, d0);
80000980:	ffff0313          	add	t1,t5,-1 # ffff <__stack_size+0xbfff>
80000984:	0067f733          	and	a4,a5,t1
80000988:	01065e13          	srl	t3,a2,0x10
8000098c:	0107d793          	srl	a5,a5,0x10
80000990:	00667333          	and	t1,a2,t1
80000994:	02670eb3          	mul	t4,a4,t1
80000998:	02678333          	mul	t1,a5,t1
8000099c:	03c70733          	mul	a4,a4,t3
800009a0:	03c787b3          	mul	a5,a5,t3
800009a4:	00670e33          	add	t3,a4,t1
800009a8:	010ed713          	srl	a4,t4,0x10
800009ac:	01c70733          	add	a4,a4,t3
800009b0:	00677463          	bgeu	a4,t1,800009b8 <__umoddi3+0x380>
800009b4:	01e787b3          	add	a5,a5,t5
800009b8:	01075313          	srl	t1,a4,0x10
800009bc:	00f307b3          	add	a5,t1,a5
800009c0:	00010337          	lui	t1,0x10
800009c4:	fff30313          	add	t1,t1,-1 # ffff <__stack_size+0xbfff>
800009c8:	00677733          	and	a4,a4,t1
800009cc:	01071713          	sll	a4,a4,0x10
800009d0:	006efeb3          	and	t4,t4,t1
800009d4:	01d70733          	add	a4,a4,t4
	      if (m1 > n1 || (m1 == n1 && m0 > n0))
800009d8:	00f5e663          	bltu	a1,a5,800009e4 <__umoddi3+0x3ac>
800009dc:	00f59e63          	bne	a1,a5,800009f8 <__umoddi3+0x3c0>
800009e0:	00e57c63          	bgeu	a0,a4,800009f8 <__umoddi3+0x3c0>
		  sub_ddmmss (m1, m0, m1, m0, d1, d0);
800009e4:	40c70633          	sub	a2,a4,a2
800009e8:	00c73333          	sltu	t1,a4,a2
800009ec:	00d306b3          	add	a3,t1,a3
800009f0:	00060713          	mv	a4,a2
800009f4:	40d787b3          	sub	a5,a5,a3
		  sub_ddmmss (n1, n0, n1, n0, m1, m0);
800009f8:	40e50733          	sub	a4,a0,a4
800009fc:	00e53533          	sltu	a0,a0,a4
80000a00:	40f585b3          	sub	a1,a1,a5
80000a04:	40a585b3          	sub	a1,a1,a0
		  rr.s.low = (n1 << b) | (n0 >> bm);
80000a08:	011598b3          	sll	a7,a1,a7
80000a0c:	01075733          	srl	a4,a4,a6
		  *rp = rr.ll;
80000a10:	00e8e533          	or	a0,a7,a4
80000a14:	0105d5b3          	srl	a1,a1,a6
}
80000a18:	00008067          	ret

80000a1c <__adddf3>:
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_D (A, a);
80000a1c:	00100837          	lui	a6,0x100
80000a20:	fff80813          	add	a6,a6,-1 # fffff <__stack_size+0xfbfff>
{
80000a24:	fe010113          	add	sp,sp,-32
  FP_UNPACK_SEMIRAW_D (A, a);
80000a28:	00b878b3          	and	a7,a6,a1
80000a2c:	0145d713          	srl	a4,a1,0x14
80000a30:	01d55793          	srl	a5,a0,0x1d
  FP_UNPACK_SEMIRAW_D (B, b);
80000a34:	00d87833          	and	a6,a6,a3
{
80000a38:	00912a23          	sw	s1,20(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
80000a3c:	7ff77493          	and	s1,a4,2047
80000a40:	00389713          	sll	a4,a7,0x3
  FP_UNPACK_SEMIRAW_D (B, b);
80000a44:	0146d893          	srl	a7,a3,0x14
80000a48:	00381813          	sll	a6,a6,0x3
{
80000a4c:	01212823          	sw	s2,16(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
80000a50:	00e7e7b3          	or	a5,a5,a4
  FP_UNPACK_SEMIRAW_D (B, b);
80000a54:	7ff8f893          	and	a7,a7,2047
80000a58:	01d65713          	srl	a4,a2,0x1d
{
80000a5c:	00112e23          	sw	ra,28(sp)
80000a60:	00812c23          	sw	s0,24(sp)
80000a64:	01312623          	sw	s3,12(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
80000a68:	01f5d913          	srl	s2,a1,0x1f
  FP_UNPACK_SEMIRAW_D (B, b);
80000a6c:	01f6d693          	srl	a3,a3,0x1f
80000a70:	01076733          	or	a4,a4,a6
  FP_UNPACK_SEMIRAW_D (A, a);
80000a74:	00351513          	sll	a0,a0,0x3
  FP_UNPACK_SEMIRAW_D (B, b);
80000a78:	00361613          	sll	a2,a2,0x3
  FP_ADD_D (R, A, B);
80000a7c:	41148833          	sub	a6,s1,a7
80000a80:	2ad91a63          	bne	s2,a3,80000d34 <__adddf3+0x318>
80000a84:	11005c63          	blez	a6,80000b9c <__adddf3+0x180>
80000a88:	04089063          	bnez	a7,80000ac8 <__adddf3+0xac>
80000a8c:	00c766b3          	or	a3,a4,a2
80000a90:	66068063          	beqz	a3,800010f0 <__adddf3+0x6d4>
80000a94:	fff80593          	add	a1,a6,-1
80000a98:	02059063          	bnez	a1,80000ab8 <__adddf3+0x9c>
80000a9c:	00c50633          	add	a2,a0,a2
80000aa0:	00a636b3          	sltu	a3,a2,a0
80000aa4:	00e78733          	add	a4,a5,a4
80000aa8:	00060513          	mv	a0,a2
80000aac:	00d707b3          	add	a5,a4,a3
80000ab0:	00100493          	li	s1,1
80000ab4:	06c0006f          	j	80000b20 <__adddf3+0x104>
80000ab8:	7ff00693          	li	a3,2047
80000abc:	02d81063          	bne	a6,a3,80000adc <__adddf3+0xc0>
80000ac0:	7ff00493          	li	s1,2047
80000ac4:	1f80006f          	j	80000cbc <__adddf3+0x2a0>
80000ac8:	7ff00693          	li	a3,2047
80000acc:	1ed48863          	beq	s1,a3,80000cbc <__adddf3+0x2a0>
80000ad0:	008006b7          	lui	a3,0x800
80000ad4:	00d76733          	or	a4,a4,a3
80000ad8:	00080593          	mv	a1,a6
80000adc:	03800693          	li	a3,56
80000ae0:	0ab6c863          	blt	a3,a1,80000b90 <__adddf3+0x174>
80000ae4:	01f00693          	li	a3,31
80000ae8:	06b6ca63          	blt	a3,a1,80000b5c <__adddf3+0x140>
80000aec:	02000813          	li	a6,32
80000af0:	40b80833          	sub	a6,a6,a1
80000af4:	010716b3          	sll	a3,a4,a6
80000af8:	00b658b3          	srl	a7,a2,a1
80000afc:	01061833          	sll	a6,a2,a6
80000b00:	0116e6b3          	or	a3,a3,a7
80000b04:	01003833          	snez	a6,a6
80000b08:	0106e6b3          	or	a3,a3,a6
80000b0c:	00b755b3          	srl	a1,a4,a1
80000b10:	00a68533          	add	a0,a3,a0
80000b14:	00f585b3          	add	a1,a1,a5
80000b18:	00d536b3          	sltu	a3,a0,a3
80000b1c:	00d587b3          	add	a5,a1,a3
80000b20:	00879713          	sll	a4,a5,0x8
80000b24:	18075c63          	bgez	a4,80000cbc <__adddf3+0x2a0>
80000b28:	00148493          	add	s1,s1,1
80000b2c:	7ff00713          	li	a4,2047
80000b30:	5ae48a63          	beq	s1,a4,800010e4 <__adddf3+0x6c8>
80000b34:	ff800737          	lui	a4,0xff800
80000b38:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
80000b3c:	00e7f733          	and	a4,a5,a4
80000b40:	00155793          	srl	a5,a0,0x1
80000b44:	00157513          	and	a0,a0,1
80000b48:	00a7e7b3          	or	a5,a5,a0
80000b4c:	01f71513          	sll	a0,a4,0x1f
80000b50:	00f56533          	or	a0,a0,a5
80000b54:	00175793          	srl	a5,a4,0x1
80000b58:	1640006f          	j	80000cbc <__adddf3+0x2a0>
80000b5c:	fe058693          	add	a3,a1,-32
80000b60:	02000893          	li	a7,32
80000b64:	00d756b3          	srl	a3,a4,a3
80000b68:	00000813          	li	a6,0
80000b6c:	01158863          	beq	a1,a7,80000b7c <__adddf3+0x160>
80000b70:	04000813          	li	a6,64
80000b74:	40b80833          	sub	a6,a6,a1
80000b78:	01071833          	sll	a6,a4,a6
80000b7c:	00c86833          	or	a6,a6,a2
80000b80:	01003833          	snez	a6,a6
80000b84:	0106e6b3          	or	a3,a3,a6
80000b88:	00000593          	li	a1,0
80000b8c:	f85ff06f          	j	80000b10 <__adddf3+0xf4>
80000b90:	00c766b3          	or	a3,a4,a2
80000b94:	00d036b3          	snez	a3,a3
80000b98:	ff1ff06f          	j	80000b88 <__adddf3+0x16c>
80000b9c:	0c080a63          	beqz	a6,80000c70 <__adddf3+0x254>
80000ba0:	409886b3          	sub	a3,a7,s1
80000ba4:	02049463          	bnez	s1,80000bcc <__adddf3+0x1b0>
80000ba8:	00a7e5b3          	or	a1,a5,a0
80000bac:	50058e63          	beqz	a1,800010c8 <__adddf3+0x6ac>
80000bb0:	fff68593          	add	a1,a3,-1 # 7fffff <__stack_size+0x7fbfff>
80000bb4:	ee0584e3          	beqz	a1,80000a9c <__adddf3+0x80>
80000bb8:	7ff00813          	li	a6,2047
80000bbc:	03069263          	bne	a3,a6,80000be0 <__adddf3+0x1c4>
80000bc0:	00070793          	mv	a5,a4
80000bc4:	00060513          	mv	a0,a2
80000bc8:	ef9ff06f          	j	80000ac0 <__adddf3+0xa4>
80000bcc:	7ff00593          	li	a1,2047
80000bd0:	feb888e3          	beq	a7,a1,80000bc0 <__adddf3+0x1a4>
80000bd4:	008005b7          	lui	a1,0x800
80000bd8:	00b7e7b3          	or	a5,a5,a1
80000bdc:	00068593          	mv	a1,a3
80000be0:	03800693          	li	a3,56
80000be4:	08b6c063          	blt	a3,a1,80000c64 <__adddf3+0x248>
80000be8:	01f00693          	li	a3,31
80000bec:	04b6c263          	blt	a3,a1,80000c30 <__adddf3+0x214>
80000bf0:	02000813          	li	a6,32
80000bf4:	40b80833          	sub	a6,a6,a1
80000bf8:	010796b3          	sll	a3,a5,a6
80000bfc:	00b55333          	srl	t1,a0,a1
80000c00:	01051833          	sll	a6,a0,a6
80000c04:	0066e6b3          	or	a3,a3,t1
80000c08:	01003833          	snez	a6,a6
80000c0c:	0106e6b3          	or	a3,a3,a6
80000c10:	00b7d5b3          	srl	a1,a5,a1
80000c14:	00c68633          	add	a2,a3,a2
80000c18:	00e585b3          	add	a1,a1,a4
80000c1c:	00d636b3          	sltu	a3,a2,a3
80000c20:	00060513          	mv	a0,a2
80000c24:	00d587b3          	add	a5,a1,a3
80000c28:	00088493          	mv	s1,a7
80000c2c:	ef5ff06f          	j	80000b20 <__adddf3+0x104>
80000c30:	fe058693          	add	a3,a1,-32 # 7fffe0 <__stack_size+0x7fbfe0>
80000c34:	02000313          	li	t1,32
80000c38:	00d7d6b3          	srl	a3,a5,a3
80000c3c:	00000813          	li	a6,0
80000c40:	00658863          	beq	a1,t1,80000c50 <__adddf3+0x234>
80000c44:	04000813          	li	a6,64
80000c48:	40b80833          	sub	a6,a6,a1
80000c4c:	01079833          	sll	a6,a5,a6
80000c50:	00a86833          	or	a6,a6,a0
80000c54:	01003833          	snez	a6,a6
80000c58:	0106e6b3          	or	a3,a3,a6
80000c5c:	00000593          	li	a1,0
80000c60:	fb5ff06f          	j	80000c14 <__adddf3+0x1f8>
80000c64:	00a7e6b3          	or	a3,a5,a0
80000c68:	00d036b3          	snez	a3,a3
80000c6c:	ff1ff06f          	j	80000c5c <__adddf3+0x240>
80000c70:	00148693          	add	a3,s1,1
80000c74:	7fe6f593          	and	a1,a3,2046
80000c78:	08059663          	bnez	a1,80000d04 <__adddf3+0x2e8>
80000c7c:	00a7e6b3          	or	a3,a5,a0
80000c80:	06049263          	bnez	s1,80000ce4 <__adddf3+0x2c8>
80000c84:	44068863          	beqz	a3,800010d4 <__adddf3+0x6b8>
80000c88:	00c766b3          	or	a3,a4,a2
80000c8c:	02068863          	beqz	a3,80000cbc <__adddf3+0x2a0>
80000c90:	00c50633          	add	a2,a0,a2
80000c94:	00a636b3          	sltu	a3,a2,a0
80000c98:	00e78733          	add	a4,a5,a4
80000c9c:	00d707b3          	add	a5,a4,a3
80000ca0:	00879713          	sll	a4,a5,0x8
80000ca4:	00060513          	mv	a0,a2
80000ca8:	00075a63          	bgez	a4,80000cbc <__adddf3+0x2a0>
80000cac:	ff800737          	lui	a4,0xff800
80000cb0:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
80000cb4:	00e7f7b3          	and	a5,a5,a4
80000cb8:	00100493          	li	s1,1
  FP_PACK_SEMIRAW_D (r, R);
80000cbc:	00757713          	and	a4,a0,7
80000cc0:	44070863          	beqz	a4,80001110 <__adddf3+0x6f4>
80000cc4:	00f57713          	and	a4,a0,15
80000cc8:	00400693          	li	a3,4
80000ccc:	44d70263          	beq	a4,a3,80001110 <__adddf3+0x6f4>
80000cd0:	00450713          	add	a4,a0,4
80000cd4:	00a736b3          	sltu	a3,a4,a0
80000cd8:	00d787b3          	add	a5,a5,a3
80000cdc:	00070513          	mv	a0,a4
80000ce0:	4300006f          	j	80001110 <__adddf3+0x6f4>
  FP_ADD_D (R, A, B);
80000ce4:	ec068ee3          	beqz	a3,80000bc0 <__adddf3+0x1a4>
80000ce8:	00c76633          	or	a2,a4,a2
80000cec:	dc060ae3          	beqz	a2,80000ac0 <__adddf3+0xa4>
80000cf0:	00000913          	li	s2,0
80000cf4:	004007b7          	lui	a5,0x400
80000cf8:	00000513          	li	a0,0
80000cfc:	7ff00493          	li	s1,2047
80000d00:	4100006f          	j	80001110 <__adddf3+0x6f4>
80000d04:	7ff00593          	li	a1,2047
80000d08:	3cb68c63          	beq	a3,a1,800010e0 <__adddf3+0x6c4>
80000d0c:	00c50633          	add	a2,a0,a2
80000d10:	00a63533          	sltu	a0,a2,a0
80000d14:	00e78733          	add	a4,a5,a4
80000d18:	00a70733          	add	a4,a4,a0
80000d1c:	01f71513          	sll	a0,a4,0x1f
80000d20:	00165613          	srl	a2,a2,0x1
80000d24:	00c56533          	or	a0,a0,a2
80000d28:	00175793          	srl	a5,a4,0x1
80000d2c:	00068493          	mv	s1,a3
80000d30:	f8dff06f          	j	80000cbc <__adddf3+0x2a0>
80000d34:	0f005c63          	blez	a6,80000e2c <__adddf3+0x410>
80000d38:	08089e63          	bnez	a7,80000dd4 <__adddf3+0x3b8>
80000d3c:	00c766b3          	or	a3,a4,a2
80000d40:	3a068863          	beqz	a3,800010f0 <__adddf3+0x6d4>
80000d44:	fff80693          	add	a3,a6,-1
80000d48:	02069063          	bnez	a3,80000d68 <__adddf3+0x34c>
80000d4c:	40c50633          	sub	a2,a0,a2
80000d50:	00c536b3          	sltu	a3,a0,a2
80000d54:	40e78733          	sub	a4,a5,a4
80000d58:	00060513          	mv	a0,a2
80000d5c:	40d707b3          	sub	a5,a4,a3
80000d60:	00100493          	li	s1,1
80000d64:	0540006f          	j	80000db8 <__adddf3+0x39c>
80000d68:	7ff00593          	li	a1,2047
80000d6c:	d4b80ae3          	beq	a6,a1,80000ac0 <__adddf3+0xa4>
80000d70:	03800593          	li	a1,56
80000d74:	0ad5c663          	blt	a1,a3,80000e20 <__adddf3+0x404>
80000d78:	01f00593          	li	a1,31
80000d7c:	06d5c863          	blt	a1,a3,80000dec <__adddf3+0x3d0>
80000d80:	02000813          	li	a6,32
80000d84:	40d80833          	sub	a6,a6,a3
80000d88:	00d658b3          	srl	a7,a2,a3
80000d8c:	010715b3          	sll	a1,a4,a6
80000d90:	01061833          	sll	a6,a2,a6
80000d94:	0115e5b3          	or	a1,a1,a7
80000d98:	01003833          	snez	a6,a6
80000d9c:	0105e633          	or	a2,a1,a6
80000da0:	00d756b3          	srl	a3,a4,a3
80000da4:	40c50633          	sub	a2,a0,a2
80000da8:	00c53733          	sltu	a4,a0,a2
80000dac:	40d786b3          	sub	a3,a5,a3
80000db0:	00060513          	mv	a0,a2
80000db4:	40e687b3          	sub	a5,a3,a4
80000db8:	00879713          	sll	a4,a5,0x8
80000dbc:	f00750e3          	bgez	a4,80000cbc <__adddf3+0x2a0>
80000dc0:	00800437          	lui	s0,0x800
80000dc4:	fff40413          	add	s0,s0,-1 # 7fffff <__stack_size+0x7fbfff>
80000dc8:	0087f433          	and	s0,a5,s0
80000dcc:	00050993          	mv	s3,a0
80000dd0:	2100006f          	j	80000fe0 <__adddf3+0x5c4>
80000dd4:	7ff00693          	li	a3,2047
80000dd8:	eed482e3          	beq	s1,a3,80000cbc <__adddf3+0x2a0>
80000ddc:	008006b7          	lui	a3,0x800
80000de0:	00d76733          	or	a4,a4,a3
80000de4:	00080693          	mv	a3,a6
80000de8:	f89ff06f          	j	80000d70 <__adddf3+0x354>
80000dec:	fe068593          	add	a1,a3,-32 # 7fffe0 <__stack_size+0x7fbfe0>
80000df0:	02000893          	li	a7,32
80000df4:	00b755b3          	srl	a1,a4,a1
80000df8:	00000813          	li	a6,0
80000dfc:	01168863          	beq	a3,a7,80000e0c <__adddf3+0x3f0>
80000e00:	04000813          	li	a6,64
80000e04:	40d80833          	sub	a6,a6,a3
80000e08:	01071833          	sll	a6,a4,a6
80000e0c:	00c86833          	or	a6,a6,a2
80000e10:	01003833          	snez	a6,a6
80000e14:	0105e633          	or	a2,a1,a6
80000e18:	00000693          	li	a3,0
80000e1c:	f89ff06f          	j	80000da4 <__adddf3+0x388>
80000e20:	00c76633          	or	a2,a4,a2
80000e24:	00c03633          	snez	a2,a2
80000e28:	ff1ff06f          	j	80000e18 <__adddf3+0x3fc>
80000e2c:	0e080863          	beqz	a6,80000f1c <__adddf3+0x500>
80000e30:	40988833          	sub	a6,a7,s1
80000e34:	04049263          	bnez	s1,80000e78 <__adddf3+0x45c>
80000e38:	00a7e5b3          	or	a1,a5,a0
80000e3c:	2a058e63          	beqz	a1,800010f8 <__adddf3+0x6dc>
80000e40:	fff80593          	add	a1,a6,-1
80000e44:	00059e63          	bnez	a1,80000e60 <__adddf3+0x444>
80000e48:	40a60533          	sub	a0,a2,a0
80000e4c:	40f70733          	sub	a4,a4,a5
80000e50:	00a63633          	sltu	a2,a2,a0
80000e54:	40c707b3          	sub	a5,a4,a2
80000e58:	00068913          	mv	s2,a3
80000e5c:	f05ff06f          	j	80000d60 <__adddf3+0x344>
80000e60:	7ff00313          	li	t1,2047
80000e64:	02681463          	bne	a6,t1,80000e8c <__adddf3+0x470>
80000e68:	00070793          	mv	a5,a4
80000e6c:	00060513          	mv	a0,a2
80000e70:	7ff00493          	li	s1,2047
80000e74:	0d00006f          	j	80000f44 <__adddf3+0x528>
80000e78:	7ff00593          	li	a1,2047
80000e7c:	feb886e3          	beq	a7,a1,80000e68 <__adddf3+0x44c>
80000e80:	008005b7          	lui	a1,0x800
80000e84:	00b7e7b3          	or	a5,a5,a1
80000e88:	00080593          	mv	a1,a6
80000e8c:	03800813          	li	a6,56
80000e90:	08b84063          	blt	a6,a1,80000f10 <__adddf3+0x4f4>
80000e94:	01f00813          	li	a6,31
80000e98:	04b84263          	blt	a6,a1,80000edc <__adddf3+0x4c0>
80000e9c:	02000313          	li	t1,32
80000ea0:	40b30333          	sub	t1,t1,a1
80000ea4:	00b55e33          	srl	t3,a0,a1
80000ea8:	00679833          	sll	a6,a5,t1
80000eac:	00651333          	sll	t1,a0,t1
80000eb0:	01c86833          	or	a6,a6,t3
80000eb4:	00603333          	snez	t1,t1
80000eb8:	00686533          	or	a0,a6,t1
80000ebc:	00b7d5b3          	srl	a1,a5,a1
80000ec0:	40a60533          	sub	a0,a2,a0
80000ec4:	40b705b3          	sub	a1,a4,a1
80000ec8:	00a63633          	sltu	a2,a2,a0
80000ecc:	40c587b3          	sub	a5,a1,a2
80000ed0:	00088493          	mv	s1,a7
80000ed4:	00068913          	mv	s2,a3
80000ed8:	ee1ff06f          	j	80000db8 <__adddf3+0x39c>
80000edc:	fe058813          	add	a6,a1,-32 # 7fffe0 <__stack_size+0x7fbfe0>
80000ee0:	02000e13          	li	t3,32
80000ee4:	0107d833          	srl	a6,a5,a6
80000ee8:	00000313          	li	t1,0
80000eec:	01c58863          	beq	a1,t3,80000efc <__adddf3+0x4e0>
80000ef0:	04000313          	li	t1,64
80000ef4:	40b30333          	sub	t1,t1,a1
80000ef8:	00679333          	sll	t1,a5,t1
80000efc:	00a36333          	or	t1,t1,a0
80000f00:	00603333          	snez	t1,t1
80000f04:	00686533          	or	a0,a6,t1
80000f08:	00000593          	li	a1,0
80000f0c:	fb5ff06f          	j	80000ec0 <__adddf3+0x4a4>
80000f10:	00a7e533          	or	a0,a5,a0
80000f14:	00a03533          	snez	a0,a0
80000f18:	ff1ff06f          	j	80000f08 <__adddf3+0x4ec>
80000f1c:	00148593          	add	a1,s1,1
80000f20:	7fe5f593          	and	a1,a1,2046
80000f24:	08059663          	bnez	a1,80000fb0 <__adddf3+0x594>
80000f28:	00a7e833          	or	a6,a5,a0
80000f2c:	00c765b3          	or	a1,a4,a2
80000f30:	06049063          	bnez	s1,80000f90 <__adddf3+0x574>
80000f34:	00081c63          	bnez	a6,80000f4c <__adddf3+0x530>
80000f38:	10058e63          	beqz	a1,80001054 <__adddf3+0x638>
80000f3c:	00070793          	mv	a5,a4
80000f40:	00060513          	mv	a0,a2
80000f44:	00068913          	mv	s2,a3
80000f48:	d75ff06f          	j	80000cbc <__adddf3+0x2a0>
80000f4c:	d60588e3          	beqz	a1,80000cbc <__adddf3+0x2a0>
80000f50:	40c50833          	sub	a6,a0,a2
80000f54:	010538b3          	sltu	a7,a0,a6
80000f58:	40e785b3          	sub	a1,a5,a4
80000f5c:	411585b3          	sub	a1,a1,a7
80000f60:	00859893          	sll	a7,a1,0x8
80000f64:	0008dc63          	bgez	a7,80000f7c <__adddf3+0x560>
80000f68:	40a60533          	sub	a0,a2,a0
80000f6c:	40f70733          	sub	a4,a4,a5
80000f70:	00a63633          	sltu	a2,a2,a0
80000f74:	40c707b3          	sub	a5,a4,a2
80000f78:	fcdff06f          	j	80000f44 <__adddf3+0x528>
80000f7c:	00b86533          	or	a0,a6,a1
80000f80:	18050463          	beqz	a0,80001108 <__adddf3+0x6ec>
80000f84:	00058793          	mv	a5,a1
80000f88:	00080513          	mv	a0,a6
80000f8c:	d31ff06f          	j	80000cbc <__adddf3+0x2a0>
80000f90:	00081c63          	bnez	a6,80000fa8 <__adddf3+0x58c>
80000f94:	d4058ee3          	beqz	a1,80000cf0 <__adddf3+0x2d4>
80000f98:	00070793          	mv	a5,a4
80000f9c:	00060513          	mv	a0,a2
80000fa0:	00068913          	mv	s2,a3
80000fa4:	b1dff06f          	j	80000ac0 <__adddf3+0xa4>
80000fa8:	b0058ce3          	beqz	a1,80000ac0 <__adddf3+0xa4>
80000fac:	d45ff06f          	j	80000cf0 <__adddf3+0x2d4>
80000fb0:	40c505b3          	sub	a1,a0,a2
80000fb4:	00b53833          	sltu	a6,a0,a1
80000fb8:	40e78433          	sub	s0,a5,a4
80000fbc:	41040433          	sub	s0,s0,a6
80000fc0:	00841813          	sll	a6,s0,0x8
80000fc4:	00058993          	mv	s3,a1
80000fc8:	08085063          	bgez	a6,80001048 <__adddf3+0x62c>
80000fcc:	40a609b3          	sub	s3,a2,a0
80000fd0:	40f70433          	sub	s0,a4,a5
80000fd4:	01363633          	sltu	a2,a2,s3
80000fd8:	40c40433          	sub	s0,s0,a2
80000fdc:	00068913          	mv	s2,a3
80000fe0:	06040e63          	beqz	s0,8000105c <__adddf3+0x640>
80000fe4:	00040513          	mv	a0,s0
80000fe8:	69d010ef          	jal	80002e84 <__clzsi2>
80000fec:	ff850693          	add	a3,a0,-8
80000ff0:	02000793          	li	a5,32
80000ff4:	40d787b3          	sub	a5,a5,a3
80000ff8:	00d41433          	sll	s0,s0,a3
80000ffc:	00f9d7b3          	srl	a5,s3,a5
80001000:	0087e7b3          	or	a5,a5,s0
80001004:	00d99433          	sll	s0,s3,a3
80001008:	0a96c463          	blt	a3,s1,800010b0 <__adddf3+0x694>
8000100c:	409686b3          	sub	a3,a3,s1
80001010:	00168613          	add	a2,a3,1
80001014:	01f00713          	li	a4,31
80001018:	06c74263          	blt	a4,a2,8000107c <__adddf3+0x660>
8000101c:	02000713          	li	a4,32
80001020:	40c70733          	sub	a4,a4,a2
80001024:	00e79533          	sll	a0,a5,a4
80001028:	00c456b3          	srl	a3,s0,a2
8000102c:	00e41733          	sll	a4,s0,a4
80001030:	00d56533          	or	a0,a0,a3
80001034:	00e03733          	snez	a4,a4
80001038:	00e56533          	or	a0,a0,a4
8000103c:	00c7d7b3          	srl	a5,a5,a2
80001040:	00000493          	li	s1,0
80001044:	c79ff06f          	j	80000cbc <__adddf3+0x2a0>
80001048:	0085e5b3          	or	a1,a1,s0
8000104c:	f8059ae3          	bnez	a1,80000fe0 <__adddf3+0x5c4>
80001050:	00000493          	li	s1,0
80001054:	00000913          	li	s2,0
80001058:	08c0006f          	j	800010e4 <__adddf3+0x6c8>
8000105c:	00098513          	mv	a0,s3
80001060:	625010ef          	jal	80002e84 <__clzsi2>
80001064:	01850693          	add	a3,a0,24
80001068:	01f00793          	li	a5,31
8000106c:	f8d7d2e3          	bge	a5,a3,80000ff0 <__adddf3+0x5d4>
80001070:	ff850793          	add	a5,a0,-8
80001074:	00f997b3          	sll	a5,s3,a5
80001078:	f91ff06f          	j	80001008 <__adddf3+0x5ec>
8000107c:	fe168693          	add	a3,a3,-31
80001080:	00d7d533          	srl	a0,a5,a3
80001084:	02000693          	li	a3,32
80001088:	00000713          	li	a4,0
8000108c:	00d60863          	beq	a2,a3,8000109c <__adddf3+0x680>
80001090:	04000713          	li	a4,64
80001094:	40c70733          	sub	a4,a4,a2
80001098:	00e79733          	sll	a4,a5,a4
8000109c:	00e46733          	or	a4,s0,a4
800010a0:	00e03733          	snez	a4,a4
800010a4:	00e56533          	or	a0,a0,a4
800010a8:	00000793          	li	a5,0
800010ac:	f95ff06f          	j	80001040 <__adddf3+0x624>
800010b0:	ff800737          	lui	a4,0xff800
800010b4:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
800010b8:	40d484b3          	sub	s1,s1,a3
800010bc:	00e7f7b3          	and	a5,a5,a4
800010c0:	00040513          	mv	a0,s0
800010c4:	bf9ff06f          	j	80000cbc <__adddf3+0x2a0>
800010c8:	00070793          	mv	a5,a4
800010cc:	00060513          	mv	a0,a2
800010d0:	c5dff06f          	j	80000d2c <__adddf3+0x310>
800010d4:	00070793          	mv	a5,a4
800010d8:	00060513          	mv	a0,a2
800010dc:	be1ff06f          	j	80000cbc <__adddf3+0x2a0>
800010e0:	7ff00493          	li	s1,2047
800010e4:	00000793          	li	a5,0
800010e8:	00000513          	li	a0,0
800010ec:	0240006f          	j	80001110 <__adddf3+0x6f4>
800010f0:	00080493          	mv	s1,a6
800010f4:	bc9ff06f          	j	80000cbc <__adddf3+0x2a0>
800010f8:	00070793          	mv	a5,a4
800010fc:	00060513          	mv	a0,a2
80001100:	00080493          	mv	s1,a6
80001104:	e41ff06f          	j	80000f44 <__adddf3+0x528>
80001108:	00000793          	li	a5,0
8000110c:	00000913          	li	s2,0
  FP_PACK_SEMIRAW_D (r, R);
80001110:	00879713          	sll	a4,a5,0x8
80001114:	00075e63          	bgez	a4,80001130 <__adddf3+0x714>
80001118:	00148493          	add	s1,s1,1
8000111c:	7ff00713          	li	a4,2047
80001120:	08e48263          	beq	s1,a4,800011a4 <__adddf3+0x788>
80001124:	ff800737          	lui	a4,0xff800
80001128:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
8000112c:	00e7f7b3          	and	a5,a5,a4
80001130:	01d79693          	sll	a3,a5,0x1d
80001134:	00355513          	srl	a0,a0,0x3
80001138:	7ff00713          	li	a4,2047
8000113c:	00a6e6b3          	or	a3,a3,a0
80001140:	0037d793          	srl	a5,a5,0x3
80001144:	00e49e63          	bne	s1,a4,80001160 <__adddf3+0x744>
80001148:	00f6e6b3          	or	a3,a3,a5
8000114c:	00000793          	li	a5,0
80001150:	00068863          	beqz	a3,80001160 <__adddf3+0x744>
80001154:	000807b7          	lui	a5,0x80
80001158:	00000693          	li	a3,0
8000115c:	00000913          	li	s2,0
80001160:	01449713          	sll	a4,s1,0x14
80001164:	7ff00637          	lui	a2,0x7ff00
80001168:	00c79793          	sll	a5,a5,0xc
8000116c:	00c77733          	and	a4,a4,a2
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80001170:	01c12083          	lw	ra,28(sp)
80001174:	01812403          	lw	s0,24(sp)
  FP_PACK_SEMIRAW_D (r, R);
80001178:	00c7d793          	srl	a5,a5,0xc
8000117c:	00f767b3          	or	a5,a4,a5
80001180:	01f91713          	sll	a4,s2,0x1f
80001184:	00e7e633          	or	a2,a5,a4
}
80001188:	01412483          	lw	s1,20(sp)
8000118c:	01012903          	lw	s2,16(sp)
80001190:	00c12983          	lw	s3,12(sp)
80001194:	00068513          	mv	a0,a3
80001198:	00060593          	mv	a1,a2
8000119c:	02010113          	add	sp,sp,32
800011a0:	00008067          	ret
800011a4:	00000793          	li	a5,0
800011a8:	00000513          	li	a0,0
800011ac:	f85ff06f          	j	80001130 <__adddf3+0x714>

800011b0 <__divdf3>:
#include "soft-fp.h"
#include "double.h"

DFtype
__divdf3 (DFtype a, DFtype b)
{
800011b0:	fd010113          	add	sp,sp,-48
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_D (A, a);
800011b4:	0145d813          	srl	a6,a1,0x14
{
800011b8:	02912223          	sw	s1,36(sp)
800011bc:	03212023          	sw	s2,32(sp)
800011c0:	01312e23          	sw	s3,28(sp)
800011c4:	01612823          	sw	s6,16(sp)
800011c8:	01712623          	sw	s7,12(sp)
  FP_UNPACK_D (A, a);
800011cc:	00c59493          	sll	s1,a1,0xc
{
800011d0:	02112623          	sw	ra,44(sp)
800011d4:	02812423          	sw	s0,40(sp)
800011d8:	01412c23          	sw	s4,24(sp)
800011dc:	01512a23          	sw	s5,20(sp)
  FP_UNPACK_D (A, a);
800011e0:	7ff87813          	and	a6,a6,2047
{
800011e4:	00050b13          	mv	s6,a0
800011e8:	00060b93          	mv	s7,a2
800011ec:	00068913          	mv	s2,a3
  FP_UNPACK_D (A, a);
800011f0:	00c4d493          	srl	s1,s1,0xc
800011f4:	01f5d993          	srl	s3,a1,0x1f
800011f8:	0a080063          	beqz	a6,80001298 <__divdf3+0xe8>
800011fc:	7ff00793          	li	a5,2047
80001200:	10f80063          	beq	a6,a5,80001300 <__divdf3+0x150>
80001204:	01d55a13          	srl	s4,a0,0x1d
80001208:	00349493          	sll	s1,s1,0x3
8000120c:	009a6a33          	or	s4,s4,s1
80001210:	008007b7          	lui	a5,0x800
80001214:	00fa6a33          	or	s4,s4,a5
80001218:	00351413          	sll	s0,a0,0x3
8000121c:	c0180a93          	add	s5,a6,-1023
80001220:	00000b13          	li	s6,0
  FP_UNPACK_D (B, b);
80001224:	01495713          	srl	a4,s2,0x14
80001228:	00c91493          	sll	s1,s2,0xc
8000122c:	7ff77713          	and	a4,a4,2047
80001230:	00c4d493          	srl	s1,s1,0xc
80001234:	01f95913          	srl	s2,s2,0x1f
80001238:	10070263          	beqz	a4,8000133c <__divdf3+0x18c>
8000123c:	7ff00793          	li	a5,2047
80001240:	16f70663          	beq	a4,a5,800013ac <__divdf3+0x1fc>
80001244:	00349493          	sll	s1,s1,0x3
80001248:	01dbd793          	srl	a5,s7,0x1d
8000124c:	0097e7b3          	or	a5,a5,s1
80001250:	008004b7          	lui	s1,0x800
80001254:	0097e4b3          	or	s1,a5,s1
80001258:	003b9f13          	sll	t5,s7,0x3
8000125c:	c0170713          	add	a4,a4,-1023
80001260:	00000793          	li	a5,0
  FP_DIV_D (R, A, B);
80001264:	40ea8833          	sub	a6,s5,a4
80001268:	002b1713          	sll	a4,s6,0x2
8000126c:	00f76733          	or	a4,a4,a5
80001270:	fff70713          	add	a4,a4,-1
80001274:	00e00693          	li	a3,14
80001278:	0129c633          	xor	a2,s3,s2
8000127c:	16e6e463          	bltu	a3,a4,800013e4 <__divdf3+0x234>
80001280:	a00006b7          	lui	a3,0xa0000
80001284:	00271713          	sll	a4,a4,0x2
80001288:	71c68693          	add	a3,a3,1820 # a000071c <main+0x1fffa99c>
8000128c:	00d70733          	add	a4,a4,a3
80001290:	00072703          	lw	a4,0(a4)
80001294:	00070067          	jr	a4
  FP_UNPACK_D (A, a);
80001298:	00a4ea33          	or	s4,s1,a0
8000129c:	060a0e63          	beqz	s4,80001318 <__divdf3+0x168>
800012a0:	02048e63          	beqz	s1,800012dc <__divdf3+0x12c>
800012a4:	00048513          	mv	a0,s1
800012a8:	3dd010ef          	jal	80002e84 <__clzsi2>
800012ac:	ff550793          	add	a5,a0,-11
800012b0:	01d00a13          	li	s4,29
800012b4:	ff850713          	add	a4,a0,-8
800012b8:	40fa0a33          	sub	s4,s4,a5
800012bc:	00e494b3          	sll	s1,s1,a4
800012c0:	014b5a33          	srl	s4,s6,s4
800012c4:	009a6a33          	or	s4,s4,s1
800012c8:	00eb14b3          	sll	s1,s6,a4
800012cc:	c0d00813          	li	a6,-1011
800012d0:	40a80ab3          	sub	s5,a6,a0
800012d4:	00048413          	mv	s0,s1
800012d8:	f49ff06f          	j	80001220 <__divdf3+0x70>
800012dc:	3a9010ef          	jal	80002e84 <__clzsi2>
800012e0:	00050a13          	mv	s4,a0
800012e4:	015a0793          	add	a5,s4,21
800012e8:	01c00713          	li	a4,28
800012ec:	02050513          	add	a0,a0,32
800012f0:	fcf750e3          	bge	a4,a5,800012b0 <__divdf3+0x100>
800012f4:	ff8a0a13          	add	s4,s4,-8
800012f8:	014b1a33          	sll	s4,s6,s4
800012fc:	fd1ff06f          	j	800012cc <__divdf3+0x11c>
80001300:	00a4ea33          	or	s4,s1,a0
80001304:	020a1263          	bnez	s4,80001328 <__divdf3+0x178>
80001308:	00000413          	li	s0,0
8000130c:	7ff00a93          	li	s5,2047
80001310:	00200b13          	li	s6,2
80001314:	f11ff06f          	j	80001224 <__divdf3+0x74>
80001318:	00000413          	li	s0,0
8000131c:	00000a93          	li	s5,0
80001320:	00100b13          	li	s6,1
80001324:	f01ff06f          	j	80001224 <__divdf3+0x74>
80001328:	00050413          	mv	s0,a0
8000132c:	00048a13          	mv	s4,s1
80001330:	7ff00a93          	li	s5,2047
80001334:	00300b13          	li	s6,3
80001338:	eedff06f          	j	80001224 <__divdf3+0x74>
  FP_UNPACK_D (B, b);
8000133c:	0174ef33          	or	t5,s1,s7
80001340:	080f0263          	beqz	t5,800013c4 <__divdf3+0x214>
80001344:	04048063          	beqz	s1,80001384 <__divdf3+0x1d4>
80001348:	00048513          	mv	a0,s1
8000134c:	339010ef          	jal	80002e84 <__clzsi2>
80001350:	ff550713          	add	a4,a0,-11
80001354:	01d00793          	li	a5,29
80001358:	ff850693          	add	a3,a0,-8
8000135c:	40e787b3          	sub	a5,a5,a4
80001360:	00d494b3          	sll	s1,s1,a3
80001364:	00fbd7b3          	srl	a5,s7,a5
80001368:	0097e7b3          	or	a5,a5,s1
8000136c:	00db94b3          	sll	s1,s7,a3
80001370:	c0d00713          	li	a4,-1011
80001374:	00048f13          	mv	t5,s1
80001378:	40a70733          	sub	a4,a4,a0
8000137c:	00078493          	mv	s1,a5
80001380:	ee1ff06f          	j	80001260 <__divdf3+0xb0>
80001384:	000b8513          	mv	a0,s7
80001388:	2fd010ef          	jal	80002e84 <__clzsi2>
8000138c:	00050793          	mv	a5,a0
80001390:	01578713          	add	a4,a5,21 # 800015 <__stack_size+0x7fc015>
80001394:	01c00693          	li	a3,28
80001398:	02050513          	add	a0,a0,32
8000139c:	fae6dce3          	bge	a3,a4,80001354 <__divdf3+0x1a4>
800013a0:	ff878793          	add	a5,a5,-8
800013a4:	00fb97b3          	sll	a5,s7,a5
800013a8:	fc9ff06f          	j	80001370 <__divdf3+0x1c0>
800013ac:	0174ef33          	or	t5,s1,s7
800013b0:	020f1263          	bnez	t5,800013d4 <__divdf3+0x224>
800013b4:	00000493          	li	s1,0
800013b8:	7ff00713          	li	a4,2047
800013bc:	00200793          	li	a5,2
800013c0:	ea5ff06f          	j	80001264 <__divdf3+0xb4>
800013c4:	00000493          	li	s1,0
800013c8:	00000713          	li	a4,0
800013cc:	00100793          	li	a5,1
800013d0:	e95ff06f          	j	80001264 <__divdf3+0xb4>
800013d4:	000b8f13          	mv	t5,s7
800013d8:	7ff00713          	li	a4,2047
800013dc:	00300793          	li	a5,3
800013e0:	e85ff06f          	j	80001264 <__divdf3+0xb4>
  FP_DIV_D (R, A, B);
800013e4:	0144e663          	bltu	s1,s4,800013f0 <__divdf3+0x240>
800013e8:	349a1c63          	bne	s4,s1,80001740 <__divdf3+0x590>
800013ec:	35e46a63          	bltu	s0,t5,80001740 <__divdf3+0x590>
800013f0:	01fa1693          	sll	a3,s4,0x1f
800013f4:	00145793          	srl	a5,s0,0x1
800013f8:	01f41713          	sll	a4,s0,0x1f
800013fc:	001a5a13          	srl	s4,s4,0x1
80001400:	00f6e433          	or	s0,a3,a5
80001404:	00849893          	sll	a7,s1,0x8
80001408:	018f5593          	srl	a1,t5,0x18
8000140c:	0115e5b3          	or	a1,a1,a7
80001410:	0108d893          	srl	a7,a7,0x10
80001414:	031a5eb3          	divu	t4,s4,a7
80001418:	01059313          	sll	t1,a1,0x10
8000141c:	01035313          	srl	t1,t1,0x10
80001420:	01045793          	srl	a5,s0,0x10
80001424:	008f1513          	sll	a0,t5,0x8
80001428:	031a7a33          	remu	s4,s4,a7
8000142c:	000e8693          	mv	a3,t4
80001430:	03d30e33          	mul	t3,t1,t4
80001434:	010a1a13          	sll	s4,s4,0x10
80001438:	0147e7b3          	or	a5,a5,s4
8000143c:	01c7fe63          	bgeu	a5,t3,80001458 <__divdf3+0x2a8>
80001440:	00f587b3          	add	a5,a1,a5
80001444:	fffe8693          	add	a3,t4,-1
80001448:	00b7e863          	bltu	a5,a1,80001458 <__divdf3+0x2a8>
8000144c:	01c7f663          	bgeu	a5,t3,80001458 <__divdf3+0x2a8>
80001450:	ffee8693          	add	a3,t4,-2
80001454:	00b787b3          	add	a5,a5,a1
80001458:	41c787b3          	sub	a5,a5,t3
8000145c:	0317df33          	divu	t5,a5,a7
80001460:	01041413          	sll	s0,s0,0x10
80001464:	01045413          	srl	s0,s0,0x10
80001468:	0317f7b3          	remu	a5,a5,a7
8000146c:	000f0e13          	mv	t3,t5
80001470:	03e30eb3          	mul	t4,t1,t5
80001474:	01079793          	sll	a5,a5,0x10
80001478:	00f467b3          	or	a5,s0,a5
8000147c:	01d7fe63          	bgeu	a5,t4,80001498 <__divdf3+0x2e8>
80001480:	00f587b3          	add	a5,a1,a5
80001484:	ffff0e13          	add	t3,t5,-1
80001488:	00b7e863          	bltu	a5,a1,80001498 <__divdf3+0x2e8>
8000148c:	01d7f663          	bgeu	a5,t4,80001498 <__divdf3+0x2e8>
80001490:	ffef0e13          	add	t3,t5,-2
80001494:	00b787b3          	add	a5,a5,a1
80001498:	01069693          	sll	a3,a3,0x10
8000149c:	00010437          	lui	s0,0x10
800014a0:	01c6e2b3          	or	t0,a3,t3
800014a4:	fff40e13          	add	t3,s0,-1 # ffff <__stack_size+0xbfff>
800014a8:	01c2f6b3          	and	a3,t0,t3
800014ac:	0102df93          	srl	t6,t0,0x10
800014b0:	01c57e33          	and	t3,a0,t3
800014b4:	41d787b3          	sub	a5,a5,t4
800014b8:	01055e93          	srl	t4,a0,0x10
800014bc:	02de03b3          	mul	t2,t3,a3
800014c0:	03cf84b3          	mul	s1,t6,t3
800014c4:	02de86b3          	mul	a3,t4,a3
800014c8:	00968f33          	add	t5,a3,s1
800014cc:	0103d693          	srl	a3,t2,0x10
800014d0:	01e686b3          	add	a3,a3,t5
800014d4:	03df8fb3          	mul	t6,t6,t4
800014d8:	0096f463          	bgeu	a3,s1,800014e0 <__divdf3+0x330>
800014dc:	008f8fb3          	add	t6,t6,s0
800014e0:	0106df13          	srl	t5,a3,0x10
800014e4:	01ff0f33          	add	t5,t5,t6
800014e8:	00010fb7          	lui	t6,0x10
800014ec:	ffff8f93          	add	t6,t6,-1 # ffff <__stack_size+0xbfff>
800014f0:	01f6f6b3          	and	a3,a3,t6
800014f4:	01069693          	sll	a3,a3,0x10
800014f8:	01f3f3b3          	and	t2,t2,t6
800014fc:	007686b3          	add	a3,a3,t2
80001500:	01e7e863          	bltu	a5,t5,80001510 <__divdf3+0x360>
80001504:	00028493          	mv	s1,t0
80001508:	05e79863          	bne	a5,t5,80001558 <__divdf3+0x3a8>
8000150c:	04d77663          	bgeu	a4,a3,80001558 <__divdf3+0x3a8>
80001510:	00a70fb3          	add	t6,a4,a0
80001514:	00efb3b3          	sltu	t2,t6,a4
80001518:	00b38433          	add	s0,t2,a1
8000151c:	008787b3          	add	a5,a5,s0
80001520:	fff28493          	add	s1,t0,-1
80001524:	000f8713          	mv	a4,t6
80001528:	00f5e663          	bltu	a1,a5,80001534 <__divdf3+0x384>
8000152c:	02f59663          	bne	a1,a5,80001558 <__divdf3+0x3a8>
80001530:	02039463          	bnez	t2,80001558 <__divdf3+0x3a8>
80001534:	01e7e663          	bltu	a5,t5,80001540 <__divdf3+0x390>
80001538:	02ff1063          	bne	t5,a5,80001558 <__divdf3+0x3a8>
8000153c:	00dffe63          	bgeu	t6,a3,80001558 <__divdf3+0x3a8>
80001540:	01f50fb3          	add	t6,a0,t6
80001544:	000f8713          	mv	a4,t6
80001548:	00afbfb3          	sltu	t6,t6,a0
8000154c:	00bf8fb3          	add	t6,t6,a1
80001550:	ffe28493          	add	s1,t0,-2
80001554:	01f787b3          	add	a5,a5,t6
80001558:	40d706b3          	sub	a3,a4,a3
8000155c:	41e787b3          	sub	a5,a5,t5
80001560:	00d73733          	sltu	a4,a4,a3
80001564:	40e787b3          	sub	a5,a5,a4
80001568:	fff00f13          	li	t5,-1
8000156c:	12f58663          	beq	a1,a5,80001698 <__divdf3+0x4e8>
80001570:	0317dfb3          	divu	t6,a5,a7
80001574:	0106d713          	srl	a4,a3,0x10
80001578:	0317f7b3          	remu	a5,a5,a7
8000157c:	03f30f33          	mul	t5,t1,t6
80001580:	01079793          	sll	a5,a5,0x10
80001584:	00f767b3          	or	a5,a4,a5
80001588:	000f8713          	mv	a4,t6
8000158c:	01e7fe63          	bgeu	a5,t5,800015a8 <__divdf3+0x3f8>
80001590:	00f587b3          	add	a5,a1,a5
80001594:	ffff8713          	add	a4,t6,-1
80001598:	00b7e863          	bltu	a5,a1,800015a8 <__divdf3+0x3f8>
8000159c:	01e7f663          	bgeu	a5,t5,800015a8 <__divdf3+0x3f8>
800015a0:	ffef8713          	add	a4,t6,-2
800015a4:	00b787b3          	add	a5,a5,a1
800015a8:	41e787b3          	sub	a5,a5,t5
800015ac:	0317df33          	divu	t5,a5,a7
800015b0:	01069693          	sll	a3,a3,0x10
800015b4:	0106d693          	srl	a3,a3,0x10
800015b8:	0317f7b3          	remu	a5,a5,a7
800015bc:	000f0893          	mv	a7,t5
800015c0:	03e30333          	mul	t1,t1,t5
800015c4:	01079793          	sll	a5,a5,0x10
800015c8:	00f6e7b3          	or	a5,a3,a5
800015cc:	0067fe63          	bgeu	a5,t1,800015e8 <__divdf3+0x438>
800015d0:	00f587b3          	add	a5,a1,a5
800015d4:	ffff0893          	add	a7,t5,-1
800015d8:	00b7e863          	bltu	a5,a1,800015e8 <__divdf3+0x438>
800015dc:	0067f663          	bgeu	a5,t1,800015e8 <__divdf3+0x438>
800015e0:	ffef0893          	add	a7,t5,-2
800015e4:	00b787b3          	add	a5,a5,a1
800015e8:	01071693          	sll	a3,a4,0x10
800015ec:	0116e6b3          	or	a3,a3,a7
800015f0:	01069713          	sll	a4,a3,0x10
800015f4:	01075713          	srl	a4,a4,0x10
800015f8:	406787b3          	sub	a5,a5,t1
800015fc:	0106d313          	srl	t1,a3,0x10
80001600:	03c70f33          	mul	t5,a4,t3
80001604:	03c30e33          	mul	t3,t1,t3
80001608:	026e8333          	mul	t1,t4,t1
8000160c:	02ee8eb3          	mul	t4,t4,a4
80001610:	010f5713          	srl	a4,t5,0x10
80001614:	01ce8eb3          	add	t4,t4,t3
80001618:	01d70733          	add	a4,a4,t4
8000161c:	01c77663          	bgeu	a4,t3,80001628 <__divdf3+0x478>
80001620:	000108b7          	lui	a7,0x10
80001624:	01130333          	add	t1,t1,a7
80001628:	01075893          	srl	a7,a4,0x10
8000162c:	006888b3          	add	a7,a7,t1
80001630:	00010337          	lui	t1,0x10
80001634:	fff30313          	add	t1,t1,-1 # ffff <__stack_size+0xbfff>
80001638:	00677733          	and	a4,a4,t1
8000163c:	01071713          	sll	a4,a4,0x10
80001640:	006f7f33          	and	t5,t5,t1
80001644:	01e70733          	add	a4,a4,t5
80001648:	0117e863          	bltu	a5,a7,80001658 <__divdf3+0x4a8>
8000164c:	23179c63          	bne	a5,a7,80001884 <__divdf3+0x6d4>
80001650:	00068f13          	mv	t5,a3
80001654:	04070263          	beqz	a4,80001698 <__divdf3+0x4e8>
80001658:	00f587b3          	add	a5,a1,a5
8000165c:	fff68f13          	add	t5,a3,-1
80001660:	00078313          	mv	t1,a5
80001664:	02b7e463          	bltu	a5,a1,8000168c <__divdf3+0x4dc>
80001668:	0117e663          	bltu	a5,a7,80001674 <__divdf3+0x4c4>
8000166c:	21179a63          	bne	a5,a7,80001880 <__divdf3+0x6d0>
80001670:	02e57063          	bgeu	a0,a4,80001690 <__divdf3+0x4e0>
80001674:	ffe68f13          	add	t5,a3,-2
80001678:	00151693          	sll	a3,a0,0x1
8000167c:	00a6b333          	sltu	t1,a3,a0
80001680:	00b30333          	add	t1,t1,a1
80001684:	00678333          	add	t1,a5,t1
80001688:	00068513          	mv	a0,a3
8000168c:	01131463          	bne	t1,a7,80001694 <__divdf3+0x4e4>
80001690:	00a70463          	beq	a4,a0,80001698 <__divdf3+0x4e8>
80001694:	001f6f13          	or	t5,t5,1
  FP_PACK_D (r, R);
80001698:	3ff80713          	add	a4,a6,1023
8000169c:	10e05263          	blez	a4,800017a0 <__divdf3+0x5f0>
800016a0:	007f7793          	and	a5,t5,7
800016a4:	02078063          	beqz	a5,800016c4 <__divdf3+0x514>
800016a8:	00ff7793          	and	a5,t5,15
800016ac:	00400693          	li	a3,4
800016b0:	00d78a63          	beq	a5,a3,800016c4 <__divdf3+0x514>
800016b4:	004f0793          	add	a5,t5,4
800016b8:	01e7b6b3          	sltu	a3,a5,t5
800016bc:	00d484b3          	add	s1,s1,a3
800016c0:	00078f13          	mv	t5,a5
800016c4:	00749793          	sll	a5,s1,0x7
800016c8:	0007da63          	bgez	a5,800016dc <__divdf3+0x52c>
800016cc:	ff0007b7          	lui	a5,0xff000
800016d0:	fff78793          	add	a5,a5,-1 # feffffff <__stack_base+0x3effffff>
800016d4:	00f4f4b3          	and	s1,s1,a5
800016d8:	40080713          	add	a4,a6,1024
800016dc:	7fe00793          	li	a5,2046
800016e0:	08e7ca63          	blt	a5,a4,80001774 <__divdf3+0x5c4>
800016e4:	003f5f13          	srl	t5,t5,0x3
800016e8:	01d49793          	sll	a5,s1,0x1d
800016ec:	01e7ef33          	or	t5,a5,t5
800016f0:	0034d513          	srl	a0,s1,0x3
800016f4:	00c51513          	sll	a0,a0,0xc
  FP_HANDLE_EXCEPTIONS;

  return r;
}
800016f8:	02c12083          	lw	ra,44(sp)
800016fc:	02812403          	lw	s0,40(sp)
  FP_PACK_D (r, R);
80001700:	00c55513          	srl	a0,a0,0xc
80001704:	01471713          	sll	a4,a4,0x14
80001708:	00a76733          	or	a4,a4,a0
8000170c:	01f61613          	sll	a2,a2,0x1f
80001710:	00c767b3          	or	a5,a4,a2
}
80001714:	02412483          	lw	s1,36(sp)
80001718:	02012903          	lw	s2,32(sp)
8000171c:	01c12983          	lw	s3,28(sp)
80001720:	01812a03          	lw	s4,24(sp)
80001724:	01412a83          	lw	s5,20(sp)
80001728:	01012b03          	lw	s6,16(sp)
8000172c:	00c12b83          	lw	s7,12(sp)
80001730:	000f0513          	mv	a0,t5
80001734:	00078593          	mv	a1,a5
80001738:	03010113          	add	sp,sp,48
8000173c:	00008067          	ret
  FP_DIV_D (R, A, B);
80001740:	fff80813          	add	a6,a6,-1
80001744:	00000713          	li	a4,0
80001748:	cbdff06f          	j	80001404 <__divdf3+0x254>
  FP_UNPACK_D (A, a);
8000174c:	00098613          	mv	a2,s3
  FP_DIV_D (R, A, B);
80001750:	000a0493          	mv	s1,s4
80001754:	00040f13          	mv	t5,s0
80001758:	000b0793          	mv	a5,s6
  FP_PACK_D (r, R);
8000175c:	00300713          	li	a4,3
80001760:	0ee78863          	beq	a5,a4,80001850 <__divdf3+0x6a0>
80001764:	00100713          	li	a4,1
80001768:	0ee78e63          	beq	a5,a4,80001864 <__divdf3+0x6b4>
8000176c:	00200713          	li	a4,2
80001770:	f2e794e3          	bne	a5,a4,80001698 <__divdf3+0x4e8>
80001774:	00000513          	li	a0,0
80001778:	00000f13          	li	t5,0
8000177c:	7ff00713          	li	a4,2047
80001780:	f75ff06f          	j	800016f4 <__divdf3+0x544>
  FP_UNPACK_D (B, b);
80001784:	00090613          	mv	a2,s2
  FP_DIV_D (R, A, B);
80001788:	fd5ff06f          	j	8000175c <__divdf3+0x5ac>
8000178c:	000804b7          	lui	s1,0x80
80001790:	00000f13          	li	t5,0
80001794:	00000613          	li	a2,0
80001798:	00300793          	li	a5,3
8000179c:	fc1ff06f          	j	8000175c <__divdf3+0x5ac>
  FP_PACK_D (r, R);
800017a0:	00100513          	li	a0,1
800017a4:	40e50533          	sub	a0,a0,a4
800017a8:	03800793          	li	a5,56
800017ac:	0aa7cc63          	blt	a5,a0,80001864 <__divdf3+0x6b4>
800017b0:	01f00793          	li	a5,31
800017b4:	06a7c463          	blt	a5,a0,8000181c <__divdf3+0x66c>
800017b8:	41e80813          	add	a6,a6,1054
800017bc:	010497b3          	sll	a5,s1,a6
800017c0:	00af5733          	srl	a4,t5,a0
800017c4:	010f1833          	sll	a6,t5,a6
800017c8:	00e7e7b3          	or	a5,a5,a4
800017cc:	01003833          	snez	a6,a6
800017d0:	0107e7b3          	or	a5,a5,a6
800017d4:	00a4d533          	srl	a0,s1,a0
800017d8:	0077f713          	and	a4,a5,7
800017dc:	02070063          	beqz	a4,800017fc <__divdf3+0x64c>
800017e0:	00f7f713          	and	a4,a5,15
800017e4:	00400693          	li	a3,4
800017e8:	00d70a63          	beq	a4,a3,800017fc <__divdf3+0x64c>
800017ec:	00478713          	add	a4,a5,4
800017f0:	00f736b3          	sltu	a3,a4,a5
800017f4:	00d50533          	add	a0,a0,a3
800017f8:	00070793          	mv	a5,a4
800017fc:	00851713          	sll	a4,a0,0x8
80001800:	06074863          	bltz	a4,80001870 <__divdf3+0x6c0>
80001804:	01d51f13          	sll	t5,a0,0x1d
80001808:	0037d793          	srl	a5,a5,0x3
8000180c:	00ff6f33          	or	t5,t5,a5
80001810:	00355513          	srl	a0,a0,0x3
80001814:	00000713          	li	a4,0
80001818:	eddff06f          	j	800016f4 <__divdf3+0x544>
8000181c:	fe100793          	li	a5,-31
80001820:	40e787b3          	sub	a5,a5,a4
80001824:	02000693          	li	a3,32
80001828:	00f4d7b3          	srl	a5,s1,a5
8000182c:	00000713          	li	a4,0
80001830:	00d50663          	beq	a0,a3,8000183c <__divdf3+0x68c>
80001834:	43e80713          	add	a4,a6,1086
80001838:	00e49733          	sll	a4,s1,a4
8000183c:	01e76733          	or	a4,a4,t5
80001840:	00e03733          	snez	a4,a4
80001844:	00e7e7b3          	or	a5,a5,a4
80001848:	00000513          	li	a0,0
8000184c:	f8dff06f          	j	800017d8 <__divdf3+0x628>
80001850:	00080537          	lui	a0,0x80
80001854:	00000f13          	li	t5,0
80001858:	7ff00713          	li	a4,2047
8000185c:	00000613          	li	a2,0
80001860:	e95ff06f          	j	800016f4 <__divdf3+0x544>
80001864:	00000513          	li	a0,0
80001868:	00000f13          	li	t5,0
8000186c:	fa9ff06f          	j	80001814 <__divdf3+0x664>
80001870:	00000513          	li	a0,0
80001874:	00000f13          	li	t5,0
80001878:	00100713          	li	a4,1
8000187c:	e79ff06f          	j	800016f4 <__divdf3+0x544>
  FP_DIV_D (R, A, B);
80001880:	000f0693          	mv	a3,t5
80001884:	00068f13          	mv	t5,a3
80001888:	e0dff06f          	j	80001694 <__divdf3+0x4e4>

8000188c <__eqdf2>:
  FP_DECL_D (A);
  FP_DECL_D (B);
  CMPtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
8000188c:	0145d713          	srl	a4,a1,0x14
80001890:	001007b7          	lui	a5,0x100
80001894:	fff78793          	add	a5,a5,-1 # fffff <__stack_size+0xfbfff>
  FP_UNPACK_RAW_D (B, b);
80001898:	0146d813          	srl	a6,a3,0x14
{
8000189c:	00050313          	mv	t1,a0
800018a0:	00050e93          	mv	t4,a0
  FP_UNPACK_RAW_D (A, a);
800018a4:	7ff77713          	and	a4,a4,2047
  FP_CMP_EQ_D (r, A, B, 1);
800018a8:	7ff00513          	li	a0,2047
  FP_UNPACK_RAW_D (A, a);
800018ac:	00b7f8b3          	and	a7,a5,a1
800018b0:	00060f13          	mv	t5,a2
  FP_UNPACK_RAW_D (B, b);
800018b4:	00d7f7b3          	and	a5,a5,a3
  FP_UNPACK_RAW_D (A, a);
800018b8:	01f5d593          	srl	a1,a1,0x1f
  FP_UNPACK_RAW_D (B, b);
800018bc:	7ff87813          	and	a6,a6,2047
800018c0:	01f6d693          	srl	a3,a3,0x1f
  FP_CMP_EQ_D (r, A, B, 1);
800018c4:	00a71c63          	bne	a4,a0,800018dc <__eqdf2+0x50>
800018c8:	0068ee33          	or	t3,a7,t1
800018cc:	00100513          	li	a0,1
800018d0:	000e1463          	bnez	t3,800018d8 <__eqdf2+0x4c>
800018d4:	00e80663          	beq	a6,a4,800018e0 <__eqdf2+0x54>
  FP_HANDLE_EXCEPTIONS;

  return r;
}
800018d8:	00008067          	ret
  FP_CMP_EQ_D (r, A, B, 1);
800018dc:	00a81863          	bne	a6,a0,800018ec <__eqdf2+0x60>
800018e0:	00c7e633          	or	a2,a5,a2
800018e4:	00100513          	li	a0,1
800018e8:	fe0618e3          	bnez	a2,800018d8 <__eqdf2+0x4c>
800018ec:	00100513          	li	a0,1
800018f0:	ff0714e3          	bne	a4,a6,800018d8 <__eqdf2+0x4c>
800018f4:	fef892e3          	bne	a7,a5,800018d8 <__eqdf2+0x4c>
800018f8:	ffee90e3          	bne	t4,t5,800018d8 <__eqdf2+0x4c>
800018fc:	00d58a63          	beq	a1,a3,80001910 <__eqdf2+0x84>
80001900:	fc071ce3          	bnez	a4,800018d8 <__eqdf2+0x4c>
80001904:	0068e8b3          	or	a7,a7,t1
80001908:	01103533          	snez	a0,a7
8000190c:	00008067          	ret
80001910:	00000513          	li	a0,0
80001914:	00008067          	ret

80001918 <__gedf2>:
  FP_DECL_D (B);
  CMPtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
  FP_UNPACK_RAW_D (B, b);
80001918:	0146d793          	srl	a5,a3,0x14
  FP_UNPACK_RAW_D (A, a);
8000191c:	0145d893          	srl	a7,a1,0x14
80001920:	00100737          	lui	a4,0x100
80001924:	fff70713          	add	a4,a4,-1 # fffff <__stack_size+0xfbfff>
{
80001928:	00050813          	mv	a6,a0
8000192c:	00050e13          	mv	t3,a0
  FP_UNPACK_RAW_D (A, a);
80001930:	7ff8f893          	and	a7,a7,2047
  FP_UNPACK_RAW_D (B, b);
80001934:	7ff7f513          	and	a0,a5,2047
  FP_CMP_D (r, A, B, -2, 2);
80001938:	7ff00793          	li	a5,2047
  FP_UNPACK_RAW_D (A, a);
8000193c:	00b77333          	and	t1,a4,a1
80001940:	00060e93          	mv	t4,a2
  FP_UNPACK_RAW_D (B, b);
80001944:	00d77733          	and	a4,a4,a3
  FP_UNPACK_RAW_D (A, a);
80001948:	01f5d593          	srl	a1,a1,0x1f
  FP_UNPACK_RAW_D (B, b);
8000194c:	01f6d693          	srl	a3,a3,0x1f
  FP_CMP_D (r, A, B, -2, 2);
80001950:	00f89663          	bne	a7,a5,8000195c <__gedf2+0x44>
80001954:	010367b3          	or	a5,t1,a6
80001958:	06079c63          	bnez	a5,800019d0 <__gedf2+0xb8>
8000195c:	7ff00793          	li	a5,2047
80001960:	00f51663          	bne	a0,a5,8000196c <__gedf2+0x54>
80001964:	00c767b3          	or	a5,a4,a2
80001968:	06079463          	bnez	a5,800019d0 <__gedf2+0xb8>
8000196c:	00000793          	li	a5,0
80001970:	00089663          	bnez	a7,8000197c <__gedf2+0x64>
80001974:	01036833          	or	a6,t1,a6
80001978:	00183793          	seqz	a5,a6
8000197c:	04051e63          	bnez	a0,800019d8 <__gedf2+0xc0>
80001980:	00c76633          	or	a2,a4,a2
80001984:	00078c63          	beqz	a5,8000199c <__gedf2+0x84>
80001988:	02060063          	beqz	a2,800019a8 <__gedf2+0x90>
8000198c:	00100513          	li	a0,1
80001990:	00069c63          	bnez	a3,800019a8 <__gedf2+0x90>
80001994:	fff00513          	li	a0,-1
80001998:	00008067          	ret
8000199c:	04061063          	bnez	a2,800019dc <__gedf2+0xc4>
800019a0:	fff00513          	li	a0,-1
800019a4:	04058463          	beqz	a1,800019ec <__gedf2+0xd4>
  FP_HANDLE_EXCEPTIONS;

  return r;
}
800019a8:	00008067          	ret
  FP_CMP_D (r, A, B, -2, 2);
800019ac:	fea8c0e3          	blt	a7,a0,8000198c <__gedf2+0x74>
800019b0:	fe6768e3          	bltu	a4,t1,800019a0 <__gedf2+0x88>
800019b4:	00e31863          	bne	t1,a4,800019c4 <__gedf2+0xac>
800019b8:	ffcee4e3          	bltu	t4,t3,800019a0 <__gedf2+0x88>
800019bc:	00000513          	li	a0,0
800019c0:	ffde74e3          	bgeu	t3,t4,800019a8 <__gedf2+0x90>
800019c4:	00100513          	li	a0,1
800019c8:	fe0590e3          	bnez	a1,800019a8 <__gedf2+0x90>
800019cc:	fc9ff06f          	j	80001994 <__gedf2+0x7c>
800019d0:	ffe00513          	li	a0,-2
800019d4:	00008067          	ret
800019d8:	fa079ae3          	bnez	a5,8000198c <__gedf2+0x74>
800019dc:	fcb692e3          	bne	a3,a1,800019a0 <__gedf2+0x88>
800019e0:	fd1556e3          	bge	a0,a7,800019ac <__gedf2+0x94>
800019e4:	fff00513          	li	a0,-1
800019e8:	fc0690e3          	bnez	a3,800019a8 <__gedf2+0x90>
800019ec:	00100513          	li	a0,1
800019f0:	00008067          	ret

800019f4 <__ledf2>:
  FP_DECL_D (B);
  CMPtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
  FP_UNPACK_RAW_D (B, b);
800019f4:	0146d793          	srl	a5,a3,0x14
  FP_UNPACK_RAW_D (A, a);
800019f8:	0145d893          	srl	a7,a1,0x14
800019fc:	00100737          	lui	a4,0x100
80001a00:	fff70713          	add	a4,a4,-1 # fffff <__stack_size+0xfbfff>
{
80001a04:	00050813          	mv	a6,a0
80001a08:	00050e13          	mv	t3,a0
  FP_UNPACK_RAW_D (A, a);
80001a0c:	7ff8f893          	and	a7,a7,2047
  FP_UNPACK_RAW_D (B, b);
80001a10:	7ff7f513          	and	a0,a5,2047
  FP_CMP_D (r, A, B, 2, 2);
80001a14:	7ff00793          	li	a5,2047
  FP_UNPACK_RAW_D (A, a);
80001a18:	00b77333          	and	t1,a4,a1
80001a1c:	00060e93          	mv	t4,a2
  FP_UNPACK_RAW_D (B, b);
80001a20:	00d77733          	and	a4,a4,a3
  FP_UNPACK_RAW_D (A, a);
80001a24:	01f5d593          	srl	a1,a1,0x1f
  FP_UNPACK_RAW_D (B, b);
80001a28:	01f6d693          	srl	a3,a3,0x1f
  FP_CMP_D (r, A, B, 2, 2);
80001a2c:	00f89663          	bne	a7,a5,80001a38 <__ledf2+0x44>
80001a30:	010367b3          	or	a5,t1,a6
80001a34:	06079c63          	bnez	a5,80001aac <__ledf2+0xb8>
80001a38:	7ff00793          	li	a5,2047
80001a3c:	00f51663          	bne	a0,a5,80001a48 <__ledf2+0x54>
80001a40:	00c767b3          	or	a5,a4,a2
80001a44:	06079463          	bnez	a5,80001aac <__ledf2+0xb8>
80001a48:	00000793          	li	a5,0
80001a4c:	00089663          	bnez	a7,80001a58 <__ledf2+0x64>
80001a50:	01036833          	or	a6,t1,a6
80001a54:	00183793          	seqz	a5,a6
80001a58:	04051e63          	bnez	a0,80001ab4 <__ledf2+0xc0>
80001a5c:	00c76633          	or	a2,a4,a2
80001a60:	00078c63          	beqz	a5,80001a78 <__ledf2+0x84>
80001a64:	02060063          	beqz	a2,80001a84 <__ledf2+0x90>
80001a68:	00100513          	li	a0,1
80001a6c:	00069c63          	bnez	a3,80001a84 <__ledf2+0x90>
80001a70:	fff00513          	li	a0,-1
80001a74:	00008067          	ret
80001a78:	04061063          	bnez	a2,80001ab8 <__ledf2+0xc4>
80001a7c:	fff00513          	li	a0,-1
80001a80:	04058463          	beqz	a1,80001ac8 <__ledf2+0xd4>
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80001a84:	00008067          	ret
  FP_CMP_D (r, A, B, 2, 2);
80001a88:	fea8c0e3          	blt	a7,a0,80001a68 <__ledf2+0x74>
80001a8c:	fe6768e3          	bltu	a4,t1,80001a7c <__ledf2+0x88>
80001a90:	00e31863          	bne	t1,a4,80001aa0 <__ledf2+0xac>
80001a94:	ffcee4e3          	bltu	t4,t3,80001a7c <__ledf2+0x88>
80001a98:	00000513          	li	a0,0
80001a9c:	ffde74e3          	bgeu	t3,t4,80001a84 <__ledf2+0x90>
80001aa0:	00100513          	li	a0,1
80001aa4:	fe0590e3          	bnez	a1,80001a84 <__ledf2+0x90>
80001aa8:	fc9ff06f          	j	80001a70 <__ledf2+0x7c>
80001aac:	00200513          	li	a0,2
80001ab0:	00008067          	ret
80001ab4:	fa079ae3          	bnez	a5,80001a68 <__ledf2+0x74>
80001ab8:	fcb692e3          	bne	a3,a1,80001a7c <__ledf2+0x88>
80001abc:	fd1556e3          	bge	a0,a7,80001a88 <__ledf2+0x94>
80001ac0:	fff00513          	li	a0,-1
80001ac4:	fc0690e3          	bnez	a3,80001a84 <__ledf2+0x90>
80001ac8:	00100513          	li	a0,1
80001acc:	00008067          	ret

80001ad0 <__muldf3>:
#include "soft-fp.h"
#include "double.h"

DFtype
__muldf3 (DFtype a, DFtype b)
{
80001ad0:	fd010113          	add	sp,sp,-48
80001ad4:	01512a23          	sw	s5,20(sp)
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_D (A, a);
80001ad8:	0145da93          	srl	s5,a1,0x14
{
80001adc:	02812423          	sw	s0,40(sp)
80001ae0:	02912223          	sw	s1,36(sp)
80001ae4:	01312e23          	sw	s3,28(sp)
80001ae8:	01412c23          	sw	s4,24(sp)
80001aec:	01612823          	sw	s6,16(sp)
  FP_UNPACK_D (A, a);
80001af0:	00c59493          	sll	s1,a1,0xc
{
80001af4:	02112623          	sw	ra,44(sp)
80001af8:	03212023          	sw	s2,32(sp)
80001afc:	01712623          	sw	s7,12(sp)
  FP_UNPACK_D (A, a);
80001b00:	7ffafa93          	and	s5,s5,2047
{
80001b04:	00050413          	mv	s0,a0
80001b08:	00060b13          	mv	s6,a2
80001b0c:	00068993          	mv	s3,a3
  FP_UNPACK_D (A, a);
80001b10:	00c4d493          	srl	s1,s1,0xc
80001b14:	01f5da13          	srl	s4,a1,0x1f
80001b18:	240a8e63          	beqz	s5,80001d74 <__muldf3+0x2a4>
80001b1c:	7ff00793          	li	a5,2047
80001b20:	2cfa8063          	beq	s5,a5,80001de0 <__muldf3+0x310>
80001b24:	00349493          	sll	s1,s1,0x3
80001b28:	01d55793          	srl	a5,a0,0x1d
80001b2c:	0097e7b3          	or	a5,a5,s1
80001b30:	008004b7          	lui	s1,0x800
80001b34:	0097e4b3          	or	s1,a5,s1
80001b38:	00351913          	sll	s2,a0,0x3
80001b3c:	c01a8a93          	add	s5,s5,-1023
80001b40:	00000b93          	li	s7,0
  FP_UNPACK_D (B, b);
80001b44:	0149d713          	srl	a4,s3,0x14
80001b48:	00c99413          	sll	s0,s3,0xc
80001b4c:	7ff77713          	and	a4,a4,2047
80001b50:	00c45413          	srl	s0,s0,0xc
80001b54:	01f9d993          	srl	s3,s3,0x1f
80001b58:	2c070063          	beqz	a4,80001e18 <__muldf3+0x348>
80001b5c:	7ff00793          	li	a5,2047
80001b60:	32f70463          	beq	a4,a5,80001e88 <__muldf3+0x3b8>
80001b64:	00341413          	sll	s0,s0,0x3
80001b68:	01db5793          	srl	a5,s6,0x1d
80001b6c:	0087e7b3          	or	a5,a5,s0
80001b70:	00800437          	lui	s0,0x800
80001b74:	0087e433          	or	s0,a5,s0
80001b78:	c0170693          	add	a3,a4,-1023
80001b7c:	003b1793          	sll	a5,s6,0x3
80001b80:	00000713          	li	a4,0
  FP_MUL_D (R, A, B);
80001b84:	00da8ab3          	add	s5,s5,a3
80001b88:	002b9693          	sll	a3,s7,0x2
80001b8c:	00e6e6b3          	or	a3,a3,a4
80001b90:	00a00613          	li	a2,10
80001b94:	001a8513          	add	a0,s5,1
80001b98:	40d64663          	blt	a2,a3,80001fa4 <__muldf3+0x4d4>
80001b9c:	00200613          	li	a2,2
80001ba0:	013a45b3          	xor	a1,s4,s3
80001ba4:	30d64e63          	blt	a2,a3,80001ec0 <__muldf3+0x3f0>
80001ba8:	fff68693          	add	a3,a3,-1
80001bac:	00100613          	li	a2,1
80001bb0:	32d67a63          	bgeu	a2,a3,80001ee4 <__muldf3+0x414>
80001bb4:	00010337          	lui	t1,0x10
80001bb8:	fff30e13          	add	t3,t1,-1 # ffff <__stack_size+0xbfff>
80001bbc:	01095713          	srl	a4,s2,0x10
80001bc0:	0107d893          	srl	a7,a5,0x10
80001bc4:	01c97933          	and	s2,s2,t3
80001bc8:	01c7ff33          	and	t5,a5,t3
80001bcc:	03e907b3          	mul	a5,s2,t5
80001bd0:	03e70eb3          	mul	t4,a4,t5
80001bd4:	0107d813          	srl	a6,a5,0x10
80001bd8:	03288633          	mul	a2,a7,s2
80001bdc:	01d60633          	add	a2,a2,t4
80001be0:	00c80833          	add	a6,a6,a2
80001be4:	031706b3          	mul	a3,a4,a7
80001be8:	01d87463          	bgeu	a6,t4,80001bf0 <__muldf3+0x120>
80001bec:	006686b3          	add	a3,a3,t1
80001bf0:	01085293          	srl	t0,a6,0x10
80001bf4:	01c87833          	and	a6,a6,t3
80001bf8:	01c7f7b3          	and	a5,a5,t3
80001bfc:	01045613          	srl	a2,s0,0x10
80001c00:	01c47e33          	and	t3,s0,t3
80001c04:	01081813          	sll	a6,a6,0x10
80001c08:	00f80833          	add	a6,a6,a5
80001c0c:	03c90eb3          	mul	t4,s2,t3
80001c10:	03c707b3          	mul	a5,a4,t3
80001c14:	03260933          	mul	s2,a2,s2
80001c18:	02c70333          	mul	t1,a4,a2
80001c1c:	00f90933          	add	s2,s2,a5
80001c20:	010ed713          	srl	a4,t4,0x10
80001c24:	01270733          	add	a4,a4,s2
80001c28:	00f77663          	bgeu	a4,a5,80001c34 <__muldf3+0x164>
80001c2c:	000107b7          	lui	a5,0x10
80001c30:	00f30333          	add	t1,t1,a5
80001c34:	00010437          	lui	s0,0x10
80001c38:	01075793          	srl	a5,a4,0x10
80001c3c:	fff40f93          	add	t6,s0,-1 # ffff <__stack_size+0xbfff>
80001c40:	00678333          	add	t1,a5,t1
80001c44:	01f777b3          	and	a5,a4,t6
80001c48:	01fefeb3          	and	t4,t4,t6
80001c4c:	01079793          	sll	a5,a5,0x10
80001c50:	01f4ffb3          	and	t6,s1,t6
80001c54:	01d787b3          	add	a5,a5,t4
80001c58:	0104de93          	srl	t4,s1,0x10
80001c5c:	03ff03b3          	mul	t2,t5,t6
80001c60:	00f282b3          	add	t0,t0,a5
80001c64:	03ee8f33          	mul	t5,t4,t5
80001c68:	0103d713          	srl	a4,t2,0x10
80001c6c:	03d884b3          	mul	s1,a7,t4
80001c70:	03f888b3          	mul	a7,a7,t6
80001c74:	01e888b3          	add	a7,a7,t5
80001c78:	01170733          	add	a4,a4,a7
80001c7c:	01e77463          	bgeu	a4,t5,80001c84 <__muldf3+0x1b4>
80001c80:	008484b3          	add	s1,s1,s0
80001c84:	01075f13          	srl	t5,a4,0x10
80001c88:	009f0f33          	add	t5,t5,s1
80001c8c:	000104b7          	lui	s1,0x10
80001c90:	fff48413          	add	s0,s1,-1 # ffff <__stack_size+0xbfff>
80001c94:	00877733          	and	a4,a4,s0
80001c98:	0083f3b3          	and	t2,t2,s0
80001c9c:	01071713          	sll	a4,a4,0x10
80001ca0:	007708b3          	add	a7,a4,t2
80001ca4:	03fe03b3          	mul	t2,t3,t6
80001ca8:	03ce8e33          	mul	t3,t4,t3
80001cac:	03d60eb3          	mul	t4,a2,t4
80001cb0:	03f60633          	mul	a2,a2,t6
80001cb4:	0103df93          	srl	t6,t2,0x10
80001cb8:	01c60633          	add	a2,a2,t3
80001cbc:	00cf8fb3          	add	t6,t6,a2
80001cc0:	01cff463          	bgeu	t6,t3,80001cc8 <__muldf3+0x1f8>
80001cc4:	009e8eb3          	add	t4,t4,s1
80001cc8:	008ff733          	and	a4,t6,s0
80001ccc:	0083f3b3          	and	t2,t2,s0
80001cd0:	01071713          	sll	a4,a4,0x10
80001cd4:	005686b3          	add	a3,a3,t0
80001cd8:	00770733          	add	a4,a4,t2
80001cdc:	00670333          	add	t1,a4,t1
80001ce0:	00f6b7b3          	sltu	a5,a3,a5
80001ce4:	00f307b3          	add	a5,t1,a5
80001ce8:	00e33633          	sltu	a2,t1,a4
80001cec:	011688b3          	add	a7,a3,a7
80001cf0:	0067b333          	sltu	t1,a5,t1
80001cf4:	00666633          	or	a2,a2,t1
80001cf8:	00d8b6b3          	sltu	a3,a7,a3
80001cfc:	01e78333          	add	t1,a5,t5
80001d00:	00d306b3          	add	a3,t1,a3
80001d04:	00f33733          	sltu	a4,t1,a5
80001d08:	010fdf93          	srl	t6,t6,0x10
80001d0c:	0066b333          	sltu	t1,a3,t1
80001d10:	00989793          	sll	a5,a7,0x9
80001d14:	01f60633          	add	a2,a2,t6
80001d18:	00676733          	or	a4,a4,t1
80001d1c:	00c70733          	add	a4,a4,a2
80001d20:	0107e7b3          	or	a5,a5,a6
80001d24:	01d70733          	add	a4,a4,t4
80001d28:	00f037b3          	snez	a5,a5
80001d2c:	0178d893          	srl	a7,a7,0x17
80001d30:	00971713          	sll	a4,a4,0x9
80001d34:	0176d413          	srl	s0,a3,0x17
80001d38:	0117e7b3          	or	a5,a5,a7
80001d3c:	00969693          	sll	a3,a3,0x9
80001d40:	00d7e7b3          	or	a5,a5,a3
80001d44:	00771693          	sll	a3,a4,0x7
80001d48:	00876433          	or	s0,a4,s0
80001d4c:	0206d063          	bgez	a3,80001d6c <__muldf3+0x29c>
80001d50:	0017d713          	srl	a4,a5,0x1
80001d54:	0017f793          	and	a5,a5,1
80001d58:	00f76733          	or	a4,a4,a5
80001d5c:	01f41793          	sll	a5,s0,0x1f
80001d60:	00f767b3          	or	a5,a4,a5
80001d64:	00145413          	srl	s0,s0,0x1
80001d68:	00050a93          	mv	s5,a0
80001d6c:	000a8513          	mv	a0,s5
80001d70:	18c0006f          	j	80001efc <__muldf3+0x42c>
  FP_UNPACK_D (A, a);
80001d74:	00a4e933          	or	s2,s1,a0
80001d78:	08090063          	beqz	s2,80001df8 <__muldf3+0x328>
80001d7c:	04048063          	beqz	s1,80001dbc <__muldf3+0x2ec>
80001d80:	00048513          	mv	a0,s1
80001d84:	100010ef          	jal	80002e84 <__clzsi2>
80001d88:	ff550713          	add	a4,a0,-11 # 7fff5 <__stack_size+0x7bff5>
80001d8c:	01d00793          	li	a5,29
80001d90:	ff850693          	add	a3,a0,-8
80001d94:	40e787b3          	sub	a5,a5,a4
80001d98:	00d494b3          	sll	s1,s1,a3
80001d9c:	00f457b3          	srl	a5,s0,a5
80001da0:	0097e7b3          	or	a5,a5,s1
80001da4:	00d414b3          	sll	s1,s0,a3
80001da8:	c0d00a93          	li	s5,-1011
80001dac:	00048913          	mv	s2,s1
80001db0:	40aa8ab3          	sub	s5,s5,a0
80001db4:	00078493          	mv	s1,a5
80001db8:	d89ff06f          	j	80001b40 <__muldf3+0x70>
80001dbc:	0c8010ef          	jal	80002e84 <__clzsi2>
80001dc0:	00050793          	mv	a5,a0
80001dc4:	01578713          	add	a4,a5,21 # 10015 <__stack_size+0xc015>
80001dc8:	01c00693          	li	a3,28
80001dcc:	02050513          	add	a0,a0,32
80001dd0:	fae6dee3          	bge	a3,a4,80001d8c <__muldf3+0x2bc>
80001dd4:	ff878793          	add	a5,a5,-8
80001dd8:	00f417b3          	sll	a5,s0,a5
80001ddc:	fcdff06f          	j	80001da8 <__muldf3+0x2d8>
80001de0:	00a4e933          	or	s2,s1,a0
80001de4:	02091263          	bnez	s2,80001e08 <__muldf3+0x338>
80001de8:	00000493          	li	s1,0
80001dec:	7ff00a93          	li	s5,2047
80001df0:	00200b93          	li	s7,2
80001df4:	d51ff06f          	j	80001b44 <__muldf3+0x74>
80001df8:	00000493          	li	s1,0
80001dfc:	00000a93          	li	s5,0
80001e00:	00100b93          	li	s7,1
80001e04:	d41ff06f          	j	80001b44 <__muldf3+0x74>
80001e08:	00050913          	mv	s2,a0
80001e0c:	7ff00a93          	li	s5,2047
80001e10:	00300b93          	li	s7,3
80001e14:	d31ff06f          	j	80001b44 <__muldf3+0x74>
  FP_UNPACK_D (B, b);
80001e18:	016467b3          	or	a5,s0,s6
80001e1c:	08078263          	beqz	a5,80001ea0 <__muldf3+0x3d0>
80001e20:	04040063          	beqz	s0,80001e60 <__muldf3+0x390>
80001e24:	00040513          	mv	a0,s0
80001e28:	05c010ef          	jal	80002e84 <__clzsi2>
80001e2c:	ff550693          	add	a3,a0,-11
80001e30:	01d00713          	li	a4,29
80001e34:	ff850793          	add	a5,a0,-8
80001e38:	40d70733          	sub	a4,a4,a3
80001e3c:	00f41433          	sll	s0,s0,a5
80001e40:	00eb5733          	srl	a4,s6,a4
80001e44:	00876733          	or	a4,a4,s0
80001e48:	00fb1433          	sll	s0,s6,a5
80001e4c:	c0d00693          	li	a3,-1011
80001e50:	00040793          	mv	a5,s0
80001e54:	40a686b3          	sub	a3,a3,a0
80001e58:	00070413          	mv	s0,a4
80001e5c:	d25ff06f          	j	80001b80 <__muldf3+0xb0>
80001e60:	000b0513          	mv	a0,s6
80001e64:	020010ef          	jal	80002e84 <__clzsi2>
80001e68:	00050793          	mv	a5,a0
80001e6c:	01578693          	add	a3,a5,21
80001e70:	01c00713          	li	a4,28
80001e74:	02050513          	add	a0,a0,32
80001e78:	fad75ce3          	bge	a4,a3,80001e30 <__muldf3+0x360>
80001e7c:	ff878793          	add	a5,a5,-8
80001e80:	00fb1733          	sll	a4,s6,a5
80001e84:	fc9ff06f          	j	80001e4c <__muldf3+0x37c>
80001e88:	016467b3          	or	a5,s0,s6
80001e8c:	02079263          	bnez	a5,80001eb0 <__muldf3+0x3e0>
80001e90:	00000413          	li	s0,0
80001e94:	7ff00693          	li	a3,2047
80001e98:	00200713          	li	a4,2
80001e9c:	ce9ff06f          	j	80001b84 <__muldf3+0xb4>
80001ea0:	00000413          	li	s0,0
80001ea4:	00000693          	li	a3,0
80001ea8:	00100713          	li	a4,1
80001eac:	cd9ff06f          	j	80001b84 <__muldf3+0xb4>
80001eb0:	000b0793          	mv	a5,s6
80001eb4:	7ff00693          	li	a3,2047
80001eb8:	00300713          	li	a4,3
80001ebc:	cc9ff06f          	j	80001b84 <__muldf3+0xb4>
80001ec0:	00100613          	li	a2,1
80001ec4:	00d61633          	sll	a2,a2,a3
  FP_MUL_D (R, A, B);
80001ec8:	53067693          	and	a3,a2,1328
80001ecc:	0e069663          	bnez	a3,80001fb8 <__muldf3+0x4e8>
80001ed0:	24067813          	and	a6,a2,576
80001ed4:	1a081a63          	bnez	a6,80002088 <__muldf3+0x5b8>
80001ed8:	08867613          	and	a2,a2,136
80001edc:	cc060ce3          	beqz	a2,80001bb4 <__muldf3+0xe4>
  FP_UNPACK_D (B, b);
80001ee0:	00098593          	mv	a1,s3
  FP_PACK_D (r, R);
80001ee4:	00200693          	li	a3,2
80001ee8:	18d70863          	beq	a4,a3,80002078 <__muldf3+0x5a8>
80001eec:	00300693          	li	a3,3
80001ef0:	1ad70463          	beq	a4,a3,80002098 <__muldf3+0x5c8>
80001ef4:	00100693          	li	a3,1
80001ef8:	1ad70663          	beq	a4,a3,800020a4 <__muldf3+0x5d4>
80001efc:	3ff50613          	add	a2,a0,1023
80001f00:	0cc05463          	blez	a2,80001fc8 <__muldf3+0x4f8>
80001f04:	0077f713          	and	a4,a5,7
80001f08:	02070063          	beqz	a4,80001f28 <__muldf3+0x458>
80001f0c:	00f7f713          	and	a4,a5,15
80001f10:	00400693          	li	a3,4
80001f14:	00d70a63          	beq	a4,a3,80001f28 <__muldf3+0x458>
80001f18:	00478713          	add	a4,a5,4
80001f1c:	00f736b3          	sltu	a3,a4,a5
80001f20:	00d40433          	add	s0,s0,a3
80001f24:	00070793          	mv	a5,a4
80001f28:	00741713          	sll	a4,s0,0x7
80001f2c:	00075a63          	bgez	a4,80001f40 <__muldf3+0x470>
80001f30:	ff000737          	lui	a4,0xff000
80001f34:	fff70713          	add	a4,a4,-1 # feffffff <__stack_base+0x3effffff>
80001f38:	00e47433          	and	s0,s0,a4
80001f3c:	40050613          	add	a2,a0,1024
80001f40:	7fe00713          	li	a4,2046
80001f44:	12c74a63          	blt	a4,a2,80002078 <__muldf3+0x5a8>
80001f48:	0037d793          	srl	a5,a5,0x3
80001f4c:	01d41693          	sll	a3,s0,0x1d
80001f50:	00f6e6b3          	or	a3,a3,a5
80001f54:	00345713          	srl	a4,s0,0x3
80001f58:	00c71713          	sll	a4,a4,0xc
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80001f5c:	02c12083          	lw	ra,44(sp)
80001f60:	02812403          	lw	s0,40(sp)
  FP_PACK_D (r, R);
80001f64:	01461613          	sll	a2,a2,0x14
80001f68:	00c75713          	srl	a4,a4,0xc
80001f6c:	01f59593          	sll	a1,a1,0x1f
80001f70:	00e66633          	or	a2,a2,a4
80001f74:	00b667b3          	or	a5,a2,a1
}
80001f78:	02412483          	lw	s1,36(sp)
80001f7c:	02012903          	lw	s2,32(sp)
80001f80:	01c12983          	lw	s3,28(sp)
80001f84:	01812a03          	lw	s4,24(sp)
80001f88:	01412a83          	lw	s5,20(sp)
80001f8c:	01012b03          	lw	s6,16(sp)
80001f90:	00c12b83          	lw	s7,12(sp)
80001f94:	00068513          	mv	a0,a3
80001f98:	00078593          	mv	a1,a5
80001f9c:	03010113          	add	sp,sp,48
80001fa0:	00008067          	ret
  FP_MUL_D (R, A, B);
80001fa4:	00f00613          	li	a2,15
80001fa8:	0ec68863          	beq	a3,a2,80002098 <__muldf3+0x5c8>
80001fac:	00b00613          	li	a2,11
  FP_UNPACK_D (A, a);
80001fb0:	000a0593          	mv	a1,s4
  FP_MUL_D (R, A, B);
80001fb4:	f2c686e3          	beq	a3,a2,80001ee0 <__muldf3+0x410>
80001fb8:	00048413          	mv	s0,s1
80001fbc:	00090793          	mv	a5,s2
80001fc0:	000b8713          	mv	a4,s7
80001fc4:	f21ff06f          	j	80001ee4 <__muldf3+0x414>
  FP_PACK_D (r, R);
80001fc8:	00100713          	li	a4,1
80001fcc:	40c70733          	sub	a4,a4,a2
80001fd0:	03800693          	li	a3,56
80001fd4:	0ce6c863          	blt	a3,a4,800020a4 <__muldf3+0x5d4>
80001fd8:	01f00693          	li	a3,31
80001fdc:	06e6c463          	blt	a3,a4,80002044 <__muldf3+0x574>
80001fe0:	41e50513          	add	a0,a0,1054
80001fe4:	00e7d633          	srl	a2,a5,a4
80001fe8:	00a416b3          	sll	a3,s0,a0
80001fec:	00a79533          	sll	a0,a5,a0
80001ff0:	00c6e6b3          	or	a3,a3,a2
80001ff4:	00a03533          	snez	a0,a0
80001ff8:	00a6e7b3          	or	a5,a3,a0
80001ffc:	00e45733          	srl	a4,s0,a4
80002000:	0077f693          	and	a3,a5,7
80002004:	02068063          	beqz	a3,80002024 <__muldf3+0x554>
80002008:	00f7f693          	and	a3,a5,15
8000200c:	00400613          	li	a2,4
80002010:	00c68a63          	beq	a3,a2,80002024 <__muldf3+0x554>
80002014:	00478693          	add	a3,a5,4
80002018:	00f6b633          	sltu	a2,a3,a5
8000201c:	00c70733          	add	a4,a4,a2
80002020:	00068793          	mv	a5,a3
80002024:	00871693          	sll	a3,a4,0x8
80002028:	0806c463          	bltz	a3,800020b0 <__muldf3+0x5e0>
8000202c:	01d71693          	sll	a3,a4,0x1d
80002030:	0037d793          	srl	a5,a5,0x3
80002034:	00f6e6b3          	or	a3,a3,a5
80002038:	00375713          	srl	a4,a4,0x3
8000203c:	00000613          	li	a2,0
80002040:	f19ff06f          	j	80001f58 <__muldf3+0x488>
80002044:	fe100693          	li	a3,-31
80002048:	40c686b3          	sub	a3,a3,a2
8000204c:	02000813          	li	a6,32
80002050:	00d456b3          	srl	a3,s0,a3
80002054:	00000613          	li	a2,0
80002058:	01070663          	beq	a4,a6,80002064 <__muldf3+0x594>
8000205c:	43e50613          	add	a2,a0,1086
80002060:	00c41633          	sll	a2,s0,a2
80002064:	00f66633          	or	a2,a2,a5
80002068:	00c03633          	snez	a2,a2
8000206c:	00c6e7b3          	or	a5,a3,a2
80002070:	00000713          	li	a4,0
80002074:	f8dff06f          	j	80002000 <__muldf3+0x530>
80002078:	00000713          	li	a4,0
8000207c:	00000693          	li	a3,0
80002080:	7ff00613          	li	a2,2047
80002084:	ed5ff06f          	j	80001f58 <__muldf3+0x488>
  FP_MUL_D (R, A, B);
80002088:	00080737          	lui	a4,0x80
  FP_PACK_D (r, R);
8000208c:	7ff00613          	li	a2,2047
80002090:	00000593          	li	a1,0
80002094:	ec5ff06f          	j	80001f58 <__muldf3+0x488>
80002098:	00080737          	lui	a4,0x80
8000209c:	00000693          	li	a3,0
800020a0:	fedff06f          	j	8000208c <__muldf3+0x5bc>
800020a4:	00000713          	li	a4,0
800020a8:	00000693          	li	a3,0
800020ac:	f91ff06f          	j	8000203c <__muldf3+0x56c>
800020b0:	00000713          	li	a4,0
800020b4:	00000693          	li	a3,0
800020b8:	00100613          	li	a2,1
800020bc:	e9dff06f          	j	80001f58 <__muldf3+0x488>

800020c0 <__subdf3>:
  FP_DECL_D (B);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_D (A, a);
800020c0:	00100837          	lui	a6,0x100
800020c4:	fff80813          	add	a6,a6,-1 # fffff <__stack_size+0xfbfff>
{
800020c8:	fe010113          	add	sp,sp,-32
  FP_UNPACK_SEMIRAW_D (A, a);
800020cc:	00b878b3          	and	a7,a6,a1
800020d0:	0145d713          	srl	a4,a1,0x14
800020d4:	01d55793          	srl	a5,a0,0x1d
  FP_UNPACK_SEMIRAW_D (B, b);
800020d8:	00d87833          	and	a6,a6,a3
{
800020dc:	01212823          	sw	s2,16(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
800020e0:	7ff77913          	and	s2,a4,2047
800020e4:	00389713          	sll	a4,a7,0x3
  FP_UNPACK_SEMIRAW_D (B, b);
800020e8:	0146d893          	srl	a7,a3,0x14
{
800020ec:	00912a23          	sw	s1,20(sp)
  FP_UNPACK_SEMIRAW_D (A, a);
800020f0:	00e7e7b3          	or	a5,a5,a4
800020f4:	01f5d493          	srl	s1,a1,0x1f
  FP_UNPACK_SEMIRAW_D (B, b);
800020f8:	01d65713          	srl	a4,a2,0x1d
800020fc:	00381813          	sll	a6,a6,0x3
{
80002100:	00112e23          	sw	ra,28(sp)
80002104:	00812c23          	sw	s0,24(sp)
80002108:	01312623          	sw	s3,12(sp)
  FP_UNPACK_SEMIRAW_D (B, b);
8000210c:	7ff8f893          	and	a7,a7,2047
  FP_SUB_D (R, A, B);
80002110:	7ff00593          	li	a1,2047
  FP_UNPACK_SEMIRAW_D (A, a);
80002114:	00351513          	sll	a0,a0,0x3
  FP_UNPACK_SEMIRAW_D (B, b);
80002118:	01f6d693          	srl	a3,a3,0x1f
8000211c:	01076733          	or	a4,a4,a6
80002120:	00361613          	sll	a2,a2,0x3
  FP_SUB_D (R, A, B);
80002124:	00b89663          	bne	a7,a1,80002130 <__subdf3+0x70>
80002128:	00c765b3          	or	a1,a4,a2
8000212c:	00059463          	bnez	a1,80002134 <__subdf3+0x74>
80002130:	0016c693          	xor	a3,a3,1
80002134:	41190833          	sub	a6,s2,a7
80002138:	2a969a63          	bne	a3,s1,800023ec <__subdf3+0x32c>
8000213c:	11005c63          	blez	a6,80002254 <__subdf3+0x194>
80002140:	04089063          	bnez	a7,80002180 <__subdf3+0xc0>
80002144:	00c766b3          	or	a3,a4,a2
80002148:	66068063          	beqz	a3,800027a8 <__subdf3+0x6e8>
8000214c:	fff80593          	add	a1,a6,-1
80002150:	02059063          	bnez	a1,80002170 <__subdf3+0xb0>
80002154:	00c50633          	add	a2,a0,a2
80002158:	00a636b3          	sltu	a3,a2,a0
8000215c:	00e78733          	add	a4,a5,a4
80002160:	00060513          	mv	a0,a2
80002164:	00d707b3          	add	a5,a4,a3
80002168:	00100913          	li	s2,1
8000216c:	06c0006f          	j	800021d8 <__subdf3+0x118>
80002170:	7ff00693          	li	a3,2047
80002174:	02d81063          	bne	a6,a3,80002194 <__subdf3+0xd4>
80002178:	7ff00913          	li	s2,2047
8000217c:	1f80006f          	j	80002374 <__subdf3+0x2b4>
80002180:	7ff00693          	li	a3,2047
80002184:	1ed90863          	beq	s2,a3,80002374 <__subdf3+0x2b4>
80002188:	008006b7          	lui	a3,0x800
8000218c:	00d76733          	or	a4,a4,a3
80002190:	00080593          	mv	a1,a6
80002194:	03800693          	li	a3,56
80002198:	0ab6c863          	blt	a3,a1,80002248 <__subdf3+0x188>
8000219c:	01f00693          	li	a3,31
800021a0:	06b6ca63          	blt	a3,a1,80002214 <__subdf3+0x154>
800021a4:	02000813          	li	a6,32
800021a8:	40b80833          	sub	a6,a6,a1
800021ac:	010716b3          	sll	a3,a4,a6
800021b0:	00b658b3          	srl	a7,a2,a1
800021b4:	01061833          	sll	a6,a2,a6
800021b8:	0116e6b3          	or	a3,a3,a7
800021bc:	01003833          	snez	a6,a6
800021c0:	0106e6b3          	or	a3,a3,a6
800021c4:	00b755b3          	srl	a1,a4,a1
800021c8:	00a68533          	add	a0,a3,a0
800021cc:	00f585b3          	add	a1,a1,a5
800021d0:	00d536b3          	sltu	a3,a0,a3
800021d4:	00d587b3          	add	a5,a1,a3
800021d8:	00879713          	sll	a4,a5,0x8
800021dc:	18075c63          	bgez	a4,80002374 <__subdf3+0x2b4>
800021e0:	00190913          	add	s2,s2,1
800021e4:	7ff00713          	li	a4,2047
800021e8:	5ae90a63          	beq	s2,a4,8000279c <__subdf3+0x6dc>
800021ec:	ff800737          	lui	a4,0xff800
800021f0:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
800021f4:	00e7f733          	and	a4,a5,a4
800021f8:	00155793          	srl	a5,a0,0x1
800021fc:	00157513          	and	a0,a0,1
80002200:	00a7e7b3          	or	a5,a5,a0
80002204:	01f71513          	sll	a0,a4,0x1f
80002208:	00f56533          	or	a0,a0,a5
8000220c:	00175793          	srl	a5,a4,0x1
80002210:	1640006f          	j	80002374 <__subdf3+0x2b4>
80002214:	fe058693          	add	a3,a1,-32
80002218:	02000893          	li	a7,32
8000221c:	00d756b3          	srl	a3,a4,a3
80002220:	00000813          	li	a6,0
80002224:	01158863          	beq	a1,a7,80002234 <__subdf3+0x174>
80002228:	04000813          	li	a6,64
8000222c:	40b80833          	sub	a6,a6,a1
80002230:	01071833          	sll	a6,a4,a6
80002234:	00c86833          	or	a6,a6,a2
80002238:	01003833          	snez	a6,a6
8000223c:	0106e6b3          	or	a3,a3,a6
80002240:	00000593          	li	a1,0
80002244:	f85ff06f          	j	800021c8 <__subdf3+0x108>
80002248:	00c766b3          	or	a3,a4,a2
8000224c:	00d036b3          	snez	a3,a3
80002250:	ff1ff06f          	j	80002240 <__subdf3+0x180>
80002254:	0c080a63          	beqz	a6,80002328 <__subdf3+0x268>
80002258:	412886b3          	sub	a3,a7,s2
8000225c:	02091463          	bnez	s2,80002284 <__subdf3+0x1c4>
80002260:	00a7e5b3          	or	a1,a5,a0
80002264:	50058e63          	beqz	a1,80002780 <__subdf3+0x6c0>
80002268:	fff68593          	add	a1,a3,-1 # 7fffff <__stack_size+0x7fbfff>
8000226c:	ee0584e3          	beqz	a1,80002154 <__subdf3+0x94>
80002270:	7ff00813          	li	a6,2047
80002274:	03069263          	bne	a3,a6,80002298 <__subdf3+0x1d8>
80002278:	00070793          	mv	a5,a4
8000227c:	00060513          	mv	a0,a2
80002280:	ef9ff06f          	j	80002178 <__subdf3+0xb8>
80002284:	7ff00593          	li	a1,2047
80002288:	feb888e3          	beq	a7,a1,80002278 <__subdf3+0x1b8>
8000228c:	008005b7          	lui	a1,0x800
80002290:	00b7e7b3          	or	a5,a5,a1
80002294:	00068593          	mv	a1,a3
80002298:	03800693          	li	a3,56
8000229c:	08b6c063          	blt	a3,a1,8000231c <__subdf3+0x25c>
800022a0:	01f00693          	li	a3,31
800022a4:	04b6c263          	blt	a3,a1,800022e8 <__subdf3+0x228>
800022a8:	02000813          	li	a6,32
800022ac:	40b80833          	sub	a6,a6,a1
800022b0:	010796b3          	sll	a3,a5,a6
800022b4:	00b55333          	srl	t1,a0,a1
800022b8:	01051833          	sll	a6,a0,a6
800022bc:	0066e6b3          	or	a3,a3,t1
800022c0:	01003833          	snez	a6,a6
800022c4:	0106e6b3          	or	a3,a3,a6
800022c8:	00b7d5b3          	srl	a1,a5,a1
800022cc:	00c68633          	add	a2,a3,a2
800022d0:	00e585b3          	add	a1,a1,a4
800022d4:	00d636b3          	sltu	a3,a2,a3
800022d8:	00060513          	mv	a0,a2
800022dc:	00d587b3          	add	a5,a1,a3
800022e0:	00088913          	mv	s2,a7
800022e4:	ef5ff06f          	j	800021d8 <__subdf3+0x118>
800022e8:	fe058693          	add	a3,a1,-32 # 7fffe0 <__stack_size+0x7fbfe0>
800022ec:	02000313          	li	t1,32
800022f0:	00d7d6b3          	srl	a3,a5,a3
800022f4:	00000813          	li	a6,0
800022f8:	00658863          	beq	a1,t1,80002308 <__subdf3+0x248>
800022fc:	04000813          	li	a6,64
80002300:	40b80833          	sub	a6,a6,a1
80002304:	01079833          	sll	a6,a5,a6
80002308:	00a86833          	or	a6,a6,a0
8000230c:	01003833          	snez	a6,a6
80002310:	0106e6b3          	or	a3,a3,a6
80002314:	00000593          	li	a1,0
80002318:	fb5ff06f          	j	800022cc <__subdf3+0x20c>
8000231c:	00a7e6b3          	or	a3,a5,a0
80002320:	00d036b3          	snez	a3,a3
80002324:	ff1ff06f          	j	80002314 <__subdf3+0x254>
80002328:	00190693          	add	a3,s2,1
8000232c:	7fe6f593          	and	a1,a3,2046
80002330:	08059663          	bnez	a1,800023bc <__subdf3+0x2fc>
80002334:	00a7e6b3          	or	a3,a5,a0
80002338:	06091263          	bnez	s2,8000239c <__subdf3+0x2dc>
8000233c:	44068863          	beqz	a3,8000278c <__subdf3+0x6cc>
80002340:	00c766b3          	or	a3,a4,a2
80002344:	02068863          	beqz	a3,80002374 <__subdf3+0x2b4>
80002348:	00c50633          	add	a2,a0,a2
8000234c:	00a636b3          	sltu	a3,a2,a0
80002350:	00e78733          	add	a4,a5,a4
80002354:	00d707b3          	add	a5,a4,a3
80002358:	00879713          	sll	a4,a5,0x8
8000235c:	00060513          	mv	a0,a2
80002360:	00075a63          	bgez	a4,80002374 <__subdf3+0x2b4>
80002364:	ff800737          	lui	a4,0xff800
80002368:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
8000236c:	00e7f7b3          	and	a5,a5,a4
80002370:	00100913          	li	s2,1
  FP_PACK_SEMIRAW_D (r, R);
80002374:	00757713          	and	a4,a0,7
80002378:	44070863          	beqz	a4,800027c8 <__subdf3+0x708>
8000237c:	00f57713          	and	a4,a0,15
80002380:	00400693          	li	a3,4
80002384:	44d70263          	beq	a4,a3,800027c8 <__subdf3+0x708>
80002388:	00450713          	add	a4,a0,4
8000238c:	00a736b3          	sltu	a3,a4,a0
80002390:	00d787b3          	add	a5,a5,a3
80002394:	00070513          	mv	a0,a4
80002398:	4300006f          	j	800027c8 <__subdf3+0x708>
  FP_SUB_D (R, A, B);
8000239c:	ec068ee3          	beqz	a3,80002278 <__subdf3+0x1b8>
800023a0:	00c76633          	or	a2,a4,a2
800023a4:	dc060ae3          	beqz	a2,80002178 <__subdf3+0xb8>
800023a8:	00000493          	li	s1,0
800023ac:	004007b7          	lui	a5,0x400
800023b0:	00000513          	li	a0,0
800023b4:	7ff00913          	li	s2,2047
800023b8:	4100006f          	j	800027c8 <__subdf3+0x708>
800023bc:	7ff00593          	li	a1,2047
800023c0:	3cb68c63          	beq	a3,a1,80002798 <__subdf3+0x6d8>
800023c4:	00c50633          	add	a2,a0,a2
800023c8:	00a63533          	sltu	a0,a2,a0
800023cc:	00e78733          	add	a4,a5,a4
800023d0:	00a70733          	add	a4,a4,a0
800023d4:	01f71513          	sll	a0,a4,0x1f
800023d8:	00165613          	srl	a2,a2,0x1
800023dc:	00c56533          	or	a0,a0,a2
800023e0:	00175793          	srl	a5,a4,0x1
800023e4:	00068913          	mv	s2,a3
800023e8:	f8dff06f          	j	80002374 <__subdf3+0x2b4>
800023ec:	0f005c63          	blez	a6,800024e4 <__subdf3+0x424>
800023f0:	08089e63          	bnez	a7,8000248c <__subdf3+0x3cc>
800023f4:	00c766b3          	or	a3,a4,a2
800023f8:	3a068863          	beqz	a3,800027a8 <__subdf3+0x6e8>
800023fc:	fff80693          	add	a3,a6,-1
80002400:	02069063          	bnez	a3,80002420 <__subdf3+0x360>
80002404:	40c50633          	sub	a2,a0,a2
80002408:	00c536b3          	sltu	a3,a0,a2
8000240c:	40e78733          	sub	a4,a5,a4
80002410:	00060513          	mv	a0,a2
80002414:	40d707b3          	sub	a5,a4,a3
80002418:	00100913          	li	s2,1
8000241c:	0540006f          	j	80002470 <__subdf3+0x3b0>
80002420:	7ff00593          	li	a1,2047
80002424:	d4b80ae3          	beq	a6,a1,80002178 <__subdf3+0xb8>
80002428:	03800593          	li	a1,56
8000242c:	0ad5c663          	blt	a1,a3,800024d8 <__subdf3+0x418>
80002430:	01f00593          	li	a1,31
80002434:	06d5c863          	blt	a1,a3,800024a4 <__subdf3+0x3e4>
80002438:	02000813          	li	a6,32
8000243c:	40d80833          	sub	a6,a6,a3
80002440:	00d658b3          	srl	a7,a2,a3
80002444:	010715b3          	sll	a1,a4,a6
80002448:	01061833          	sll	a6,a2,a6
8000244c:	0115e5b3          	or	a1,a1,a7
80002450:	01003833          	snez	a6,a6
80002454:	0105e633          	or	a2,a1,a6
80002458:	00d756b3          	srl	a3,a4,a3
8000245c:	40c50633          	sub	a2,a0,a2
80002460:	00c53733          	sltu	a4,a0,a2
80002464:	40d786b3          	sub	a3,a5,a3
80002468:	00060513          	mv	a0,a2
8000246c:	40e687b3          	sub	a5,a3,a4
80002470:	00879713          	sll	a4,a5,0x8
80002474:	f00750e3          	bgez	a4,80002374 <__subdf3+0x2b4>
80002478:	00800437          	lui	s0,0x800
8000247c:	fff40413          	add	s0,s0,-1 # 7fffff <__stack_size+0x7fbfff>
80002480:	0087f433          	and	s0,a5,s0
80002484:	00050993          	mv	s3,a0
80002488:	2100006f          	j	80002698 <__subdf3+0x5d8>
8000248c:	7ff00693          	li	a3,2047
80002490:	eed902e3          	beq	s2,a3,80002374 <__subdf3+0x2b4>
80002494:	008006b7          	lui	a3,0x800
80002498:	00d76733          	or	a4,a4,a3
8000249c:	00080693          	mv	a3,a6
800024a0:	f89ff06f          	j	80002428 <__subdf3+0x368>
800024a4:	fe068593          	add	a1,a3,-32 # 7fffe0 <__stack_size+0x7fbfe0>
800024a8:	02000893          	li	a7,32
800024ac:	00b755b3          	srl	a1,a4,a1
800024b0:	00000813          	li	a6,0
800024b4:	01168863          	beq	a3,a7,800024c4 <__subdf3+0x404>
800024b8:	04000813          	li	a6,64
800024bc:	40d80833          	sub	a6,a6,a3
800024c0:	01071833          	sll	a6,a4,a6
800024c4:	00c86833          	or	a6,a6,a2
800024c8:	01003833          	snez	a6,a6
800024cc:	0105e633          	or	a2,a1,a6
800024d0:	00000693          	li	a3,0
800024d4:	f89ff06f          	j	8000245c <__subdf3+0x39c>
800024d8:	00c76633          	or	a2,a4,a2
800024dc:	00c03633          	snez	a2,a2
800024e0:	ff1ff06f          	j	800024d0 <__subdf3+0x410>
800024e4:	0e080863          	beqz	a6,800025d4 <__subdf3+0x514>
800024e8:	41288833          	sub	a6,a7,s2
800024ec:	04091263          	bnez	s2,80002530 <__subdf3+0x470>
800024f0:	00a7e5b3          	or	a1,a5,a0
800024f4:	2a058e63          	beqz	a1,800027b0 <__subdf3+0x6f0>
800024f8:	fff80593          	add	a1,a6,-1
800024fc:	00059e63          	bnez	a1,80002518 <__subdf3+0x458>
80002500:	40a60533          	sub	a0,a2,a0
80002504:	40f70733          	sub	a4,a4,a5
80002508:	00a63633          	sltu	a2,a2,a0
8000250c:	40c707b3          	sub	a5,a4,a2
80002510:	00068493          	mv	s1,a3
80002514:	f05ff06f          	j	80002418 <__subdf3+0x358>
80002518:	7ff00313          	li	t1,2047
8000251c:	02681463          	bne	a6,t1,80002544 <__subdf3+0x484>
80002520:	00070793          	mv	a5,a4
80002524:	00060513          	mv	a0,a2
80002528:	7ff00913          	li	s2,2047
8000252c:	0d00006f          	j	800025fc <__subdf3+0x53c>
80002530:	7ff00593          	li	a1,2047
80002534:	feb886e3          	beq	a7,a1,80002520 <__subdf3+0x460>
80002538:	008005b7          	lui	a1,0x800
8000253c:	00b7e7b3          	or	a5,a5,a1
80002540:	00080593          	mv	a1,a6
80002544:	03800813          	li	a6,56
80002548:	08b84063          	blt	a6,a1,800025c8 <__subdf3+0x508>
8000254c:	01f00813          	li	a6,31
80002550:	04b84263          	blt	a6,a1,80002594 <__subdf3+0x4d4>
80002554:	02000313          	li	t1,32
80002558:	40b30333          	sub	t1,t1,a1
8000255c:	00b55e33          	srl	t3,a0,a1
80002560:	00679833          	sll	a6,a5,t1
80002564:	00651333          	sll	t1,a0,t1
80002568:	01c86833          	or	a6,a6,t3
8000256c:	00603333          	snez	t1,t1
80002570:	00686533          	or	a0,a6,t1
80002574:	00b7d5b3          	srl	a1,a5,a1
80002578:	40a60533          	sub	a0,a2,a0
8000257c:	40b705b3          	sub	a1,a4,a1
80002580:	00a63633          	sltu	a2,a2,a0
80002584:	40c587b3          	sub	a5,a1,a2
80002588:	00088913          	mv	s2,a7
8000258c:	00068493          	mv	s1,a3
80002590:	ee1ff06f          	j	80002470 <__subdf3+0x3b0>
80002594:	fe058813          	add	a6,a1,-32 # 7fffe0 <__stack_size+0x7fbfe0>
80002598:	02000e13          	li	t3,32
8000259c:	0107d833          	srl	a6,a5,a6
800025a0:	00000313          	li	t1,0
800025a4:	01c58863          	beq	a1,t3,800025b4 <__subdf3+0x4f4>
800025a8:	04000313          	li	t1,64
800025ac:	40b30333          	sub	t1,t1,a1
800025b0:	00679333          	sll	t1,a5,t1
800025b4:	00a36333          	or	t1,t1,a0
800025b8:	00603333          	snez	t1,t1
800025bc:	00686533          	or	a0,a6,t1
800025c0:	00000593          	li	a1,0
800025c4:	fb5ff06f          	j	80002578 <__subdf3+0x4b8>
800025c8:	00a7e533          	or	a0,a5,a0
800025cc:	00a03533          	snez	a0,a0
800025d0:	ff1ff06f          	j	800025c0 <__subdf3+0x500>
800025d4:	00190593          	add	a1,s2,1
800025d8:	7fe5f593          	and	a1,a1,2046
800025dc:	08059663          	bnez	a1,80002668 <__subdf3+0x5a8>
800025e0:	00c765b3          	or	a1,a4,a2
800025e4:	00a7e833          	or	a6,a5,a0
800025e8:	06091063          	bnez	s2,80002648 <__subdf3+0x588>
800025ec:	00081c63          	bnez	a6,80002604 <__subdf3+0x544>
800025f0:	10058e63          	beqz	a1,8000270c <__subdf3+0x64c>
800025f4:	00070793          	mv	a5,a4
800025f8:	00060513          	mv	a0,a2
800025fc:	00068493          	mv	s1,a3
80002600:	d75ff06f          	j	80002374 <__subdf3+0x2b4>
80002604:	d60588e3          	beqz	a1,80002374 <__subdf3+0x2b4>
80002608:	40c50833          	sub	a6,a0,a2
8000260c:	010538b3          	sltu	a7,a0,a6
80002610:	40e785b3          	sub	a1,a5,a4
80002614:	411585b3          	sub	a1,a1,a7
80002618:	00859893          	sll	a7,a1,0x8
8000261c:	0008dc63          	bgez	a7,80002634 <__subdf3+0x574>
80002620:	40a60533          	sub	a0,a2,a0
80002624:	40f70733          	sub	a4,a4,a5
80002628:	00a63633          	sltu	a2,a2,a0
8000262c:	40c707b3          	sub	a5,a4,a2
80002630:	fcdff06f          	j	800025fc <__subdf3+0x53c>
80002634:	00b86533          	or	a0,a6,a1
80002638:	18050463          	beqz	a0,800027c0 <__subdf3+0x700>
8000263c:	00058793          	mv	a5,a1
80002640:	00080513          	mv	a0,a6
80002644:	d31ff06f          	j	80002374 <__subdf3+0x2b4>
80002648:	00081c63          	bnez	a6,80002660 <__subdf3+0x5a0>
8000264c:	d4058ee3          	beqz	a1,800023a8 <__subdf3+0x2e8>
80002650:	00070793          	mv	a5,a4
80002654:	00060513          	mv	a0,a2
80002658:	00068493          	mv	s1,a3
8000265c:	b1dff06f          	j	80002178 <__subdf3+0xb8>
80002660:	b0058ce3          	beqz	a1,80002178 <__subdf3+0xb8>
80002664:	d45ff06f          	j	800023a8 <__subdf3+0x2e8>
80002668:	40c505b3          	sub	a1,a0,a2
8000266c:	00b53833          	sltu	a6,a0,a1
80002670:	40e78433          	sub	s0,a5,a4
80002674:	41040433          	sub	s0,s0,a6
80002678:	00841813          	sll	a6,s0,0x8
8000267c:	00058993          	mv	s3,a1
80002680:	08085063          	bgez	a6,80002700 <__subdf3+0x640>
80002684:	40a609b3          	sub	s3,a2,a0
80002688:	40f70433          	sub	s0,a4,a5
8000268c:	01363633          	sltu	a2,a2,s3
80002690:	40c40433          	sub	s0,s0,a2
80002694:	00068493          	mv	s1,a3
80002698:	06040e63          	beqz	s0,80002714 <__subdf3+0x654>
8000269c:	00040513          	mv	a0,s0
800026a0:	7e4000ef          	jal	80002e84 <__clzsi2>
800026a4:	ff850693          	add	a3,a0,-8
800026a8:	02000793          	li	a5,32
800026ac:	40d787b3          	sub	a5,a5,a3
800026b0:	00d41433          	sll	s0,s0,a3
800026b4:	00f9d7b3          	srl	a5,s3,a5
800026b8:	0087e7b3          	or	a5,a5,s0
800026bc:	00d99433          	sll	s0,s3,a3
800026c0:	0b26c463          	blt	a3,s2,80002768 <__subdf3+0x6a8>
800026c4:	412686b3          	sub	a3,a3,s2
800026c8:	00168613          	add	a2,a3,1
800026cc:	01f00713          	li	a4,31
800026d0:	06c74263          	blt	a4,a2,80002734 <__subdf3+0x674>
800026d4:	02000713          	li	a4,32
800026d8:	40c70733          	sub	a4,a4,a2
800026dc:	00e79533          	sll	a0,a5,a4
800026e0:	00c456b3          	srl	a3,s0,a2
800026e4:	00e41733          	sll	a4,s0,a4
800026e8:	00d56533          	or	a0,a0,a3
800026ec:	00e03733          	snez	a4,a4
800026f0:	00e56533          	or	a0,a0,a4
800026f4:	00c7d7b3          	srl	a5,a5,a2
800026f8:	00000913          	li	s2,0
800026fc:	c79ff06f          	j	80002374 <__subdf3+0x2b4>
80002700:	0085e5b3          	or	a1,a1,s0
80002704:	f8059ae3          	bnez	a1,80002698 <__subdf3+0x5d8>
80002708:	00000913          	li	s2,0
8000270c:	00000493          	li	s1,0
80002710:	08c0006f          	j	8000279c <__subdf3+0x6dc>
80002714:	00098513          	mv	a0,s3
80002718:	76c000ef          	jal	80002e84 <__clzsi2>
8000271c:	01850693          	add	a3,a0,24
80002720:	01f00793          	li	a5,31
80002724:	f8d7d2e3          	bge	a5,a3,800026a8 <__subdf3+0x5e8>
80002728:	ff850793          	add	a5,a0,-8
8000272c:	00f997b3          	sll	a5,s3,a5
80002730:	f91ff06f          	j	800026c0 <__subdf3+0x600>
80002734:	fe168693          	add	a3,a3,-31
80002738:	00d7d533          	srl	a0,a5,a3
8000273c:	02000693          	li	a3,32
80002740:	00000713          	li	a4,0
80002744:	00d60863          	beq	a2,a3,80002754 <__subdf3+0x694>
80002748:	04000713          	li	a4,64
8000274c:	40c70733          	sub	a4,a4,a2
80002750:	00e79733          	sll	a4,a5,a4
80002754:	00e46733          	or	a4,s0,a4
80002758:	00e03733          	snez	a4,a4
8000275c:	00e56533          	or	a0,a0,a4
80002760:	00000793          	li	a5,0
80002764:	f95ff06f          	j	800026f8 <__subdf3+0x638>
80002768:	ff800737          	lui	a4,0xff800
8000276c:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
80002770:	40d90933          	sub	s2,s2,a3
80002774:	00e7f7b3          	and	a5,a5,a4
80002778:	00040513          	mv	a0,s0
8000277c:	bf9ff06f          	j	80002374 <__subdf3+0x2b4>
80002780:	00070793          	mv	a5,a4
80002784:	00060513          	mv	a0,a2
80002788:	c5dff06f          	j	800023e4 <__subdf3+0x324>
8000278c:	00070793          	mv	a5,a4
80002790:	00060513          	mv	a0,a2
80002794:	be1ff06f          	j	80002374 <__subdf3+0x2b4>
80002798:	7ff00913          	li	s2,2047
8000279c:	00000793          	li	a5,0
800027a0:	00000513          	li	a0,0
800027a4:	0240006f          	j	800027c8 <__subdf3+0x708>
800027a8:	00080913          	mv	s2,a6
800027ac:	bc9ff06f          	j	80002374 <__subdf3+0x2b4>
800027b0:	00070793          	mv	a5,a4
800027b4:	00060513          	mv	a0,a2
800027b8:	00080913          	mv	s2,a6
800027bc:	e41ff06f          	j	800025fc <__subdf3+0x53c>
800027c0:	00000793          	li	a5,0
800027c4:	00000493          	li	s1,0
  FP_PACK_SEMIRAW_D (r, R);
800027c8:	00879713          	sll	a4,a5,0x8
800027cc:	00075e63          	bgez	a4,800027e8 <__subdf3+0x728>
800027d0:	00190913          	add	s2,s2,1
800027d4:	7ff00713          	li	a4,2047
800027d8:	08e90263          	beq	s2,a4,8000285c <__subdf3+0x79c>
800027dc:	ff800737          	lui	a4,0xff800
800027e0:	fff70713          	add	a4,a4,-1 # ff7fffff <__stack_base+0x3f7fffff>
800027e4:	00e7f7b3          	and	a5,a5,a4
800027e8:	01d79693          	sll	a3,a5,0x1d
800027ec:	00355513          	srl	a0,a0,0x3
800027f0:	7ff00713          	li	a4,2047
800027f4:	00a6e6b3          	or	a3,a3,a0
800027f8:	0037d793          	srl	a5,a5,0x3
800027fc:	00e91e63          	bne	s2,a4,80002818 <__subdf3+0x758>
80002800:	00f6e6b3          	or	a3,a3,a5
80002804:	00000793          	li	a5,0
80002808:	00068863          	beqz	a3,80002818 <__subdf3+0x758>
8000280c:	000807b7          	lui	a5,0x80
80002810:	00000693          	li	a3,0
80002814:	00000493          	li	s1,0
80002818:	01491713          	sll	a4,s2,0x14
8000281c:	7ff00637          	lui	a2,0x7ff00
80002820:	00c79793          	sll	a5,a5,0xc
80002824:	00c77733          	and	a4,a4,a2
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80002828:	01c12083          	lw	ra,28(sp)
8000282c:	01812403          	lw	s0,24(sp)
  FP_PACK_SEMIRAW_D (r, R);
80002830:	00c7d793          	srl	a5,a5,0xc
80002834:	00f767b3          	or	a5,a4,a5
80002838:	01f49713          	sll	a4,s1,0x1f
8000283c:	00e7e633          	or	a2,a5,a4
}
80002840:	01412483          	lw	s1,20(sp)
80002844:	01012903          	lw	s2,16(sp)
80002848:	00c12983          	lw	s3,12(sp)
8000284c:	00068513          	mv	a0,a3
80002850:	00060593          	mv	a1,a2
80002854:	02010113          	add	sp,sp,32
80002858:	00008067          	ret
8000285c:	00000793          	li	a5,0
80002860:	00000513          	li	a0,0
80002864:	f85ff06f          	j	800027e8 <__subdf3+0x728>

80002868 <__fixdfsi>:
  FP_DECL_EX;
  FP_DECL_D (A);
  USItype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
80002868:	0145d713          	srl	a4,a1,0x14
8000286c:	001006b7          	lui	a3,0x100
80002870:	fff68793          	add	a5,a3,-1 # fffff <__stack_size+0xfbfff>
80002874:	7ff77713          	and	a4,a4,2047
  FP_TO_INT_D (r, A, SI_BITS, 1);
80002878:	3fe00613          	li	a2,1022
  FP_UNPACK_RAW_D (A, a);
8000287c:	00b7f7b3          	and	a5,a5,a1
80002880:	01f5d593          	srl	a1,a1,0x1f
  FP_TO_INT_D (r, A, SI_BITS, 1);
80002884:	04e65e63          	bge	a2,a4,800028e0 <__fixdfsi+0x78>
80002888:	41d00613          	li	a2,1053
8000288c:	00e65a63          	bge	a2,a4,800028a0 <__fixdfsi+0x38>
80002890:	80000537          	lui	a0,0x80000
80002894:	fff50513          	add	a0,a0,-1 # 7fffffff <__stack_size+0x7fffbfff>
80002898:	00a58533          	add	a0,a1,a0
8000289c:	00008067          	ret
800028a0:	00d7e7b3          	or	a5,a5,a3
800028a4:	43300693          	li	a3,1075
800028a8:	40e686b3          	sub	a3,a3,a4
800028ac:	01f00613          	li	a2,31
800028b0:	02d64063          	blt	a2,a3,800028d0 <__fixdfsi+0x68>
800028b4:	bed70713          	add	a4,a4,-1043
800028b8:	00e797b3          	sll	a5,a5,a4
800028bc:	00d55533          	srl	a0,a0,a3
800028c0:	00a7e533          	or	a0,a5,a0
800028c4:	02058063          	beqz	a1,800028e4 <__fixdfsi+0x7c>
800028c8:	40a00533          	neg	a0,a0
800028cc:	00008067          	ret
800028d0:	41300693          	li	a3,1043
800028d4:	40e68733          	sub	a4,a3,a4
800028d8:	00e7d533          	srl	a0,a5,a4
800028dc:	fe9ff06f          	j	800028c4 <__fixdfsi+0x5c>
800028e0:	00000513          	li	a0,0
  FP_HANDLE_EXCEPTIONS;

  return r;
}
800028e4:	00008067          	ret

800028e8 <__fixunsdfsi>:
  FP_DECL_EX;
  FP_DECL_D (A);
  USItype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_D (A, a);
800028e8:	0145d713          	srl	a4,a1,0x14
800028ec:	00100837          	lui	a6,0x100
800028f0:	fff80793          	add	a5,a6,-1 # fffff <__stack_size+0xfbfff>
800028f4:	7ff77713          	and	a4,a4,2047
  FP_TO_INT_D (r, A, SI_BITS, 0);
800028f8:	3fe00613          	li	a2,1022
  FP_UNPACK_RAW_D (A, a);
800028fc:	00b7f7b3          	and	a5,a5,a1
{
80002900:	00050693          	mv	a3,a0
  FP_UNPACK_RAW_D (A, a);
80002904:	01f5d593          	srl	a1,a1,0x1f
  FP_TO_INT_D (r, A, SI_BITS, 0);
80002908:	04e65a63          	bge	a2,a4,8000295c <__fixunsdfsi+0x74>
8000290c:	0015c613          	xor	a2,a1,1
80002910:	41e60613          	add	a2,a2,1054 # 7ff0041e <__stack_size+0x7fefc41e>
80002914:	fff58513          	add	a0,a1,-1
80002918:	04c75463          	bge	a4,a2,80002960 <__fixunsdfsi+0x78>
8000291c:	00000513          	li	a0,0
80002920:	04059063          	bnez	a1,80002960 <__fixunsdfsi+0x78>
80002924:	43300613          	li	a2,1075
80002928:	40e60633          	sub	a2,a2,a4
8000292c:	01f00593          	li	a1,31
80002930:	0107e7b3          	or	a5,a5,a6
80002934:	00c5cc63          	blt	a1,a2,8000294c <__fixunsdfsi+0x64>
80002938:	bed70713          	add	a4,a4,-1043
8000293c:	00e797b3          	sll	a5,a5,a4
80002940:	00c6d533          	srl	a0,a3,a2
80002944:	00a7e533          	or	a0,a5,a0
80002948:	00008067          	ret
8000294c:	41300693          	li	a3,1043
80002950:	40e68733          	sub	a4,a3,a4
80002954:	00e7d533          	srl	a0,a5,a4
80002958:	00008067          	ret
8000295c:	00000513          	li	a0,0
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80002960:	00008067          	ret

80002964 <__floatsidf>:
#include "soft-fp.h"
#include "double.h"

DFtype
__floatsidf (SItype i)
{
80002964:	ff010113          	add	sp,sp,-16
80002968:	00112623          	sw	ra,12(sp)
8000296c:	00812423          	sw	s0,8(sp)
80002970:	00912223          	sw	s1,4(sp)
  FP_DECL_D (A);
  DFtype a;

  FP_FROM_INT_D (A, i, SI_BITS, USItype);
80002974:	08050663          	beqz	a0,80002a00 <__floatsidf+0x9c>
80002978:	41f55793          	sra	a5,a0,0x1f
8000297c:	00a7c433          	xor	s0,a5,a0
80002980:	40f40433          	sub	s0,s0,a5
80002984:	01f55493          	srl	s1,a0,0x1f
80002988:	00040513          	mv	a0,s0
8000298c:	4f8000ef          	jal	80002e84 <__clzsi2>
80002990:	41e00713          	li	a4,1054
80002994:	00a00793          	li	a5,10
80002998:	40a70733          	sub	a4,a4,a0
8000299c:	04a7c863          	blt	a5,a0,800029ec <__floatsidf+0x88>
800029a0:	00b00793          	li	a5,11
800029a4:	40a787b3          	sub	a5,a5,a0
800029a8:	01550513          	add	a0,a0,21
800029ac:	00f457b3          	srl	a5,s0,a5
800029b0:	00a41433          	sll	s0,s0,a0
800029b4:	00048513          	mv	a0,s1
  FP_PACK_RAW_D (a, A);
800029b8:	00c79793          	sll	a5,a5,0xc
800029bc:	00c7d793          	srl	a5,a5,0xc
800029c0:	01471713          	sll	a4,a4,0x14
800029c4:	01f51513          	sll	a0,a0,0x1f
800029c8:	00f76733          	or	a4,a4,a5

  return a;
}
800029cc:	00c12083          	lw	ra,12(sp)
  FP_PACK_RAW_D (a, A);
800029d0:	00a767b3          	or	a5,a4,a0
}
800029d4:	00040513          	mv	a0,s0
800029d8:	00812403          	lw	s0,8(sp)
800029dc:	00412483          	lw	s1,4(sp)
800029e0:	00078593          	mv	a1,a5
800029e4:	01010113          	add	sp,sp,16
800029e8:	00008067          	ret
  FP_FROM_INT_D (A, i, SI_BITS, USItype);
800029ec:	ff550513          	add	a0,a0,-11
800029f0:	00a417b3          	sll	a5,s0,a0
800029f4:	00048513          	mv	a0,s1
800029f8:	00000413          	li	s0,0
800029fc:	fbdff06f          	j	800029b8 <__floatsidf+0x54>
80002a00:	00000713          	li	a4,0
80002a04:	00000793          	li	a5,0
80002a08:	ff1ff06f          	j	800029f8 <__floatsidf+0x94>

80002a0c <__floatunsidf>:
#include "soft-fp.h"
#include "double.h"

DFtype
__floatunsidf (USItype i)
{
80002a0c:	ff010113          	add	sp,sp,-16
80002a10:	00812423          	sw	s0,8(sp)
80002a14:	00112623          	sw	ra,12(sp)
80002a18:	00050413          	mv	s0,a0
  FP_DECL_D (A);
  DFtype a;

  FP_FROM_INT_D (A, i, SI_BITS, USItype);
80002a1c:	06050263          	beqz	a0,80002a80 <__floatunsidf+0x74>
80002a20:	464000ef          	jal	80002e84 <__clzsi2>
80002a24:	41e00713          	li	a4,1054
80002a28:	00a00793          	li	a5,10
80002a2c:	40a70733          	sub	a4,a4,a0
80002a30:	04a7c063          	blt	a5,a0,80002a70 <__floatunsidf+0x64>
80002a34:	00b00793          	li	a5,11
80002a38:	40a787b3          	sub	a5,a5,a0
80002a3c:	01550513          	add	a0,a0,21
80002a40:	00f457b3          	srl	a5,s0,a5
80002a44:	00a41433          	sll	s0,s0,a0
  FP_PACK_RAW_D (a, A);

  return a;
}
80002a48:	00c12083          	lw	ra,12(sp)
80002a4c:	00040513          	mv	a0,s0
  FP_PACK_RAW_D (a, A);
80002a50:	00c79793          	sll	a5,a5,0xc
}
80002a54:	00812403          	lw	s0,8(sp)
  FP_PACK_RAW_D (a, A);
80002a58:	01471713          	sll	a4,a4,0x14
80002a5c:	00c7d793          	srl	a5,a5,0xc
80002a60:	00f766b3          	or	a3,a4,a5
}
80002a64:	00068593          	mv	a1,a3
80002a68:	01010113          	add	sp,sp,16
80002a6c:	00008067          	ret
  FP_FROM_INT_D (A, i, SI_BITS, USItype);
80002a70:	ff550513          	add	a0,a0,-11
80002a74:	00a417b3          	sll	a5,s0,a0
80002a78:	00000413          	li	s0,0
80002a7c:	fcdff06f          	j	80002a48 <__floatunsidf+0x3c>
80002a80:	00000793          	li	a5,0
80002a84:	00000713          	li	a4,0
80002a88:	fc1ff06f          	j	80002a48 <__floatunsidf+0x3c>

80002a8c <__mulsf3>:
#include "soft-fp.h"
#include "single.h"

SFtype
__mulsf3 (SFtype a, SFtype b)
{
80002a8c:	fe010113          	add	sp,sp,-32
80002a90:	01212823          	sw	s2,16(sp)
80002a94:	01755913          	srl	s2,a0,0x17
80002a98:	00912a23          	sw	s1,20(sp)
80002a9c:	01312623          	sw	s3,12(sp)
80002aa0:	01512223          	sw	s5,4(sp)
  FP_DECL_S (B);
  FP_DECL_S (R);
  SFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_S (A, a);
80002aa4:	00951493          	sll	s1,a0,0x9
{
80002aa8:	00112e23          	sw	ra,28(sp)
80002aac:	00812c23          	sw	s0,24(sp)
80002ab0:	01412423          	sw	s4,8(sp)
80002ab4:	0ff97913          	zext.b	s2,s2
80002ab8:	00058a93          	mv	s5,a1
  FP_UNPACK_S (A, a);
80002abc:	0094d493          	srl	s1,s1,0x9
80002ac0:	01f55993          	srl	s3,a0,0x1f
80002ac4:	10090863          	beqz	s2,80002bd4 <__mulsf3+0x148>
80002ac8:	0ff00793          	li	a5,255
80002acc:	12f90463          	beq	s2,a5,80002bf4 <__mulsf3+0x168>
80002ad0:	00349493          	sll	s1,s1,0x3
80002ad4:	040007b7          	lui	a5,0x4000
80002ad8:	00f4e4b3          	or	s1,s1,a5
80002adc:	f8190913          	add	s2,s2,-127
80002ae0:	00000a13          	li	s4,0
  FP_UNPACK_S (B, b);
80002ae4:	017ad793          	srl	a5,s5,0x17
80002ae8:	009a9413          	sll	s0,s5,0x9
80002aec:	0ff7f793          	zext.b	a5,a5
80002af0:	00945413          	srl	s0,s0,0x9
80002af4:	01fada93          	srl	s5,s5,0x1f
80002af8:	10078e63          	beqz	a5,80002c14 <__mulsf3+0x188>
80002afc:	0ff00713          	li	a4,255
80002b00:	12e78a63          	beq	a5,a4,80002c34 <__mulsf3+0x1a8>
80002b04:	00341413          	sll	s0,s0,0x3
80002b08:	04000737          	lui	a4,0x4000
80002b0c:	00e46433          	or	s0,s0,a4
80002b10:	f8178793          	add	a5,a5,-127 # 3ffff81 <__stack_size+0x3ffbf81>
80002b14:	00000713          	li	a4,0
  FP_MUL_S (R, A, B);
80002b18:	00f90933          	add	s2,s2,a5
80002b1c:	002a1793          	sll	a5,s4,0x2
80002b20:	00e7e7b3          	or	a5,a5,a4
80002b24:	00a00613          	li	a2,10
80002b28:	00190693          	add	a3,s2,1
80002b2c:	1ef64263          	blt	a2,a5,80002d10 <__mulsf3+0x284>
80002b30:	00200613          	li	a2,2
80002b34:	0159c9b3          	xor	s3,s3,s5
80002b38:	10f64e63          	blt	a2,a5,80002c54 <__mulsf3+0x1c8>
80002b3c:	fff78793          	add	a5,a5,-1
80002b40:	00100613          	li	a2,1
80002b44:	12f67a63          	bgeu	a2,a5,80002c78 <__mulsf3+0x1ec>
80002b48:	00010837          	lui	a6,0x10
80002b4c:	fff80513          	add	a0,a6,-1 # ffff <__stack_size+0xbfff>
80002b50:	0104d613          	srl	a2,s1,0x10
80002b54:	01045793          	srl	a5,s0,0x10
80002b58:	00a4f4b3          	and	s1,s1,a0
80002b5c:	00a47433          	and	s0,s0,a0
80002b60:	029405b3          	mul	a1,s0,s1
80002b64:	02860433          	mul	s0,a2,s0
80002b68:	02f60633          	mul	a2,a2,a5
80002b6c:	029787b3          	mul	a5,a5,s1
80002b70:	00878733          	add	a4,a5,s0
80002b74:	0105d793          	srl	a5,a1,0x10
80002b78:	00e787b3          	add	a5,a5,a4
80002b7c:	0087f463          	bgeu	a5,s0,80002b84 <__mulsf3+0xf8>
80002b80:	01060633          	add	a2,a2,a6
80002b84:	00a7f733          	and	a4,a5,a0
80002b88:	01071713          	sll	a4,a4,0x10
80002b8c:	00a5f5b3          	and	a1,a1,a0
80002b90:	00b70733          	add	a4,a4,a1
80002b94:	0107d793          	srl	a5,a5,0x10
80002b98:	00671413          	sll	s0,a4,0x6
80002b9c:	00c787b3          	add	a5,a5,a2
80002ba0:	01a75713          	srl	a4,a4,0x1a
80002ba4:	00679793          	sll	a5,a5,0x6
80002ba8:	00803433          	snez	s0,s0
80002bac:	00e46433          	or	s0,s0,a4
80002bb0:	00479713          	sll	a4,a5,0x4
80002bb4:	0087e433          	or	s0,a5,s0
80002bb8:	00075a63          	bgez	a4,80002bcc <__mulsf3+0x140>
80002bbc:	00145793          	srl	a5,s0,0x1
80002bc0:	00147413          	and	s0,s0,1
80002bc4:	0087e433          	or	s0,a5,s0
80002bc8:	00068913          	mv	s2,a3
80002bcc:	00090693          	mv	a3,s2
80002bd0:	0c00006f          	j	80002c90 <__mulsf3+0x204>
  FP_UNPACK_S (A, a);
80002bd4:	02048a63          	beqz	s1,80002c08 <__mulsf3+0x17c>
80002bd8:	00048513          	mv	a0,s1
80002bdc:	2a8000ef          	jal	80002e84 <__clzsi2>
80002be0:	ffb50793          	add	a5,a0,-5
80002be4:	f8a00913          	li	s2,-118
80002be8:	00f494b3          	sll	s1,s1,a5
80002bec:	40a90933          	sub	s2,s2,a0
80002bf0:	ef1ff06f          	j	80002ae0 <__mulsf3+0x54>
80002bf4:	0ff00913          	li	s2,255
80002bf8:	00200a13          	li	s4,2
80002bfc:	ee0484e3          	beqz	s1,80002ae4 <__mulsf3+0x58>
80002c00:	00300a13          	li	s4,3
80002c04:	ee1ff06f          	j	80002ae4 <__mulsf3+0x58>
80002c08:	00000913          	li	s2,0
80002c0c:	00100a13          	li	s4,1
80002c10:	ed5ff06f          	j	80002ae4 <__mulsf3+0x58>
  FP_UNPACK_S (B, b);
80002c14:	02040a63          	beqz	s0,80002c48 <__mulsf3+0x1bc>
80002c18:	00040513          	mv	a0,s0
80002c1c:	268000ef          	jal	80002e84 <__clzsi2>
80002c20:	ffb50793          	add	a5,a0,-5
80002c24:	00f41433          	sll	s0,s0,a5
80002c28:	f8a00793          	li	a5,-118
80002c2c:	40a787b3          	sub	a5,a5,a0
80002c30:	ee5ff06f          	j	80002b14 <__mulsf3+0x88>
80002c34:	0ff00793          	li	a5,255
80002c38:	00200713          	li	a4,2
80002c3c:	ec040ee3          	beqz	s0,80002b18 <__mulsf3+0x8c>
80002c40:	00300713          	li	a4,3
80002c44:	ed5ff06f          	j	80002b18 <__mulsf3+0x8c>
80002c48:	00000793          	li	a5,0
80002c4c:	00100713          	li	a4,1
80002c50:	ec9ff06f          	j	80002b18 <__mulsf3+0x8c>
80002c54:	00100613          	li	a2,1
80002c58:	00f617b3          	sll	a5,a2,a5
  FP_MUL_S (R, A, B);
80002c5c:	5307f613          	and	a2,a5,1328
80002c60:	0c061063          	bnez	a2,80002d20 <__mulsf3+0x294>
80002c64:	2407f613          	and	a2,a5,576
80002c68:	12061263          	bnez	a2,80002d8c <__mulsf3+0x300>
80002c6c:	0887f793          	and	a5,a5,136
80002c70:	ec078ce3          	beqz	a5,80002b48 <__mulsf3+0xbc>
  FP_UNPACK_S (B, b);
80002c74:	000a8993          	mv	s3,s5
  FP_PACK_S (r, R);
80002c78:	00200793          	li	a5,2
80002c7c:	10f70263          	beq	a4,a5,80002d80 <__mulsf3+0x2f4>
80002c80:	00300793          	li	a5,3
80002c84:	10f70463          	beq	a4,a5,80002d8c <__mulsf3+0x300>
80002c88:	00100793          	li	a5,1
80002c8c:	10f70863          	beq	a4,a5,80002d9c <__mulsf3+0x310>
80002c90:	07f68713          	add	a4,a3,127
80002c94:	08e05c63          	blez	a4,80002d2c <__mulsf3+0x2a0>
80002c98:	00747793          	and	a5,s0,7
80002c9c:	00078a63          	beqz	a5,80002cb0 <__mulsf3+0x224>
80002ca0:	00f47793          	and	a5,s0,15
80002ca4:	00400613          	li	a2,4
80002ca8:	00c78463          	beq	a5,a2,80002cb0 <__mulsf3+0x224>
80002cac:	00440413          	add	s0,s0,4
80002cb0:	00441793          	sll	a5,s0,0x4
80002cb4:	0007da63          	bgez	a5,80002cc8 <__mulsf3+0x23c>
80002cb8:	f80007b7          	lui	a5,0xf8000
80002cbc:	fff78793          	add	a5,a5,-1 # f7ffffff <__stack_base+0x37ffffff>
80002cc0:	00f47433          	and	s0,s0,a5
80002cc4:	08068713          	add	a4,a3,128
80002cc8:	0fe00793          	li	a5,254
80002ccc:	0ae7ca63          	blt	a5,a4,80002d80 <__mulsf3+0x2f4>
80002cd0:	00345793          	srl	a5,s0,0x3
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80002cd4:	01c12083          	lw	ra,28(sp)
80002cd8:	01812403          	lw	s0,24(sp)
  FP_PACK_S (r, R);
80002cdc:	00979793          	sll	a5,a5,0x9
80002ce0:	01771513          	sll	a0,a4,0x17
80002ce4:	0097d793          	srl	a5,a5,0x9
80002ce8:	01f99993          	sll	s3,s3,0x1f
80002cec:	00f56533          	or	a0,a0,a5
}
80002cf0:	01412483          	lw	s1,20(sp)
80002cf4:	01012903          	lw	s2,16(sp)
80002cf8:	00812a03          	lw	s4,8(sp)
80002cfc:	00412a83          	lw	s5,4(sp)
  FP_PACK_S (r, R);
80002d00:	01356533          	or	a0,a0,s3
}
80002d04:	00c12983          	lw	s3,12(sp)
80002d08:	02010113          	add	sp,sp,32
80002d0c:	00008067          	ret
  FP_MUL_S (R, A, B);
80002d10:	00f00613          	li	a2,15
80002d14:	06c78c63          	beq	a5,a2,80002d8c <__mulsf3+0x300>
80002d18:	00b00613          	li	a2,11
80002d1c:	f4c78ce3          	beq	a5,a2,80002c74 <__mulsf3+0x1e8>
80002d20:	00048413          	mv	s0,s1
80002d24:	000a0713          	mv	a4,s4
80002d28:	f51ff06f          	j	80002c78 <__mulsf3+0x1ec>
  FP_PACK_S (r, R);
80002d2c:	00100793          	li	a5,1
80002d30:	40e787b3          	sub	a5,a5,a4
80002d34:	01b00713          	li	a4,27
80002d38:	06f74263          	blt	a4,a5,80002d9c <__mulsf3+0x310>
80002d3c:	09e68693          	add	a3,a3,158
80002d40:	00d416b3          	sll	a3,s0,a3
80002d44:	00f457b3          	srl	a5,s0,a5
80002d48:	00d036b3          	snez	a3,a3
80002d4c:	00d7e7b3          	or	a5,a5,a3
80002d50:	0077f713          	and	a4,a5,7
80002d54:	00070a63          	beqz	a4,80002d68 <__mulsf3+0x2dc>
80002d58:	00f7f713          	and	a4,a5,15
80002d5c:	00400693          	li	a3,4
80002d60:	00d70463          	beq	a4,a3,80002d68 <__mulsf3+0x2dc>
80002d64:	00478793          	add	a5,a5,4
80002d68:	00579713          	sll	a4,a5,0x5
80002d6c:	0037d793          	srl	a5,a5,0x3
80002d70:	02075863          	bgez	a4,80002da0 <__mulsf3+0x314>
80002d74:	00000793          	li	a5,0
80002d78:	00100713          	li	a4,1
80002d7c:	f59ff06f          	j	80002cd4 <__mulsf3+0x248>
80002d80:	00000793          	li	a5,0
80002d84:	0ff00713          	li	a4,255
80002d88:	f4dff06f          	j	80002cd4 <__mulsf3+0x248>
80002d8c:	004007b7          	lui	a5,0x400
80002d90:	0ff00713          	li	a4,255
80002d94:	00000993          	li	s3,0
80002d98:	f3dff06f          	j	80002cd4 <__mulsf3+0x248>
80002d9c:	00000793          	li	a5,0
80002da0:	00000713          	li	a4,0
80002da4:	f31ff06f          	j	80002cd4 <__mulsf3+0x248>

80002da8 <__extendsfdf2>:
  FP_DECL_S (A);
  FP_DECL_D (R);
  DFtype r;

  FP_INIT_EXCEPTIONS;
  FP_UNPACK_RAW_S (A, a);
80002da8:	01755713          	srl	a4,a0,0x17
80002dac:	0ff77713          	zext.b	a4,a4
{
80002db0:	ff010113          	add	sp,sp,-16
#if _FP_W_TYPE_SIZE < _FP_FRACBITS_D
  FP_EXTEND (D, S, 2, 1, R, A);
80002db4:	00170793          	add	a5,a4,1 # 4000001 <__stack_size+0x3ffc001>
{
80002db8:	00812423          	sw	s0,8(sp)
80002dbc:	00912223          	sw	s1,4(sp)
  FP_UNPACK_RAW_S (A, a);
80002dc0:	00951413          	sll	s0,a0,0x9
{
80002dc4:	00112623          	sw	ra,12(sp)
  FP_EXTEND (D, S, 2, 1, R, A);
80002dc8:	0fe7f793          	and	a5,a5,254
  FP_UNPACK_RAW_S (A, a);
80002dcc:	00945413          	srl	s0,s0,0x9
80002dd0:	01f55493          	srl	s1,a0,0x1f
  FP_EXTEND (D, S, 2, 1, R, A);
80002dd4:	04078263          	beqz	a5,80002e18 <__extendsfdf2+0x70>
80002dd8:	00345793          	srl	a5,s0,0x3
80002ddc:	38070713          	add	a4,a4,896
80002de0:	01d41413          	sll	s0,s0,0x1d
#else
  FP_EXTEND (D, S, 1, 1, R, A);
#endif
  FP_PACK_RAW_D (r, R);
80002de4:	00c79793          	sll	a5,a5,0xc
80002de8:	00c7d793          	srl	a5,a5,0xc
80002dec:	01471713          	sll	a4,a4,0x14
80002df0:	01f49513          	sll	a0,s1,0x1f
80002df4:	00f76733          	or	a4,a4,a5
  FP_HANDLE_EXCEPTIONS;

  return r;
}
80002df8:	00c12083          	lw	ra,12(sp)
  FP_PACK_RAW_D (r, R);
80002dfc:	00a767b3          	or	a5,a4,a0
}
80002e00:	00040513          	mv	a0,s0
80002e04:	00812403          	lw	s0,8(sp)
80002e08:	00412483          	lw	s1,4(sp)
80002e0c:	00078593          	mv	a1,a5
80002e10:	01010113          	add	sp,sp,16
80002e14:	00008067          	ret
  FP_EXTEND (D, S, 2, 1, R, A);
80002e18:	04071663          	bnez	a4,80002e64 <__extendsfdf2+0xbc>
80002e1c:	00000793          	li	a5,0
80002e20:	fc0402e3          	beqz	s0,80002de4 <__extendsfdf2+0x3c>
80002e24:	00040513          	mv	a0,s0
80002e28:	05c000ef          	jal	80002e84 <__clzsi2>
80002e2c:	00a00793          	li	a5,10
80002e30:	02a7c263          	blt	a5,a0,80002e54 <__extendsfdf2+0xac>
80002e34:	00b00793          	li	a5,11
80002e38:	40a787b3          	sub	a5,a5,a0
80002e3c:	01550713          	add	a4,a0,21
80002e40:	00f457b3          	srl	a5,s0,a5
80002e44:	00e41433          	sll	s0,s0,a4
80002e48:	38900713          	li	a4,905
80002e4c:	40a70733          	sub	a4,a4,a0
80002e50:	f95ff06f          	j	80002de4 <__extendsfdf2+0x3c>
80002e54:	ff550793          	add	a5,a0,-11
80002e58:	00f417b3          	sll	a5,s0,a5
80002e5c:	00000413          	li	s0,0
80002e60:	fe9ff06f          	j	80002e48 <__extendsfdf2+0xa0>
80002e64:	00000793          	li	a5,0
80002e68:	00040a63          	beqz	s0,80002e7c <__extendsfdf2+0xd4>
80002e6c:	00345793          	srl	a5,s0,0x3
80002e70:	00080737          	lui	a4,0x80
80002e74:	01d41413          	sll	s0,s0,0x1d
80002e78:	00e7e7b3          	or	a5,a5,a4
80002e7c:	7ff00713          	li	a4,2047
80002e80:	f65ff06f          	j	80002de4 <__extendsfdf2+0x3c>

80002e84 <__clzsi2>:
  count_leading_zeros (ret, x);
80002e84:	000107b7          	lui	a5,0x10
80002e88:	02f57a63          	bgeu	a0,a5,80002ebc <__clzsi2+0x38>
80002e8c:	10053793          	sltiu	a5,a0,256
80002e90:	0017b793          	seqz	a5,a5
80002e94:	00379793          	sll	a5,a5,0x3
80002e98:	a0000737          	lui	a4,0xa0000
80002e9c:	02000693          	li	a3,32
80002ea0:	40f686b3          	sub	a3,a3,a5
80002ea4:	00f55533          	srl	a0,a0,a5
80002ea8:	75870793          	add	a5,a4,1880 # a0000758 <__clz_tab>
80002eac:	00a787b3          	add	a5,a5,a0
80002eb0:	0007c503          	lbu	a0,0(a5) # 10000 <__stack_size+0xc000>
}
80002eb4:	40a68533          	sub	a0,a3,a0
80002eb8:	00008067          	ret
  count_leading_zeros (ret, x);
80002ebc:	01000737          	lui	a4,0x1000
80002ec0:	01800793          	li	a5,24
80002ec4:	fce57ae3          	bgeu	a0,a4,80002e98 <__clzsi2+0x14>
80002ec8:	01000793          	li	a5,16
80002ecc:	fcdff06f          	j	80002e98 <__clzsi2+0x14>

80002ed0 <to_host>:
80002ed0:	fe010113          	add	sp,sp,-32
80002ed4:	00812e23          	sw	s0,28(sp)
80002ed8:	02010413          	add	s0,sp,32
80002edc:	c00007b7          	lui	a5,0xc0000
80002ee0:	fef42623          	sw	a5,-20(s0)
80002ee4:	fec42783          	lw	a5,-20(s0)
80002ee8:	00100713          	li	a4,1
80002eec:	00e7a023          	sw	a4,0(a5) # c0000000 <__stack_base>
80002ef0:	00000013          	nop
80002ef4:	01c12403          	lw	s0,28(sp)
80002ef8:	02010113          	add	sp,sp,32
80002efc:	00008067          	ret

80002f00 <_putchar>:
80002f00:	fe010113          	add	sp,sp,-32
80002f04:	00112e23          	sw	ra,28(sp)
80002f08:	00812c23          	sw	s0,24(sp)
80002f0c:	02010413          	add	s0,sp,32
80002f10:	00050793          	mv	a5,a0
80002f14:	fef407a3          	sb	a5,-17(s0)
80002f18:	fef44783          	lbu	a5,-17(s0)
80002f1c:	00078593          	mv	a1,a5
80002f20:	a00017b7          	lui	a5,0xa0001
80002f24:	a7c78513          	add	a0,a5,-1412 # a0000a7c <uart>
80002f28:	70c000ef          	jal	80003634 <uart_put_char>
80002f2c:	00000013          	nop
80002f30:	01c12083          	lw	ra,28(sp)
80002f34:	01812403          	lw	s0,24(sp)
80002f38:	02010113          	add	sp,sp,32
80002f3c:	00008067          	ret

80002f40 <init>:
80002f40:	ff010113          	add	sp,sp,-16
80002f44:	00112623          	sw	ra,12(sp)
80002f48:	00812423          	sw	s0,8(sp)
80002f4c:	01010413          	add	s0,sp,16
80002f50:	c00015b7          	lui	a1,0xc0001
80002f54:	a00017b7          	lui	a5,0xa0001
80002f58:	a7c78513          	add	a0,a5,-1412 # a0000a7c <uart>
80002f5c:	6a8000ef          	jal	80003604 <uart_init>
80002f60:	a00007b7          	lui	a5,0xa0000
80002f64:	00078513          	mv	a0,a5
80002f68:	599020ef          	jal	80005d00 <printf_>
80002f6c:	024000ef          	jal	80002f90 <pmp_init>
80002f70:	a00007b7          	lui	a5,0xa0000
80002f74:	01878513          	add	a0,a5,24 # a0000018 <main+0x1fffa298>
80002f78:	589020ef          	jal	80005d00 <printf_>
80002f7c:	00000013          	nop
80002f80:	00c12083          	lw	ra,12(sp)
80002f84:	00812403          	lw	s0,8(sp)
80002f88:	01010113          	add	sp,sp,16
80002f8c:	00008067          	ret

80002f90 <pmp_init>:
80002f90:	fd010113          	add	sp,sp,-48
80002f94:	02812623          	sw	s0,44(sp)
80002f98:	03010413          	add	s0,sp,48
80002f9c:	800067b7          	lui	a5,0x80006
80002fa0:	96c78793          	add	a5,a5,-1684 # 8000596c <_vsnprintf+0xa94>
80002fa4:	fef42623          	sw	a5,-20(s0)
80002fa8:	fec42783          	lw	a5,-20(s0)
80002fac:	3b079073          	csrw	pmpaddr0,a5
80002fb0:	c00007b7          	lui	a5,0xc0000
80002fb4:	fe078793          	add	a5,a5,-32 # bfffffe0 <__bss_end+0x1ffff560>
80002fb8:	fef42423          	sw	a5,-24(s0)
80002fbc:	fe842783          	lw	a5,-24(s0)
80002fc0:	3b179073          	csrw	pmpaddr1,a5
80002fc4:	800067b7          	lui	a5,0x80006
80002fc8:	96c78793          	add	a5,a5,-1684 # 8000596c <_vsnprintf+0xa94>
80002fcc:	fef42223          	sw	a5,-28(s0)
80002fd0:	fe442783          	lw	a5,-28(s0)
80002fd4:	3b279073          	csrw	pmpaddr2,a5
80002fd8:	c00007b7          	lui	a5,0xc0000
80002fdc:	fe078793          	add	a5,a5,-32 # bfffffe0 <__bss_end+0x1ffff560>
80002fe0:	fef42023          	sw	a5,-32(s0)
80002fe4:	fe042783          	lw	a5,-32(s0)
80002fe8:	3b379073          	csrw	pmpaddr3,a5
80002fec:	989827b7          	lui	a5,0x98982
80002ff0:	89878793          	add	a5,a5,-1896 # 98981898 <main+0x1897bb18>
80002ff4:	fcf42e23          	sw	a5,-36(s0)
80002ff8:	fdc42783          	lw	a5,-36(s0)
80002ffc:	3a079073          	csrw	pmpcfg0,a5
80003000:	00000013          	nop
80003004:	02c12403          	lw	s0,44(sp)
80003008:	03010113          	add	sp,sp,48
8000300c:	00008067          	ret

80003010 <sbi_ecall_handler>:
80003010:	fe010113          	add	sp,sp,-32
80003014:	00112e23          	sw	ra,28(sp)
80003018:	00812c23          	sw	s0,24(sp)
8000301c:	02010413          	add	s0,sp,32
80003020:	341027f3          	csrr	a5,mepc
80003024:	00078093          	mv	ra,a5
80003028:	00008793          	mv	a5,ra
8000302c:	fef42623          	sw	a5,-20(s0)
80003030:	fec42583          	lw	a1,-20(s0)
80003034:	a00007b7          	lui	a5,0xa0000
80003038:	03478513          	add	a0,a5,52 # a0000034 <main+0x1fffa2b4>
8000303c:	4c5020ef          	jal	80005d00 <printf_>
80003040:	fec42783          	lw	a5,-20(s0)
80003044:	00478793          	add	a5,a5,4
80003048:	fef42423          	sw	a5,-24(s0)
8000304c:	fe842783          	lw	a5,-24(s0)
80003050:	fef42223          	sw	a5,-28(s0)
80003054:	fe442783          	lw	a5,-28(s0)
80003058:	34179073          	csrw	mepc,a5
8000305c:	341027f3          	csrr	a5,mepc
80003060:	00078093          	mv	ra,a5
80003064:	00008793          	mv	a5,ra
80003068:	fef42023          	sw	a5,-32(s0)
8000306c:	fe042583          	lw	a1,-32(s0)
80003070:	a00007b7          	lui	a5,0xa0000
80003074:	04c78513          	add	a0,a5,76 # a000004c <main+0x1fffa2cc>
80003078:	489020ef          	jal	80005d00 <printf_>
8000307c:	00000013          	nop
80003080:	01c12083          	lw	ra,28(sp)
80003084:	01812403          	lw	s0,24(sp)
80003088:	02010113          	add	sp,sp,32
8000308c:	00008067          	ret

80003090 <sbi_illegal_insn_handler>:
80003090:	fe010113          	add	sp,sp,-32
80003094:	00112e23          	sw	ra,28(sp)
80003098:	00812c23          	sw	s0,24(sp)
8000309c:	02010413          	add	s0,sp,32
800030a0:	341027f3          	csrr	a5,mepc
800030a4:	00078093          	mv	ra,a5
800030a8:	00008793          	mv	a5,ra
800030ac:	fef42623          	sw	a5,-20(s0)
800030b0:	343027f3          	csrr	a5,mtval
800030b4:	00078093          	mv	ra,a5
800030b8:	00008793          	mv	a5,ra
800030bc:	fef42423          	sw	a5,-24(s0)
800030c0:	fec42583          	lw	a1,-20(s0)
800030c4:	a00007b7          	lui	a5,0xa0000
800030c8:	06878513          	add	a0,a5,104 # a0000068 <main+0x1fffa2e8>
800030cc:	435020ef          	jal	80005d00 <printf_>
800030d0:	fe842583          	lw	a1,-24(s0)
800030d4:	a00007b7          	lui	a5,0xa0000
800030d8:	08078513          	add	a0,a5,128 # a0000080 <main+0x1fffa300>
800030dc:	425020ef          	jal	80005d00 <printf_>
800030e0:	a00007b7          	lui	a5,0xa0000
800030e4:	0a078513          	add	a0,a5,160 # a00000a0 <main+0x1fffa320>
800030e8:	419020ef          	jal	80005d00 <printf_>
800030ec:	00000013          	nop
800030f0:	01c12083          	lw	ra,28(sp)
800030f4:	01812403          	lw	s0,24(sp)
800030f8:	02010113          	add	sp,sp,32
800030fc:	00008067          	ret

80003100 <sbi_ebreak_handler>:
80003100:	fe010113          	add	sp,sp,-32
80003104:	00112e23          	sw	ra,28(sp)
80003108:	00812c23          	sw	s0,24(sp)
8000310c:	02010413          	add	s0,sp,32
80003110:	a00007b7          	lui	a5,0xa0000
80003114:	0e078513          	add	a0,a5,224 # a00000e0 <main+0x1fffa360>
80003118:	3e9020ef          	jal	80005d00 <printf_>
8000311c:	341027f3          	csrr	a5,mepc
80003120:	00078093          	mv	ra,a5
80003124:	00008793          	mv	a5,ra
80003128:	fef42623          	sw	a5,-20(s0)
8000312c:	fec42583          	lw	a1,-20(s0)
80003130:	a00007b7          	lui	a5,0xa0000
80003134:	12078513          	add	a0,a5,288 # a0000120 <main+0x1fffa3a0>
80003138:	3c9020ef          	jal	80005d00 <printf_>
8000313c:	fec42783          	lw	a5,-20(s0)
80003140:	00478793          	add	a5,a5,4
80003144:	fef42423          	sw	a5,-24(s0)
80003148:	fe842783          	lw	a5,-24(s0)
8000314c:	fef42223          	sw	a5,-28(s0)
80003150:	fe442783          	lw	a5,-28(s0)
80003154:	34179073          	csrw	mepc,a5
80003158:	341027f3          	csrr	a5,mepc
8000315c:	00078093          	mv	ra,a5
80003160:	00008793          	mv	a5,ra
80003164:	fef42023          	sw	a5,-32(s0)
80003168:	fe042583          	lw	a1,-32(s0)
8000316c:	a00007b7          	lui	a5,0xa0000
80003170:	13878513          	add	a0,a5,312 # a0000138 <main+0x1fffa3b8>
80003174:	38d020ef          	jal	80005d00 <printf_>
80003178:	00000013          	nop
8000317c:	01c12083          	lw	ra,28(sp)
80003180:	01812403          	lw	s0,24(sp)
80003184:	02010113          	add	sp,sp,32
80003188:	00008067          	ret

8000318c <sbi_irqchip_process>:
8000318c:	fe010113          	add	sp,sp,-32
80003190:	00112e23          	sw	ra,28(sp)
80003194:	00812c23          	sw	s0,24(sp)
80003198:	02010413          	add	s0,sp,32
8000319c:	341027f3          	csrr	a5,mepc
800031a0:	00078093          	mv	ra,a5
800031a4:	00008793          	mv	a5,ra
800031a8:	fef42623          	sw	a5,-20(s0)
800031ac:	300027f3          	csrr	a5,mstatus
800031b0:	00078093          	mv	ra,a5
800031b4:	00008793          	mv	a5,ra
800031b8:	fef42423          	sw	a5,-24(s0)
800031bc:	344027f3          	csrr	a5,mip
800031c0:	00078093          	mv	ra,a5
800031c4:	00008793          	mv	a5,ra
800031c8:	fef42223          	sw	a5,-28(s0)
800031cc:	304027f3          	csrr	a5,mie
800031d0:	00078093          	mv	ra,a5
800031d4:	00008793          	mv	a5,ra
800031d8:	fef42023          	sw	a5,-32(s0)
800031dc:	fec42583          	lw	a1,-20(s0)
800031e0:	a00007b7          	lui	a5,0xa0000
800031e4:	15478513          	add	a0,a5,340 # a0000154 <main+0x1fffa3d4>
800031e8:	319020ef          	jal	80005d00 <printf_>
800031ec:	fe842583          	lw	a1,-24(s0)
800031f0:	a00007b7          	lui	a5,0xa0000
800031f4:	17c78513          	add	a0,a5,380 # a000017c <main+0x1fffa3fc>
800031f8:	309020ef          	jal	80005d00 <printf_>
800031fc:	fe442583          	lw	a1,-28(s0)
80003200:	a00007b7          	lui	a5,0xa0000
80003204:	1a878513          	add	a0,a5,424 # a00001a8 <main+0x1fffa428>
80003208:	2f9020ef          	jal	80005d00 <printf_>
8000320c:	fe042583          	lw	a1,-32(s0)
80003210:	a00007b7          	lui	a5,0xa0000
80003214:	1d078513          	add	a0,a5,464 # a00001d0 <main+0x1fffa450>
80003218:	2e9020ef          	jal	80005d00 <printf_>
8000321c:	a00007b7          	lui	a5,0xa0000
80003220:	1f878513          	add	a0,a5,504 # a00001f8 <main+0x1fffa478>
80003224:	2dd020ef          	jal	80005d00 <printf_>
80003228:	00000013          	nop
8000322c:	01c12083          	lw	ra,28(sp)
80003230:	01812403          	lw	s0,24(sp)
80003234:	02010113          	add	sp,sp,32
80003238:	00008067          	ret

8000323c <sbi_fetch_access_handler>:
8000323c:	fe010113          	add	sp,sp,-32
80003240:	00112e23          	sw	ra,28(sp)
80003244:	00812c23          	sw	s0,24(sp)
80003248:	02010413          	add	s0,sp,32
8000324c:	341027f3          	csrr	a5,mepc
80003250:	00078093          	mv	ra,a5
80003254:	00008793          	mv	a5,ra
80003258:	fef42623          	sw	a5,-20(s0)
8000325c:	343027f3          	csrr	a5,mtval
80003260:	00078093          	mv	ra,a5
80003264:	00008793          	mv	a5,ra
80003268:	fef42423          	sw	a5,-24(s0)
8000326c:	fec42583          	lw	a1,-20(s0)
80003270:	a00007b7          	lui	a5,0xa0000
80003274:	24878513          	add	a0,a5,584 # a0000248 <main+0x1fffa4c8>
80003278:	289020ef          	jal	80005d00 <printf_>
8000327c:	fe842583          	lw	a1,-24(s0)
80003280:	a00007b7          	lui	a5,0xa0000
80003284:	26078513          	add	a0,a5,608 # a0000260 <main+0x1fffa4e0>
80003288:	279020ef          	jal	80005d00 <printf_>
8000328c:	a00007b7          	lui	a5,0xa0000
80003290:	28078513          	add	a0,a5,640 # a0000280 <main+0x1fffa500>
80003294:	26d020ef          	jal	80005d00 <printf_>
80003298:	00000013          	nop
8000329c:	01c12083          	lw	ra,28(sp)
800032a0:	01812403          	lw	s0,24(sp)
800032a4:	02010113          	add	sp,sp,32
800032a8:	00008067          	ret

800032ac <sbi_store_access_handler>:
800032ac:	fe010113          	add	sp,sp,-32
800032b0:	00112e23          	sw	ra,28(sp)
800032b4:	00812c23          	sw	s0,24(sp)
800032b8:	02010413          	add	s0,sp,32
800032bc:	341027f3          	csrr	a5,mepc
800032c0:	00078093          	mv	ra,a5
800032c4:	00008793          	mv	a5,ra
800032c8:	fef42623          	sw	a5,-20(s0)
800032cc:	343027f3          	csrr	a5,mtval
800032d0:	00078093          	mv	ra,a5
800032d4:	00008793          	mv	a5,ra
800032d8:	fef42423          	sw	a5,-24(s0)
800032dc:	fec42583          	lw	a1,-20(s0)
800032e0:	a00007b7          	lui	a5,0xa0000
800032e4:	2d478513          	add	a0,a5,724 # a00002d4 <main+0x1fffa554>
800032e8:	219020ef          	jal	80005d00 <printf_>
800032ec:	fe842583          	lw	a1,-24(s0)
800032f0:	a00007b7          	lui	a5,0xa0000
800032f4:	2ec78513          	add	a0,a5,748 # a00002ec <main+0x1fffa56c>
800032f8:	209020ef          	jal	80005d00 <printf_>
800032fc:	000027b7          	lui	a5,0x2
80003300:	81878793          	add	a5,a5,-2024 # 1818 <__stack_size-0x27e8>
80003304:	fef42223          	sw	a5,-28(s0)
80003308:	fe442783          	lw	a5,-28(s0)
8000330c:	3a079073          	csrw	pmpcfg0,a5
80003310:	a00007b7          	lui	a5,0xa0000
80003314:	30c78513          	add	a0,a5,780 # a000030c <main+0x1fffa58c>
80003318:	1e9020ef          	jal	80005d00 <printf_>
8000331c:	00000013          	nop
80003320:	01c12083          	lw	ra,28(sp)
80003324:	01812403          	lw	s0,24(sp)
80003328:	02010113          	add	sp,sp,32
8000332c:	00008067          	ret

80003330 <sbi_load_access_handler>:
80003330:	fe010113          	add	sp,sp,-32
80003334:	00112e23          	sw	ra,28(sp)
80003338:	00812c23          	sw	s0,24(sp)
8000333c:	02010413          	add	s0,sp,32
80003340:	341027f3          	csrr	a5,mepc
80003344:	00078093          	mv	ra,a5
80003348:	00008793          	mv	a5,ra
8000334c:	fef42623          	sw	a5,-20(s0)
80003350:	343027f3          	csrr	a5,mtval
80003354:	00078093          	mv	ra,a5
80003358:	00008793          	mv	a5,ra
8000335c:	fef42423          	sw	a5,-24(s0)
80003360:	fec42583          	lw	a1,-20(s0)
80003364:	a00007b7          	lui	a5,0xa0000
80003368:	35878513          	add	a0,a5,856 # a0000358 <main+0x1fffa5d8>
8000336c:	195020ef          	jal	80005d00 <printf_>
80003370:	fe842583          	lw	a1,-24(s0)
80003374:	a00007b7          	lui	a5,0xa0000
80003378:	37078513          	add	a0,a5,880 # a0000370 <main+0x1fffa5f0>
8000337c:	185020ef          	jal	80005d00 <printf_>
80003380:	a00007b7          	lui	a5,0xa0000
80003384:	39078513          	add	a0,a5,912 # a0000390 <main+0x1fffa610>
80003388:	179020ef          	jal	80005d00 <printf_>
8000338c:	00000013          	nop
80003390:	01c12083          	lw	ra,28(sp)
80003394:	01812403          	lw	s0,24(sp)
80003398:	02010113          	add	sp,sp,32
8000339c:	00008067          	ret

800033a0 <sbi_trap_irq>:
800033a0:	fe010113          	add	sp,sp,-32
800033a4:	00112e23          	sw	ra,28(sp)
800033a8:	00812c23          	sw	s0,24(sp)
800033ac:	02010413          	add	s0,sp,32
800033b0:	fea42623          	sw	a0,-20(s0)
800033b4:	fec42703          	lw	a4,-20(s0)
800033b8:	800007b7          	lui	a5,0x80000
800033bc:	fff78793          	add	a5,a5,-1 # 7fffffff <__stack_size+0x7fffbfff>
800033c0:	00f777b3          	and	a5,a4,a5
800033c4:	fef42623          	sw	a5,-20(s0)
800033c8:	fec42703          	lw	a4,-20(s0)
800033cc:	00b00793          	li	a5,11
800033d0:	04f70463          	beq	a4,a5,80003418 <sbi_trap_irq+0x78>
800033d4:	fec42703          	lw	a4,-20(s0)
800033d8:	00b00793          	li	a5,11
800033dc:	04e7e863          	bltu	a5,a4,8000342c <sbi_trap_irq+0x8c>
800033e0:	fec42703          	lw	a4,-20(s0)
800033e4:	00300793          	li	a5,3
800033e8:	02f70063          	beq	a4,a5,80003408 <sbi_trap_irq+0x68>
800033ec:	fec42703          	lw	a4,-20(s0)
800033f0:	00700793          	li	a5,7
800033f4:	02f71c63          	bne	a4,a5,8000342c <sbi_trap_irq+0x8c>
800033f8:	a00007b7          	lui	a5,0xa0000
800033fc:	3dc78513          	add	a0,a5,988 # a00003dc <main+0x1fffa65c>
80003400:	101020ef          	jal	80005d00 <printf_>
80003404:	02c0006f          	j	80003430 <sbi_trap_irq+0x90>
80003408:	a00007b7          	lui	a5,0xa0000
8000340c:	3f078513          	add	a0,a5,1008 # a00003f0 <main+0x1fffa670>
80003410:	0f1020ef          	jal	80005d00 <printf_>
80003414:	01c0006f          	j	80003430 <sbi_trap_irq+0x90>
80003418:	a00007b7          	lui	a5,0xa0000
8000341c:	40878513          	add	a0,a5,1032 # a0000408 <main+0x1fffa688>
80003420:	0e1020ef          	jal	80005d00 <printf_>
80003424:	d69ff0ef          	jal	8000318c <sbi_irqchip_process>
80003428:	0080006f          	j	80003430 <sbi_trap_irq+0x90>
8000342c:	00000013          	nop
80003430:	00000793          	li	a5,0
80003434:	00078513          	mv	a0,a5
80003438:	01c12083          	lw	ra,28(sp)
8000343c:	01812403          	lw	s0,24(sp)
80003440:	02010113          	add	sp,sp,32
80003444:	00008067          	ret

80003448 <toy_trap_handler>:
80003448:	fd010113          	add	sp,sp,-48
8000344c:	02112623          	sw	ra,44(sp)
80003450:	02812423          	sw	s0,40(sp)
80003454:	03010413          	add	s0,sp,48
80003458:	fca42e23          	sw	a0,-36(s0)
8000345c:	a00007b7          	lui	a5,0xa0000
80003460:	42078513          	add	a0,a5,1056 # a0000420 <main+0x1fffa6a0>
80003464:	09d020ef          	jal	80005d00 <printf_>
80003468:	341027f3          	csrr	a5,mepc
8000346c:	00078093          	mv	ra,a5
80003470:	00008793          	mv	a5,ra
80003474:	fef42623          	sw	a5,-20(s0)
80003478:	342027f3          	csrr	a5,mcause
8000347c:	00078093          	mv	ra,a5
80003480:	00008793          	mv	a5,ra
80003484:	fef42423          	sw	a5,-24(s0)
80003488:	343027f3          	csrr	a5,mtval
8000348c:	00078093          	mv	ra,a5
80003490:	00008793          	mv	a5,ra
80003494:	fef42223          	sw	a5,-28(s0)
80003498:	fec42583          	lw	a1,-20(s0)
8000349c:	a00007b7          	lui	a5,0xa0000
800034a0:	45c78513          	add	a0,a5,1116 # a000045c <main+0x1fffa6dc>
800034a4:	05d020ef          	jal	80005d00 <printf_>
800034a8:	fe842583          	lw	a1,-24(s0)
800034ac:	a00007b7          	lui	a5,0xa0000
800034b0:	47478513          	add	a0,a5,1140 # a0000474 <main+0x1fffa6f4>
800034b4:	04d020ef          	jal	80005d00 <printf_>
800034b8:	fe442583          	lw	a1,-28(s0)
800034bc:	a00007b7          	lui	a5,0xa0000
800034c0:	48c78513          	add	a0,a5,1164 # a000048c <main+0x1fffa70c>
800034c4:	03d020ef          	jal	80005d00 <printf_>
800034c8:	fe842783          	lw	a5,-24(s0)
800034cc:	0207d663          	bgez	a5,800034f8 <toy_trap_handler+0xb0>
800034d0:	fe842503          	lw	a0,-24(s0)
800034d4:	ecdff0ef          	jal	800033a0 <sbi_trap_irq>
800034d8:	a00017b7          	lui	a5,0xa0001
800034dc:	a787a783          	lw	a5,-1416(a5) # a0000a78 <global_cnt>
800034e0:	00178713          	add	a4,a5,1
800034e4:	a00017b7          	lui	a5,0xa0001
800034e8:	a6e7ac23          	sw	a4,-1416(a5) # a0000a78 <global_cnt>
800034ec:	a00007b7          	lui	a5,0xa0000
800034f0:	4a478513          	add	a0,a5,1188 # a00004a4 <main+0x1fffa724>
800034f4:	00d020ef          	jal	80005d00 <printf_>
800034f8:	fe842703          	lw	a4,-24(s0)
800034fc:	00b00793          	li	a5,11
80003500:	0ce7ee63          	bltu	a5,a4,800035dc <toy_trap_handler+0x194>
80003504:	fe842783          	lw	a5,-24(s0)
80003508:	00279713          	sll	a4,a5,0x2
8000350c:	a00017b7          	lui	a5,0xa0001
80003510:	85878793          	add	a5,a5,-1960 # a0000858 <__clz_tab+0x100>
80003514:	00f707b3          	add	a5,a4,a5
80003518:	0007a783          	lw	a5,0(a5)
8000351c:	00078067          	jr	a5
80003520:	a00007b7          	lui	a5,0xa0000
80003524:	4e078513          	add	a0,a5,1248 # a00004e0 <main+0x1fffa760>
80003528:	7d8020ef          	jal	80005d00 <printf_>
8000352c:	d11ff0ef          	jal	8000323c <sbi_fetch_access_handler>
80003530:	9a1ff0ef          	jal	80002ed0 <to_host>
80003534:	0ac0006f          	j	800035e0 <toy_trap_handler+0x198>
80003538:	a00007b7          	lui	a5,0xa0000
8000353c:	50478513          	add	a0,a5,1284 # a0000504 <main+0x1fffa784>
80003540:	7c0020ef          	jal	80005d00 <printf_>
80003544:	b4dff0ef          	jal	80003090 <sbi_illegal_insn_handler>
80003548:	989ff0ef          	jal	80002ed0 <to_host>
8000354c:	0940006f          	j	800035e0 <toy_trap_handler+0x198>
80003550:	a00007b7          	lui	a5,0xa0000
80003554:	52c78513          	add	a0,a5,1324 # a000052c <main+0x1fffa7ac>
80003558:	7a8020ef          	jal	80005d00 <printf_>
8000355c:	ba5ff0ef          	jal	80003100 <sbi_ebreak_handler>
80003560:	971ff0ef          	jal	80002ed0 <to_host>
80003564:	07c0006f          	j	800035e0 <toy_trap_handler+0x198>
80003568:	a00007b7          	lui	a5,0xa0000
8000356c:	54c78513          	add	a0,a5,1356 # a000054c <main+0x1fffa7cc>
80003570:	790020ef          	jal	80005d00 <printf_>
80003574:	06c0006f          	j	800035e0 <toy_trap_handler+0x198>
80003578:	a00007b7          	lui	a5,0xa0000
8000357c:	57078513          	add	a0,a5,1392 # a0000570 <main+0x1fffa7f0>
80003580:	780020ef          	jal	80005d00 <printf_>
80003584:	05c0006f          	j	800035e0 <toy_trap_handler+0x198>
80003588:	a00007b7          	lui	a5,0xa0000
8000358c:	59478513          	add	a0,a5,1428 # a0000594 <main+0x1fffa814>
80003590:	770020ef          	jal	80005d00 <printf_>
80003594:	04c0006f          	j	800035e0 <toy_trap_handler+0x198>
80003598:	a00007b7          	lui	a5,0xa0000
8000359c:	5b878513          	add	a0,a5,1464 # a00005b8 <main+0x1fffa838>
800035a0:	760020ef          	jal	80005d00 <printf_>
800035a4:	a6dff0ef          	jal	80003010 <sbi_ecall_handler>
800035a8:	0380006f          	j	800035e0 <toy_trap_handler+0x198>
800035ac:	a00007b7          	lui	a5,0xa0000
800035b0:	5d878513          	add	a0,a5,1496 # a00005d8 <main+0x1fffa858>
800035b4:	74c020ef          	jal	80005d00 <printf_>
800035b8:	d79ff0ef          	jal	80003330 <sbi_load_access_handler>
800035bc:	915ff0ef          	jal	80002ed0 <to_host>
800035c0:	0200006f          	j	800035e0 <toy_trap_handler+0x198>
800035c4:	a00007b7          	lui	a5,0xa0000
800035c8:	5f878513          	add	a0,a5,1528 # a00005f8 <main+0x1fffa878>
800035cc:	734020ef          	jal	80005d00 <printf_>
800035d0:	cddff0ef          	jal	800032ac <sbi_store_access_handler>
800035d4:	8fdff0ef          	jal	80002ed0 <to_host>
800035d8:	0080006f          	j	800035e0 <toy_trap_handler+0x198>
800035dc:	00000013          	nop
800035e0:	a00007b7          	lui	a5,0xa0000
800035e4:	61878513          	add	a0,a5,1560 # a0000618 <main+0x1fffa898>
800035e8:	718020ef          	jal	80005d00 <printf_>
800035ec:	fdc42783          	lw	a5,-36(s0)
800035f0:	00078513          	mv	a0,a5
800035f4:	02c12083          	lw	ra,44(sp)
800035f8:	02812403          	lw	s0,40(sp)
800035fc:	03010113          	add	sp,sp,48
80003600:	00008067          	ret

80003604 <uart_init>:
80003604:	fe010113          	add	sp,sp,-32
80003608:	00812e23          	sw	s0,28(sp)
8000360c:	02010413          	add	s0,sp,32
80003610:	fea42623          	sw	a0,-20(s0)
80003614:	feb42423          	sw	a1,-24(s0)
80003618:	fec42783          	lw	a5,-20(s0)
8000361c:	fe842703          	lw	a4,-24(s0)
80003620:	00e7a023          	sw	a4,0(a5)
80003624:	00000013          	nop
80003628:	01c12403          	lw	s0,28(sp)
8000362c:	02010113          	add	sp,sp,32
80003630:	00008067          	ret

80003634 <uart_put_char>:
80003634:	fd010113          	add	sp,sp,-48
80003638:	02812623          	sw	s0,44(sp)
8000363c:	03010413          	add	s0,sp,48
80003640:	fca42e23          	sw	a0,-36(s0)
80003644:	00058793          	mv	a5,a1
80003648:	fcf40da3          	sb	a5,-37(s0)
8000364c:	fdc42783          	lw	a5,-36(s0)
80003650:	0007a783          	lw	a5,0(a5)
80003654:	fef42623          	sw	a5,-20(s0)
80003658:	fdb44703          	lbu	a4,-37(s0)
8000365c:	fec42783          	lw	a5,-20(s0)
80003660:	00e7a023          	sw	a4,0(a5)
80003664:	00000013          	nop
80003668:	02c12403          	lw	s0,44(sp)
8000366c:	03010113          	add	sp,sp,48
80003670:	00008067          	ret

80003674 <_out_null>:
80003674:	fe010113          	add	sp,sp,-32
80003678:	00812e23          	sw	s0,28(sp)
8000367c:	02010413          	add	s0,sp,32
80003680:	00050793          	mv	a5,a0
80003684:	feb42423          	sw	a1,-24(s0)
80003688:	fec42223          	sw	a2,-28(s0)
8000368c:	fed42023          	sw	a3,-32(s0)
80003690:	fef407a3          	sb	a5,-17(s0)
80003694:	00000013          	nop
80003698:	01c12403          	lw	s0,28(sp)
8000369c:	02010113          	add	sp,sp,32
800036a0:	00008067          	ret

800036a4 <_out_char>:
800036a4:	fe010113          	add	sp,sp,-32
800036a8:	00112e23          	sw	ra,28(sp)
800036ac:	00812c23          	sw	s0,24(sp)
800036b0:	02010413          	add	s0,sp,32
800036b4:	00050793          	mv	a5,a0
800036b8:	feb42423          	sw	a1,-24(s0)
800036bc:	fec42223          	sw	a2,-28(s0)
800036c0:	fed42023          	sw	a3,-32(s0)
800036c4:	fef407a3          	sb	a5,-17(s0)
800036c8:	fef44783          	lbu	a5,-17(s0)
800036cc:	00078863          	beqz	a5,800036dc <_out_char+0x38>
800036d0:	fef44783          	lbu	a5,-17(s0)
800036d4:	00078513          	mv	a0,a5
800036d8:	829ff0ef          	jal	80002f00 <_putchar>
800036dc:	00000013          	nop
800036e0:	01c12083          	lw	ra,28(sp)
800036e4:	01812403          	lw	s0,24(sp)
800036e8:	02010113          	add	sp,sp,32
800036ec:	00008067          	ret

800036f0 <_strnlen_s>:
800036f0:	fd010113          	add	sp,sp,-48
800036f4:	02812623          	sw	s0,44(sp)
800036f8:	03010413          	add	s0,sp,48
800036fc:	fca42e23          	sw	a0,-36(s0)
80003700:	fcb42c23          	sw	a1,-40(s0)
80003704:	fdc42783          	lw	a5,-36(s0)
80003708:	fef42623          	sw	a5,-20(s0)
8000370c:	0100006f          	j	8000371c <_strnlen_s+0x2c>
80003710:	fec42783          	lw	a5,-20(s0)
80003714:	00178793          	add	a5,a5,1
80003718:	fef42623          	sw	a5,-20(s0)
8000371c:	fec42783          	lw	a5,-20(s0)
80003720:	0007c783          	lbu	a5,0(a5)
80003724:	00078a63          	beqz	a5,80003738 <_strnlen_s+0x48>
80003728:	fd842783          	lw	a5,-40(s0)
8000372c:	fff78713          	add	a4,a5,-1
80003730:	fce42c23          	sw	a4,-40(s0)
80003734:	fc079ee3          	bnez	a5,80003710 <_strnlen_s+0x20>
80003738:	fec42703          	lw	a4,-20(s0)
8000373c:	fdc42783          	lw	a5,-36(s0)
80003740:	40f707b3          	sub	a5,a4,a5
80003744:	00078513          	mv	a0,a5
80003748:	02c12403          	lw	s0,44(sp)
8000374c:	03010113          	add	sp,sp,48
80003750:	00008067          	ret

80003754 <_is_digit>:
80003754:	fe010113          	add	sp,sp,-32
80003758:	00812e23          	sw	s0,28(sp)
8000375c:	02010413          	add	s0,sp,32
80003760:	00050793          	mv	a5,a0
80003764:	fef407a3          	sb	a5,-17(s0)
80003768:	fef44703          	lbu	a4,-17(s0)
8000376c:	02f00793          	li	a5,47
80003770:	00e7fc63          	bgeu	a5,a4,80003788 <_is_digit+0x34>
80003774:	fef44703          	lbu	a4,-17(s0)
80003778:	03900793          	li	a5,57
8000377c:	00e7e663          	bltu	a5,a4,80003788 <_is_digit+0x34>
80003780:	00100793          	li	a5,1
80003784:	0080006f          	j	8000378c <_is_digit+0x38>
80003788:	00000793          	li	a5,0
8000378c:	0017f793          	and	a5,a5,1
80003790:	0ff7f793          	zext.b	a5,a5
80003794:	00078513          	mv	a0,a5
80003798:	01c12403          	lw	s0,28(sp)
8000379c:	02010113          	add	sp,sp,32
800037a0:	00008067          	ret

800037a4 <_atoi>:
800037a4:	fd010113          	add	sp,sp,-48
800037a8:	02112623          	sw	ra,44(sp)
800037ac:	02812423          	sw	s0,40(sp)
800037b0:	03010413          	add	s0,sp,48
800037b4:	fca42e23          	sw	a0,-36(s0)
800037b8:	fe042623          	sw	zero,-20(s0)
800037bc:	0400006f          	j	800037fc <_atoi+0x58>
800037c0:	fec42703          	lw	a4,-20(s0)
800037c4:	00070793          	mv	a5,a4
800037c8:	00279793          	sll	a5,a5,0x2
800037cc:	00e787b3          	add	a5,a5,a4
800037d0:	00179793          	sll	a5,a5,0x1
800037d4:	00078613          	mv	a2,a5
800037d8:	fdc42783          	lw	a5,-36(s0)
800037dc:	0007a783          	lw	a5,0(a5)
800037e0:	00178693          	add	a3,a5,1
800037e4:	fdc42703          	lw	a4,-36(s0)
800037e8:	00d72023          	sw	a3,0(a4) # 1000000 <__stack_size+0xffc000>
800037ec:	0007c783          	lbu	a5,0(a5)
800037f0:	00f607b3          	add	a5,a2,a5
800037f4:	fd078793          	add	a5,a5,-48
800037f8:	fef42623          	sw	a5,-20(s0)
800037fc:	fdc42783          	lw	a5,-36(s0)
80003800:	0007a783          	lw	a5,0(a5)
80003804:	0007c783          	lbu	a5,0(a5)
80003808:	00078513          	mv	a0,a5
8000380c:	f49ff0ef          	jal	80003754 <_is_digit>
80003810:	00050793          	mv	a5,a0
80003814:	fa0796e3          	bnez	a5,800037c0 <_atoi+0x1c>
80003818:	fec42783          	lw	a5,-20(s0)
8000381c:	00078513          	mv	a0,a5
80003820:	02c12083          	lw	ra,44(sp)
80003824:	02812403          	lw	s0,40(sp)
80003828:	03010113          	add	sp,sp,48
8000382c:	00008067          	ret

80003830 <_out_rev>:
80003830:	fc010113          	add	sp,sp,-64
80003834:	02112e23          	sw	ra,60(sp)
80003838:	02812c23          	sw	s0,56(sp)
8000383c:	04010413          	add	s0,sp,64
80003840:	fca42e23          	sw	a0,-36(s0)
80003844:	fcb42c23          	sw	a1,-40(s0)
80003848:	fcc42a23          	sw	a2,-44(s0)
8000384c:	fcd42823          	sw	a3,-48(s0)
80003850:	fce42623          	sw	a4,-52(s0)
80003854:	fcf42423          	sw	a5,-56(s0)
80003858:	fd042223          	sw	a6,-60(s0)
8000385c:	fd142023          	sw	a7,-64(s0)
80003860:	fd442783          	lw	a5,-44(s0)
80003864:	fef42423          	sw	a5,-24(s0)
80003868:	fc042783          	lw	a5,-64(s0)
8000386c:	0027f793          	and	a5,a5,2
80003870:	08079c63          	bnez	a5,80003908 <_out_rev+0xd8>
80003874:	fc042783          	lw	a5,-64(s0)
80003878:	0017f793          	and	a5,a5,1
8000387c:	08079663          	bnez	a5,80003908 <_out_rev+0xd8>
80003880:	fc842783          	lw	a5,-56(s0)
80003884:	fef42623          	sw	a5,-20(s0)
80003888:	0340006f          	j	800038bc <_out_rev+0x8c>
8000388c:	fd442783          	lw	a5,-44(s0)
80003890:	00178713          	add	a4,a5,1
80003894:	fce42a23          	sw	a4,-44(s0)
80003898:	fdc42703          	lw	a4,-36(s0)
8000389c:	fd042683          	lw	a3,-48(s0)
800038a0:	00078613          	mv	a2,a5
800038a4:	fd842583          	lw	a1,-40(s0)
800038a8:	02000513          	li	a0,32
800038ac:	000700e7          	jalr	a4
800038b0:	fec42783          	lw	a5,-20(s0)
800038b4:	00178793          	add	a5,a5,1
800038b8:	fef42623          	sw	a5,-20(s0)
800038bc:	fec42703          	lw	a4,-20(s0)
800038c0:	fc442783          	lw	a5,-60(s0)
800038c4:	fcf764e3          	bltu	a4,a5,8000388c <_out_rev+0x5c>
800038c8:	0400006f          	j	80003908 <_out_rev+0xd8>
800038cc:	fc842783          	lw	a5,-56(s0)
800038d0:	fff78793          	add	a5,a5,-1
800038d4:	fcf42423          	sw	a5,-56(s0)
800038d8:	fcc42703          	lw	a4,-52(s0)
800038dc:	fc842783          	lw	a5,-56(s0)
800038e0:	00f707b3          	add	a5,a4,a5
800038e4:	0007c503          	lbu	a0,0(a5)
800038e8:	fd442783          	lw	a5,-44(s0)
800038ec:	00178713          	add	a4,a5,1
800038f0:	fce42a23          	sw	a4,-44(s0)
800038f4:	fdc42703          	lw	a4,-36(s0)
800038f8:	fd042683          	lw	a3,-48(s0)
800038fc:	00078613          	mv	a2,a5
80003900:	fd842583          	lw	a1,-40(s0)
80003904:	000700e7          	jalr	a4
80003908:	fc842783          	lw	a5,-56(s0)
8000390c:	fc0790e3          	bnez	a5,800038cc <_out_rev+0x9c>
80003910:	fc042783          	lw	a5,-64(s0)
80003914:	0027f793          	and	a5,a5,2
80003918:	04078063          	beqz	a5,80003958 <_out_rev+0x128>
8000391c:	0280006f          	j	80003944 <_out_rev+0x114>
80003920:	fd442783          	lw	a5,-44(s0)
80003924:	00178713          	add	a4,a5,1
80003928:	fce42a23          	sw	a4,-44(s0)
8000392c:	fdc42703          	lw	a4,-36(s0)
80003930:	fd042683          	lw	a3,-48(s0)
80003934:	00078613          	mv	a2,a5
80003938:	fd842583          	lw	a1,-40(s0)
8000393c:	02000513          	li	a0,32
80003940:	000700e7          	jalr	a4
80003944:	fd442703          	lw	a4,-44(s0)
80003948:	fe842783          	lw	a5,-24(s0)
8000394c:	40f707b3          	sub	a5,a4,a5
80003950:	fc442703          	lw	a4,-60(s0)
80003954:	fce7e6e3          	bltu	a5,a4,80003920 <_out_rev+0xf0>
80003958:	fd442783          	lw	a5,-44(s0)
8000395c:	00078513          	mv	a0,a5
80003960:	03c12083          	lw	ra,60(sp)
80003964:	03812403          	lw	s0,56(sp)
80003968:	04010113          	add	sp,sp,64
8000396c:	00008067          	ret

80003970 <_ntoa_format>:
80003970:	fd010113          	add	sp,sp,-48
80003974:	02112623          	sw	ra,44(sp)
80003978:	02812423          	sw	s0,40(sp)
8000397c:	03010413          	add	s0,sp,48
80003980:	fea42623          	sw	a0,-20(s0)
80003984:	feb42423          	sw	a1,-24(s0)
80003988:	fec42223          	sw	a2,-28(s0)
8000398c:	fed42023          	sw	a3,-32(s0)
80003990:	fce42e23          	sw	a4,-36(s0)
80003994:	fcf42c23          	sw	a5,-40(s0)
80003998:	00080793          	mv	a5,a6
8000399c:	fd142823          	sw	a7,-48(s0)
800039a0:	fcf40ba3          	sb	a5,-41(s0)
800039a4:	00842783          	lw	a5,8(s0)
800039a8:	0027f793          	and	a5,a5,2
800039ac:	0a079a63          	bnez	a5,80003a60 <_ntoa_format+0xf0>
800039b0:	00442783          	lw	a5,4(s0)
800039b4:	04078863          	beqz	a5,80003a04 <_ntoa_format+0x94>
800039b8:	00842783          	lw	a5,8(s0)
800039bc:	0017f793          	and	a5,a5,1
800039c0:	04078263          	beqz	a5,80003a04 <_ntoa_format+0x94>
800039c4:	fd744783          	lbu	a5,-41(s0)
800039c8:	00079863          	bnez	a5,800039d8 <_ntoa_format+0x68>
800039cc:	00842783          	lw	a5,8(s0)
800039d0:	00c7f793          	and	a5,a5,12
800039d4:	02078863          	beqz	a5,80003a04 <_ntoa_format+0x94>
800039d8:	00442783          	lw	a5,4(s0)
800039dc:	fff78793          	add	a5,a5,-1
800039e0:	00f42223          	sw	a5,4(s0)
800039e4:	0200006f          	j	80003a04 <_ntoa_format+0x94>
800039e8:	fd842783          	lw	a5,-40(s0)
800039ec:	00178713          	add	a4,a5,1
800039f0:	fce42c23          	sw	a4,-40(s0)
800039f4:	fdc42703          	lw	a4,-36(s0)
800039f8:	00f707b3          	add	a5,a4,a5
800039fc:	03000713          	li	a4,48
80003a00:	00e78023          	sb	a4,0(a5)
80003a04:	fd842703          	lw	a4,-40(s0)
80003a08:	00042783          	lw	a5,0(s0)
80003a0c:	02f77863          	bgeu	a4,a5,80003a3c <_ntoa_format+0xcc>
80003a10:	fd842703          	lw	a4,-40(s0)
80003a14:	01f00793          	li	a5,31
80003a18:	fce7f8e3          	bgeu	a5,a4,800039e8 <_ntoa_format+0x78>
80003a1c:	0200006f          	j	80003a3c <_ntoa_format+0xcc>
80003a20:	fd842783          	lw	a5,-40(s0)
80003a24:	00178713          	add	a4,a5,1
80003a28:	fce42c23          	sw	a4,-40(s0)
80003a2c:	fdc42703          	lw	a4,-36(s0)
80003a30:	00f707b3          	add	a5,a4,a5
80003a34:	03000713          	li	a4,48
80003a38:	00e78023          	sb	a4,0(a5)
80003a3c:	00842783          	lw	a5,8(s0)
80003a40:	0017f793          	and	a5,a5,1
80003a44:	00078e63          	beqz	a5,80003a60 <_ntoa_format+0xf0>
80003a48:	fd842703          	lw	a4,-40(s0)
80003a4c:	00442783          	lw	a5,4(s0)
80003a50:	00f77863          	bgeu	a4,a5,80003a60 <_ntoa_format+0xf0>
80003a54:	fd842703          	lw	a4,-40(s0)
80003a58:	01f00793          	li	a5,31
80003a5c:	fce7f2e3          	bgeu	a5,a4,80003a20 <_ntoa_format+0xb0>
80003a60:	00842783          	lw	a5,8(s0)
80003a64:	0107f793          	and	a5,a5,16
80003a68:	14078063          	beqz	a5,80003ba8 <_ntoa_format+0x238>
80003a6c:	00842783          	lw	a5,8(s0)
80003a70:	4007f793          	and	a5,a5,1024
80003a74:	04079863          	bnez	a5,80003ac4 <_ntoa_format+0x154>
80003a78:	fd842783          	lw	a5,-40(s0)
80003a7c:	04078463          	beqz	a5,80003ac4 <_ntoa_format+0x154>
80003a80:	fd842703          	lw	a4,-40(s0)
80003a84:	00042783          	lw	a5,0(s0)
80003a88:	00f70863          	beq	a4,a5,80003a98 <_ntoa_format+0x128>
80003a8c:	fd842703          	lw	a4,-40(s0)
80003a90:	00442783          	lw	a5,4(s0)
80003a94:	02f71863          	bne	a4,a5,80003ac4 <_ntoa_format+0x154>
80003a98:	fd842783          	lw	a5,-40(s0)
80003a9c:	fff78793          	add	a5,a5,-1
80003aa0:	fcf42c23          	sw	a5,-40(s0)
80003aa4:	fd842783          	lw	a5,-40(s0)
80003aa8:	00078e63          	beqz	a5,80003ac4 <_ntoa_format+0x154>
80003aac:	fd042703          	lw	a4,-48(s0)
80003ab0:	01000793          	li	a5,16
80003ab4:	00f71863          	bne	a4,a5,80003ac4 <_ntoa_format+0x154>
80003ab8:	fd842783          	lw	a5,-40(s0)
80003abc:	fff78793          	add	a5,a5,-1
80003ac0:	fcf42c23          	sw	a5,-40(s0)
80003ac4:	fd042703          	lw	a4,-48(s0)
80003ac8:	01000793          	li	a5,16
80003acc:	02f71e63          	bne	a4,a5,80003b08 <_ntoa_format+0x198>
80003ad0:	00842783          	lw	a5,8(s0)
80003ad4:	0207f793          	and	a5,a5,32
80003ad8:	02079863          	bnez	a5,80003b08 <_ntoa_format+0x198>
80003adc:	fd842703          	lw	a4,-40(s0)
80003ae0:	01f00793          	li	a5,31
80003ae4:	02e7e263          	bltu	a5,a4,80003b08 <_ntoa_format+0x198>
80003ae8:	fd842783          	lw	a5,-40(s0)
80003aec:	00178713          	add	a4,a5,1
80003af0:	fce42c23          	sw	a4,-40(s0)
80003af4:	fdc42703          	lw	a4,-36(s0)
80003af8:	00f707b3          	add	a5,a4,a5
80003afc:	07800713          	li	a4,120
80003b00:	00e78023          	sb	a4,0(a5)
80003b04:	07c0006f          	j	80003b80 <_ntoa_format+0x210>
80003b08:	fd042703          	lw	a4,-48(s0)
80003b0c:	01000793          	li	a5,16
80003b10:	02f71e63          	bne	a4,a5,80003b4c <_ntoa_format+0x1dc>
80003b14:	00842783          	lw	a5,8(s0)
80003b18:	0207f793          	and	a5,a5,32
80003b1c:	02078863          	beqz	a5,80003b4c <_ntoa_format+0x1dc>
80003b20:	fd842703          	lw	a4,-40(s0)
80003b24:	01f00793          	li	a5,31
80003b28:	02e7e263          	bltu	a5,a4,80003b4c <_ntoa_format+0x1dc>
80003b2c:	fd842783          	lw	a5,-40(s0)
80003b30:	00178713          	add	a4,a5,1
80003b34:	fce42c23          	sw	a4,-40(s0)
80003b38:	fdc42703          	lw	a4,-36(s0)
80003b3c:	00f707b3          	add	a5,a4,a5
80003b40:	05800713          	li	a4,88
80003b44:	00e78023          	sb	a4,0(a5)
80003b48:	0380006f          	j	80003b80 <_ntoa_format+0x210>
80003b4c:	fd042703          	lw	a4,-48(s0)
80003b50:	00200793          	li	a5,2
80003b54:	02f71663          	bne	a4,a5,80003b80 <_ntoa_format+0x210>
80003b58:	fd842703          	lw	a4,-40(s0)
80003b5c:	01f00793          	li	a5,31
80003b60:	02e7e063          	bltu	a5,a4,80003b80 <_ntoa_format+0x210>
80003b64:	fd842783          	lw	a5,-40(s0)
80003b68:	00178713          	add	a4,a5,1
80003b6c:	fce42c23          	sw	a4,-40(s0)
80003b70:	fdc42703          	lw	a4,-36(s0)
80003b74:	00f707b3          	add	a5,a4,a5
80003b78:	06200713          	li	a4,98
80003b7c:	00e78023          	sb	a4,0(a5)
80003b80:	fd842703          	lw	a4,-40(s0)
80003b84:	01f00793          	li	a5,31
80003b88:	02e7e063          	bltu	a5,a4,80003ba8 <_ntoa_format+0x238>
80003b8c:	fd842783          	lw	a5,-40(s0)
80003b90:	00178713          	add	a4,a5,1
80003b94:	fce42c23          	sw	a4,-40(s0)
80003b98:	fdc42703          	lw	a4,-36(s0)
80003b9c:	00f707b3          	add	a5,a4,a5
80003ba0:	03000713          	li	a4,48
80003ba4:	00e78023          	sb	a4,0(a5)
80003ba8:	fd842703          	lw	a4,-40(s0)
80003bac:	01f00793          	li	a5,31
80003bb0:	08e7e063          	bltu	a5,a4,80003c30 <_ntoa_format+0x2c0>
80003bb4:	fd744783          	lbu	a5,-41(s0)
80003bb8:	02078263          	beqz	a5,80003bdc <_ntoa_format+0x26c>
80003bbc:	fd842783          	lw	a5,-40(s0)
80003bc0:	00178713          	add	a4,a5,1
80003bc4:	fce42c23          	sw	a4,-40(s0)
80003bc8:	fdc42703          	lw	a4,-36(s0)
80003bcc:	00f707b3          	add	a5,a4,a5
80003bd0:	02d00713          	li	a4,45
80003bd4:	00e78023          	sb	a4,0(a5)
80003bd8:	0580006f          	j	80003c30 <_ntoa_format+0x2c0>
80003bdc:	00842783          	lw	a5,8(s0)
80003be0:	0047f793          	and	a5,a5,4
80003be4:	02078263          	beqz	a5,80003c08 <_ntoa_format+0x298>
80003be8:	fd842783          	lw	a5,-40(s0)
80003bec:	00178713          	add	a4,a5,1
80003bf0:	fce42c23          	sw	a4,-40(s0)
80003bf4:	fdc42703          	lw	a4,-36(s0)
80003bf8:	00f707b3          	add	a5,a4,a5
80003bfc:	02b00713          	li	a4,43
80003c00:	00e78023          	sb	a4,0(a5)
80003c04:	02c0006f          	j	80003c30 <_ntoa_format+0x2c0>
80003c08:	00842783          	lw	a5,8(s0)
80003c0c:	0087f793          	and	a5,a5,8
80003c10:	02078063          	beqz	a5,80003c30 <_ntoa_format+0x2c0>
80003c14:	fd842783          	lw	a5,-40(s0)
80003c18:	00178713          	add	a4,a5,1
80003c1c:	fce42c23          	sw	a4,-40(s0)
80003c20:	fdc42703          	lw	a4,-36(s0)
80003c24:	00f707b3          	add	a5,a4,a5
80003c28:	02000713          	li	a4,32
80003c2c:	00e78023          	sb	a4,0(a5)
80003c30:	00842883          	lw	a7,8(s0)
80003c34:	00442803          	lw	a6,4(s0)
80003c38:	fd842783          	lw	a5,-40(s0)
80003c3c:	fdc42703          	lw	a4,-36(s0)
80003c40:	fe042683          	lw	a3,-32(s0)
80003c44:	fe442603          	lw	a2,-28(s0)
80003c48:	fe842583          	lw	a1,-24(s0)
80003c4c:	fec42503          	lw	a0,-20(s0)
80003c50:	be1ff0ef          	jal	80003830 <_out_rev>
80003c54:	00050793          	mv	a5,a0
80003c58:	00078513          	mv	a0,a5
80003c5c:	02c12083          	lw	ra,44(sp)
80003c60:	02812403          	lw	s0,40(sp)
80003c64:	03010113          	add	sp,sp,48
80003c68:	00008067          	ret

80003c6c <_ntoa_long>:
80003c6c:	f9010113          	add	sp,sp,-112
80003c70:	06112623          	sw	ra,108(sp)
80003c74:	06812423          	sw	s0,104(sp)
80003c78:	07010413          	add	s0,sp,112
80003c7c:	faa42e23          	sw	a0,-68(s0)
80003c80:	fab42c23          	sw	a1,-72(s0)
80003c84:	fac42a23          	sw	a2,-76(s0)
80003c88:	fad42823          	sw	a3,-80(s0)
80003c8c:	fae42623          	sw	a4,-84(s0)
80003c90:	fb042223          	sw	a6,-92(s0)
80003c94:	fb142023          	sw	a7,-96(s0)
80003c98:	faf405a3          	sb	a5,-85(s0)
80003c9c:	fe042623          	sw	zero,-20(s0)
80003ca0:	fac42783          	lw	a5,-84(s0)
80003ca4:	00079863          	bnez	a5,80003cb4 <_ntoa_long+0x48>
80003ca8:	00442783          	lw	a5,4(s0)
80003cac:	fef7f793          	and	a5,a5,-17
80003cb0:	00f42223          	sw	a5,4(s0)
80003cb4:	00442783          	lw	a5,4(s0)
80003cb8:	4007f793          	and	a5,a5,1024
80003cbc:	00078663          	beqz	a5,80003cc8 <_ntoa_long+0x5c>
80003cc0:	fac42783          	lw	a5,-84(s0)
80003cc4:	08078c63          	beqz	a5,80003d5c <_ntoa_long+0xf0>
80003cc8:	fac42703          	lw	a4,-84(s0)
80003ccc:	fa442783          	lw	a5,-92(s0)
80003cd0:	02f777b3          	remu	a5,a4,a5
80003cd4:	fef405a3          	sb	a5,-21(s0)
80003cd8:	feb44703          	lbu	a4,-21(s0)
80003cdc:	00900793          	li	a5,9
80003ce0:	00e7ea63          	bltu	a5,a4,80003cf4 <_ntoa_long+0x88>
80003ce4:	feb44783          	lbu	a5,-21(s0)
80003ce8:	03078793          	add	a5,a5,48
80003cec:	0ff7f793          	zext.b	a5,a5
80003cf0:	0300006f          	j	80003d20 <_ntoa_long+0xb4>
80003cf4:	00442783          	lw	a5,4(s0)
80003cf8:	0207f793          	and	a5,a5,32
80003cfc:	00078663          	beqz	a5,80003d08 <_ntoa_long+0x9c>
80003d00:	04100793          	li	a5,65
80003d04:	0080006f          	j	80003d0c <_ntoa_long+0xa0>
80003d08:	06100793          	li	a5,97
80003d0c:	feb44703          	lbu	a4,-21(s0)
80003d10:	00e787b3          	add	a5,a5,a4
80003d14:	0ff7f793          	zext.b	a5,a5
80003d18:	ff678793          	add	a5,a5,-10
80003d1c:	0ff7f793          	zext.b	a5,a5
80003d20:	fec42703          	lw	a4,-20(s0)
80003d24:	00170693          	add	a3,a4,1
80003d28:	fed42623          	sw	a3,-20(s0)
80003d2c:	ff070713          	add	a4,a4,-16
80003d30:	00870733          	add	a4,a4,s0
80003d34:	fcf70c23          	sb	a5,-40(a4)
80003d38:	fac42703          	lw	a4,-84(s0)
80003d3c:	fa442783          	lw	a5,-92(s0)
80003d40:	02f757b3          	divu	a5,a4,a5
80003d44:	faf42623          	sw	a5,-84(s0)
80003d48:	fac42783          	lw	a5,-84(s0)
80003d4c:	00078863          	beqz	a5,80003d5c <_ntoa_long+0xf0>
80003d50:	fec42703          	lw	a4,-20(s0)
80003d54:	01f00793          	li	a5,31
80003d58:	f6e7f8e3          	bgeu	a5,a4,80003cc8 <_ntoa_long+0x5c>
80003d5c:	fab44683          	lbu	a3,-85(s0)
80003d60:	fc840713          	add	a4,s0,-56
80003d64:	00442783          	lw	a5,4(s0)
80003d68:	00f12423          	sw	a5,8(sp)
80003d6c:	00042783          	lw	a5,0(s0)
80003d70:	00f12223          	sw	a5,4(sp)
80003d74:	fa042783          	lw	a5,-96(s0)
80003d78:	00f12023          	sw	a5,0(sp)
80003d7c:	fa442883          	lw	a7,-92(s0)
80003d80:	00068813          	mv	a6,a3
80003d84:	fec42783          	lw	a5,-20(s0)
80003d88:	fb042683          	lw	a3,-80(s0)
80003d8c:	fb442603          	lw	a2,-76(s0)
80003d90:	fb842583          	lw	a1,-72(s0)
80003d94:	fbc42503          	lw	a0,-68(s0)
80003d98:	bd9ff0ef          	jal	80003970 <_ntoa_format>
80003d9c:	00050793          	mv	a5,a0
80003da0:	00078513          	mv	a0,a5
80003da4:	06c12083          	lw	ra,108(sp)
80003da8:	06812403          	lw	s0,104(sp)
80003dac:	07010113          	add	sp,sp,112
80003db0:	00008067          	ret

80003db4 <_ntoa_long_long>:
80003db4:	f8010113          	add	sp,sp,-128
80003db8:	06112623          	sw	ra,108(sp)
80003dbc:	06812423          	sw	s0,104(sp)
80003dc0:	07010413          	add	s0,sp,112
80003dc4:	faa42e23          	sw	a0,-68(s0)
80003dc8:	fab42c23          	sw	a1,-72(s0)
80003dcc:	fac42a23          	sw	a2,-76(s0)
80003dd0:	fad42823          	sw	a3,-80(s0)
80003dd4:	fae42423          	sw	a4,-88(s0)
80003dd8:	faf42623          	sw	a5,-84(s0)
80003ddc:	00080793          	mv	a5,a6
80003de0:	01142623          	sw	a7,12(s0)
80003de4:	faf403a3          	sb	a5,-89(s0)
80003de8:	fe042623          	sw	zero,-20(s0)
80003dec:	fa842783          	lw	a5,-88(s0)
80003df0:	fac42703          	lw	a4,-84(s0)
80003df4:	00e7e7b3          	or	a5,a5,a4
80003df8:	00079863          	bnez	a5,80003e08 <_ntoa_long_long+0x54>
80003dfc:	01c42783          	lw	a5,28(s0)
80003e00:	fef7f793          	and	a5,a5,-17
80003e04:	00f42e23          	sw	a5,28(s0)
80003e08:	01c42783          	lw	a5,28(s0)
80003e0c:	4007f793          	and	a5,a5,1024
80003e10:	00078a63          	beqz	a5,80003e24 <_ntoa_long_long+0x70>
80003e14:	fa842783          	lw	a5,-88(s0)
80003e18:	fac42703          	lw	a4,-84(s0)
80003e1c:	00e7e7b3          	or	a5,a5,a4
80003e20:	0c078663          	beqz	a5,80003eec <_ntoa_long_long+0x138>
80003e24:	fa842703          	lw	a4,-88(s0)
80003e28:	fac42783          	lw	a5,-84(s0)
80003e2c:	00c42603          	lw	a2,12(s0)
80003e30:	01042683          	lw	a3,16(s0)
80003e34:	00070513          	mv	a0,a4
80003e38:	00078593          	mv	a1,a5
80003e3c:	ffcfc0ef          	jal	80000638 <__umoddi3>
80003e40:	00050713          	mv	a4,a0
80003e44:	00058793          	mv	a5,a1
80003e48:	fee405a3          	sb	a4,-21(s0)
80003e4c:	feb44703          	lbu	a4,-21(s0)
80003e50:	00900793          	li	a5,9
80003e54:	00e7ea63          	bltu	a5,a4,80003e68 <_ntoa_long_long+0xb4>
80003e58:	feb44783          	lbu	a5,-21(s0)
80003e5c:	03078793          	add	a5,a5,48
80003e60:	0ff7f793          	zext.b	a5,a5
80003e64:	0300006f          	j	80003e94 <_ntoa_long_long+0xe0>
80003e68:	01c42783          	lw	a5,28(s0)
80003e6c:	0207f793          	and	a5,a5,32
80003e70:	00078663          	beqz	a5,80003e7c <_ntoa_long_long+0xc8>
80003e74:	04100793          	li	a5,65
80003e78:	0080006f          	j	80003e80 <_ntoa_long_long+0xcc>
80003e7c:	06100793          	li	a5,97
80003e80:	feb44703          	lbu	a4,-21(s0)
80003e84:	00e787b3          	add	a5,a5,a4
80003e88:	0ff7f793          	zext.b	a5,a5
80003e8c:	ff678793          	add	a5,a5,-10
80003e90:	0ff7f793          	zext.b	a5,a5
80003e94:	fec42703          	lw	a4,-20(s0)
80003e98:	00170693          	add	a3,a4,1
80003e9c:	fed42623          	sw	a3,-20(s0)
80003ea0:	ff070713          	add	a4,a4,-16
80003ea4:	00870733          	add	a4,a4,s0
80003ea8:	fcf70c23          	sb	a5,-40(a4)
80003eac:	00c42603          	lw	a2,12(s0)
80003eb0:	01042683          	lw	a3,16(s0)
80003eb4:	fa842503          	lw	a0,-88(s0)
80003eb8:	fac42583          	lw	a1,-84(s0)
80003ebc:	b4cfc0ef          	jal	80000208 <__udivdi3>
80003ec0:	00050713          	mv	a4,a0
80003ec4:	00058793          	mv	a5,a1
80003ec8:	fae42423          	sw	a4,-88(s0)
80003ecc:	faf42623          	sw	a5,-84(s0)
80003ed0:	fa842783          	lw	a5,-88(s0)
80003ed4:	fac42703          	lw	a4,-84(s0)
80003ed8:	00e7e7b3          	or	a5,a5,a4
80003edc:	00078863          	beqz	a5,80003eec <_ntoa_long_long+0x138>
80003ee0:	fec42703          	lw	a4,-20(s0)
80003ee4:	01f00793          	li	a5,31
80003ee8:	f2e7fee3          	bgeu	a5,a4,80003e24 <_ntoa_long_long+0x70>
80003eec:	00c42603          	lw	a2,12(s0)
80003ef0:	fa744683          	lbu	a3,-89(s0)
80003ef4:	fc840713          	add	a4,s0,-56
80003ef8:	01c42783          	lw	a5,28(s0)
80003efc:	00f12423          	sw	a5,8(sp)
80003f00:	01842783          	lw	a5,24(s0)
80003f04:	00f12223          	sw	a5,4(sp)
80003f08:	01442783          	lw	a5,20(s0)
80003f0c:	00f12023          	sw	a5,0(sp)
80003f10:	00060893          	mv	a7,a2
80003f14:	00068813          	mv	a6,a3
80003f18:	fec42783          	lw	a5,-20(s0)
80003f1c:	fb042683          	lw	a3,-80(s0)
80003f20:	fb442603          	lw	a2,-76(s0)
80003f24:	fb842583          	lw	a1,-72(s0)
80003f28:	fbc42503          	lw	a0,-68(s0)
80003f2c:	a45ff0ef          	jal	80003970 <_ntoa_format>
80003f30:	00050793          	mv	a5,a0
80003f34:	00078513          	mv	a0,a5
80003f38:	06c12083          	lw	ra,108(sp)
80003f3c:	06812403          	lw	s0,104(sp)
80003f40:	08010113          	add	sp,sp,128
80003f44:	00008067          	ret

80003f48 <_ftoa>:
80003f48:	f7010113          	add	sp,sp,-144
80003f4c:	08112623          	sw	ra,140(sp)
80003f50:	08812423          	sw	s0,136(sp)
80003f54:	08912223          	sw	s1,132(sp)
80003f58:	09010413          	add	s0,sp,144
80003f5c:	f8a42e23          	sw	a0,-100(s0)
80003f60:	f8b42c23          	sw	a1,-104(s0)
80003f64:	f8c42a23          	sw	a2,-108(s0)
80003f68:	f8d42823          	sw	a3,-112(s0)
80003f6c:	f8e42423          	sw	a4,-120(s0)
80003f70:	f8f42623          	sw	a5,-116(s0)
80003f74:	f9042223          	sw	a6,-124(s0)
80003f78:	f9142023          	sw	a7,-128(s0)
80003f7c:	fe042623          	sw	zero,-20(s0)
80003f80:	00000713          	li	a4,0
80003f84:	00000793          	li	a5,0
80003f88:	fce42823          	sw	a4,-48(s0)
80003f8c:	fcf42a23          	sw	a5,-44(s0)
80003f90:	f8842603          	lw	a2,-120(s0)
80003f94:	f8c42683          	lw	a3,-116(s0)
80003f98:	f8842503          	lw	a0,-120(s0)
80003f9c:	f8c42583          	lw	a1,-116(s0)
80003fa0:	8edfd0ef          	jal	8000188c <__eqdf2>
80003fa4:	00050793          	mv	a5,a0
80003fa8:	02078a63          	beqz	a5,80003fdc <_ftoa+0x94>
80003fac:	00042883          	lw	a7,0(s0)
80003fb0:	f8042803          	lw	a6,-128(s0)
80003fb4:	00300793          	li	a5,3
80003fb8:	a0000737          	lui	a4,0xa0000
80003fbc:	65070713          	add	a4,a4,1616 # a0000650 <main+0x1fffa8d0>
80003fc0:	f9042683          	lw	a3,-112(s0)
80003fc4:	f9442603          	lw	a2,-108(s0)
80003fc8:	f9842583          	lw	a1,-104(s0)
80003fcc:	f9c42503          	lw	a0,-100(s0)
80003fd0:	861ff0ef          	jal	80003830 <_out_rev>
80003fd4:	00050793          	mv	a5,a0
80003fd8:	6780006f          	j	80004650 <_ftoa+0x708>
80003fdc:	a00007b7          	lui	a5,0xa0000
80003fe0:	6687a603          	lw	a2,1640(a5) # a0000668 <main+0x1fffa8e8>
80003fe4:	66c7a683          	lw	a3,1644(a5)
80003fe8:	f8842503          	lw	a0,-120(s0)
80003fec:	f8c42583          	lw	a1,-116(s0)
80003ff0:	a05fd0ef          	jal	800019f4 <__ledf2>
80003ff4:	00050793          	mv	a5,a0
80003ff8:	0207da63          	bgez	a5,8000402c <_ftoa+0xe4>
80003ffc:	00042883          	lw	a7,0(s0)
80004000:	f8042803          	lw	a6,-128(s0)
80004004:	00400793          	li	a5,4
80004008:	a0000737          	lui	a4,0xa0000
8000400c:	65470713          	add	a4,a4,1620 # a0000654 <main+0x1fffa8d4>
80004010:	f9042683          	lw	a3,-112(s0)
80004014:	f9442603          	lw	a2,-108(s0)
80004018:	f9842583          	lw	a1,-104(s0)
8000401c:	f9c42503          	lw	a0,-100(s0)
80004020:	811ff0ef          	jal	80003830 <_out_rev>
80004024:	00050793          	mv	a5,a0
80004028:	6280006f          	j	80004650 <_ftoa+0x708>
8000402c:	a00007b7          	lui	a5,0xa0000
80004030:	6707a603          	lw	a2,1648(a5) # a0000670 <main+0x1fffa8f0>
80004034:	6747a683          	lw	a3,1652(a5)
80004038:	f8842503          	lw	a0,-120(s0)
8000403c:	f8c42583          	lw	a1,-116(s0)
80004040:	8d9fd0ef          	jal	80001918 <__gedf2>
80004044:	00050793          	mv	a5,a0
80004048:	06f05063          	blez	a5,800040a8 <_ftoa+0x160>
8000404c:	00042783          	lw	a5,0(s0)
80004050:	0047f793          	and	a5,a5,4
80004054:	00078863          	beqz	a5,80004064 <_ftoa+0x11c>
80004058:	a00007b7          	lui	a5,0xa0000
8000405c:	65c78713          	add	a4,a5,1628 # a000065c <main+0x1fffa8dc>
80004060:	00c0006f          	j	8000406c <_ftoa+0x124>
80004064:	a00007b7          	lui	a5,0xa0000
80004068:	66478713          	add	a4,a5,1636 # a0000664 <main+0x1fffa8e4>
8000406c:	00042783          	lw	a5,0(s0)
80004070:	0047f793          	and	a5,a5,4
80004074:	00078663          	beqz	a5,80004080 <_ftoa+0x138>
80004078:	00400793          	li	a5,4
8000407c:	0080006f          	j	80004084 <_ftoa+0x13c>
80004080:	00300793          	li	a5,3
80004084:	00042883          	lw	a7,0(s0)
80004088:	f8042803          	lw	a6,-128(s0)
8000408c:	f9042683          	lw	a3,-112(s0)
80004090:	f9442603          	lw	a2,-108(s0)
80004094:	f9842583          	lw	a1,-104(s0)
80004098:	f9c42503          	lw	a0,-100(s0)
8000409c:	f94ff0ef          	jal	80003830 <_out_rev>
800040a0:	00050793          	mv	a5,a0
800040a4:	5ac0006f          	j	80004650 <_ftoa+0x708>
800040a8:	a00007b7          	lui	a5,0xa0000
800040ac:	6787a603          	lw	a2,1656(a5) # a0000678 <main+0x1fffa8f8>
800040b0:	67c7a683          	lw	a3,1660(a5)
800040b4:	f8842503          	lw	a0,-120(s0)
800040b8:	f8c42583          	lw	a1,-116(s0)
800040bc:	85dfd0ef          	jal	80001918 <__gedf2>
800040c0:	00050793          	mv	a5,a0
800040c4:	02f04263          	bgtz	a5,800040e8 <_ftoa+0x1a0>
800040c8:	a00007b7          	lui	a5,0xa0000
800040cc:	6807a603          	lw	a2,1664(a5) # a0000680 <main+0x1fffa900>
800040d0:	6847a683          	lw	a3,1668(a5)
800040d4:	f8842503          	lw	a0,-120(s0)
800040d8:	f8c42583          	lw	a1,-116(s0)
800040dc:	919fd0ef          	jal	800019f4 <__ledf2>
800040e0:	00050793          	mv	a5,a0
800040e4:	0207dc63          	bgez	a5,8000411c <_ftoa+0x1d4>
800040e8:	00042783          	lw	a5,0(s0)
800040ec:	00f12023          	sw	a5,0(sp)
800040f0:	f8042883          	lw	a7,-128(s0)
800040f4:	f8442803          	lw	a6,-124(s0)
800040f8:	f8842703          	lw	a4,-120(s0)
800040fc:	f8c42783          	lw	a5,-116(s0)
80004100:	f9042683          	lw	a3,-112(s0)
80004104:	f9442603          	lw	a2,-108(s0)
80004108:	f9842583          	lw	a1,-104(s0)
8000410c:	f9c42503          	lw	a0,-100(s0)
80004110:	558000ef          	jal	80004668 <_etoa>
80004114:	00050793          	mv	a5,a0
80004118:	5380006f          	j	80004650 <_ftoa+0x708>
8000411c:	fe0405a3          	sb	zero,-21(s0)
80004120:	00000613          	li	a2,0
80004124:	00000693          	li	a3,0
80004128:	f8842503          	lw	a0,-120(s0)
8000412c:	f8c42583          	lw	a1,-116(s0)
80004130:	8c5fd0ef          	jal	800019f4 <__ledf2>
80004134:	00050793          	mv	a5,a0
80004138:	0207d863          	bgez	a5,80004168 <_ftoa+0x220>
8000413c:	00100793          	li	a5,1
80004140:	fef405a3          	sb	a5,-21(s0)
80004144:	f8842603          	lw	a2,-120(s0)
80004148:	f8c42683          	lw	a3,-116(s0)
8000414c:	00000513          	li	a0,0
80004150:	00000593          	li	a1,0
80004154:	f6dfd0ef          	jal	800020c0 <__subdf3>
80004158:	00050713          	mv	a4,a0
8000415c:	00058793          	mv	a5,a1
80004160:	f8e42423          	sw	a4,-120(s0)
80004164:	f8f42623          	sw	a5,-116(s0)
80004168:	00042783          	lw	a5,0(s0)
8000416c:	4007f793          	and	a5,a5,1024
80004170:	02079c63          	bnez	a5,800041a8 <_ftoa+0x260>
80004174:	00600793          	li	a5,6
80004178:	f8f42223          	sw	a5,-124(s0)
8000417c:	02c0006f          	j	800041a8 <_ftoa+0x260>
80004180:	fec42783          	lw	a5,-20(s0)
80004184:	00178713          	add	a4,a5,1
80004188:	fee42623          	sw	a4,-20(s0)
8000418c:	ff078793          	add	a5,a5,-16
80004190:	008787b3          	add	a5,a5,s0
80004194:	03000713          	li	a4,48
80004198:	fae78c23          	sb	a4,-72(a5)
8000419c:	f8442783          	lw	a5,-124(s0)
800041a0:	fff78793          	add	a5,a5,-1
800041a4:	f8f42223          	sw	a5,-124(s0)
800041a8:	fec42703          	lw	a4,-20(s0)
800041ac:	01f00793          	li	a5,31
800041b0:	00e7e863          	bltu	a5,a4,800041c0 <_ftoa+0x278>
800041b4:	f8442703          	lw	a4,-124(s0)
800041b8:	00900793          	li	a5,9
800041bc:	fce7e2e3          	bltu	a5,a4,80004180 <_ftoa+0x238>
800041c0:	f8842503          	lw	a0,-120(s0)
800041c4:	f8c42583          	lw	a1,-116(s0)
800041c8:	ea0fe0ef          	jal	80002868 <__fixdfsi>
800041cc:	00050793          	mv	a5,a0
800041d0:	fef42223          	sw	a5,-28(s0)
800041d4:	fe442503          	lw	a0,-28(s0)
800041d8:	f8cfe0ef          	jal	80002964 <__floatsidf>
800041dc:	00050713          	mv	a4,a0
800041e0:	00058793          	mv	a5,a1
800041e4:	00070613          	mv	a2,a4
800041e8:	00078693          	mv	a3,a5
800041ec:	f8842503          	lw	a0,-120(s0)
800041f0:	f8c42583          	lw	a1,-116(s0)
800041f4:	ecdfd0ef          	jal	800020c0 <__subdf3>
800041f8:	00050713          	mv	a4,a0
800041fc:	00058793          	mv	a5,a1
80004200:	00070513          	mv	a0,a4
80004204:	00078593          	mv	a1,a5
80004208:	a00017b7          	lui	a5,0xa0001
8000420c:	a2878713          	add	a4,a5,-1496 # a0000a28 <pow10.0>
80004210:	f8442783          	lw	a5,-124(s0)
80004214:	00379793          	sll	a5,a5,0x3
80004218:	00f707b3          	add	a5,a4,a5
8000421c:	0007a703          	lw	a4,0(a5)
80004220:	0047a783          	lw	a5,4(a5)
80004224:	00070613          	mv	a2,a4
80004228:	00078693          	mv	a3,a5
8000422c:	8a5fd0ef          	jal	80001ad0 <__muldf3>
80004230:	00050713          	mv	a4,a0
80004234:	00058793          	mv	a5,a1
80004238:	fce42423          	sw	a4,-56(s0)
8000423c:	fcf42623          	sw	a5,-52(s0)
80004240:	fc842503          	lw	a0,-56(s0)
80004244:	fcc42583          	lw	a1,-52(s0)
80004248:	ea0fe0ef          	jal	800028e8 <__fixunsdfsi>
8000424c:	00050793          	mv	a5,a0
80004250:	fef42023          	sw	a5,-32(s0)
80004254:	fe042503          	lw	a0,-32(s0)
80004258:	fb4fe0ef          	jal	80002a0c <__floatunsidf>
8000425c:	00050713          	mv	a4,a0
80004260:	00058793          	mv	a5,a1
80004264:	00070613          	mv	a2,a4
80004268:	00078693          	mv	a3,a5
8000426c:	fc842503          	lw	a0,-56(s0)
80004270:	fcc42583          	lw	a1,-52(s0)
80004274:	e4dfd0ef          	jal	800020c0 <__subdf3>
80004278:	00050713          	mv	a4,a0
8000427c:	00058793          	mv	a5,a1
80004280:	fce42823          	sw	a4,-48(s0)
80004284:	fcf42a23          	sw	a5,-44(s0)
80004288:	a00007b7          	lui	a5,0xa0000
8000428c:	6887a603          	lw	a2,1672(a5) # a0000688 <main+0x1fffa908>
80004290:	68c7a683          	lw	a3,1676(a5)
80004294:	fd042503          	lw	a0,-48(s0)
80004298:	fd442583          	lw	a1,-44(s0)
8000429c:	e7cfd0ef          	jal	80001918 <__gedf2>
800042a0:	00050793          	mv	a5,a0
800042a4:	04f05e63          	blez	a5,80004300 <_ftoa+0x3b8>
800042a8:	fe042783          	lw	a5,-32(s0)
800042ac:	00178793          	add	a5,a5,1
800042b0:	fef42023          	sw	a5,-32(s0)
800042b4:	fe042503          	lw	a0,-32(s0)
800042b8:	f54fe0ef          	jal	80002a0c <__floatunsidf>
800042bc:	a00017b7          	lui	a5,0xa0001
800042c0:	a2878713          	add	a4,a5,-1496 # a0000a28 <pow10.0>
800042c4:	f8442783          	lw	a5,-124(s0)
800042c8:	00379793          	sll	a5,a5,0x3
800042cc:	00f707b3          	add	a5,a4,a5
800042d0:	0007a703          	lw	a4,0(a5)
800042d4:	0047a783          	lw	a5,4(a5)
800042d8:	00070613          	mv	a2,a4
800042dc:	00078693          	mv	a3,a5
800042e0:	e38fd0ef          	jal	80001918 <__gedf2>
800042e4:	00050793          	mv	a5,a0
800042e8:	0407cc63          	bltz	a5,80004340 <_ftoa+0x3f8>
800042ec:	fe042023          	sw	zero,-32(s0)
800042f0:	fe442783          	lw	a5,-28(s0)
800042f4:	00178793          	add	a5,a5,1
800042f8:	fef42223          	sw	a5,-28(s0)
800042fc:	0440006f          	j	80004340 <_ftoa+0x3f8>
80004300:	a00007b7          	lui	a5,0xa0000
80004304:	6887a603          	lw	a2,1672(a5) # a0000688 <main+0x1fffa908>
80004308:	68c7a683          	lw	a3,1676(a5)
8000430c:	fd042503          	lw	a0,-48(s0)
80004310:	fd442583          	lw	a1,-44(s0)
80004314:	ee0fd0ef          	jal	800019f4 <__ledf2>
80004318:	00050793          	mv	a5,a0
8000431c:	0207c263          	bltz	a5,80004340 <_ftoa+0x3f8>
80004320:	fe042783          	lw	a5,-32(s0)
80004324:	00078863          	beqz	a5,80004334 <_ftoa+0x3ec>
80004328:	fe042783          	lw	a5,-32(s0)
8000432c:	0017f793          	and	a5,a5,1
80004330:	00078863          	beqz	a5,80004340 <_ftoa+0x3f8>
80004334:	fe042783          	lw	a5,-32(s0)
80004338:	00178793          	add	a5,a5,1
8000433c:	fef42023          	sw	a5,-32(s0)
80004340:	f8442783          	lw	a5,-124(s0)
80004344:	0a079663          	bnez	a5,800043f0 <_ftoa+0x4a8>
80004348:	fe442503          	lw	a0,-28(s0)
8000434c:	e18fe0ef          	jal	80002964 <__floatsidf>
80004350:	00050713          	mv	a4,a0
80004354:	00058793          	mv	a5,a1
80004358:	00070613          	mv	a2,a4
8000435c:	00078693          	mv	a3,a5
80004360:	f8842503          	lw	a0,-120(s0)
80004364:	f8c42583          	lw	a1,-116(s0)
80004368:	d59fd0ef          	jal	800020c0 <__subdf3>
8000436c:	00050713          	mv	a4,a0
80004370:	00058793          	mv	a5,a1
80004374:	fce42823          	sw	a4,-48(s0)
80004378:	fcf42a23          	sw	a5,-44(s0)
8000437c:	00100493          	li	s1,1
80004380:	a00007b7          	lui	a5,0xa0000
80004384:	6887a603          	lw	a2,1672(a5) # a0000688 <main+0x1fffa908>
80004388:	68c7a683          	lw	a3,1676(a5)
8000438c:	fd042503          	lw	a0,-48(s0)
80004390:	fd442583          	lw	a1,-44(s0)
80004394:	e60fd0ef          	jal	800019f4 <__ledf2>
80004398:	00050793          	mv	a5,a0
8000439c:	0007c463          	bltz	a5,800043a4 <_ftoa+0x45c>
800043a0:	00000493          	li	s1,0
800043a4:	0ff4f793          	zext.b	a5,s1
800043a8:	0017c793          	xor	a5,a5,1
800043ac:	0ff7f793          	zext.b	a5,a5
800043b0:	02079263          	bnez	a5,800043d4 <_ftoa+0x48c>
800043b4:	a00007b7          	lui	a5,0xa0000
800043b8:	6887a603          	lw	a2,1672(a5) # a0000688 <main+0x1fffa908>
800043bc:	68c7a683          	lw	a3,1676(a5)
800043c0:	fd042503          	lw	a0,-48(s0)
800043c4:	fd442583          	lw	a1,-44(s0)
800043c8:	d50fd0ef          	jal	80001918 <__gedf2>
800043cc:	00050793          	mv	a5,a0
800043d0:	0ef05c63          	blez	a5,800044c8 <_ftoa+0x580>
800043d4:	fe442783          	lw	a5,-28(s0)
800043d8:	0017f793          	and	a5,a5,1
800043dc:	12078c63          	beqz	a5,80004514 <_ftoa+0x5cc>
800043e0:	fe442783          	lw	a5,-28(s0)
800043e4:	00178793          	add	a5,a5,1
800043e8:	fef42223          	sw	a5,-28(s0)
800043ec:	1280006f          	j	80004514 <_ftoa+0x5cc>
800043f0:	f8442783          	lw	a5,-124(s0)
800043f4:	fcf42e23          	sw	a5,-36(s0)
800043f8:	0580006f          	j	80004450 <_ftoa+0x508>
800043fc:	fdc42783          	lw	a5,-36(s0)
80004400:	fff78793          	add	a5,a5,-1
80004404:	fcf42e23          	sw	a5,-36(s0)
80004408:	fe042703          	lw	a4,-32(s0)
8000440c:	00a00793          	li	a5,10
80004410:	02f777b3          	remu	a5,a4,a5
80004414:	0ff7f713          	zext.b	a4,a5
80004418:	fec42783          	lw	a5,-20(s0)
8000441c:	00178693          	add	a3,a5,1
80004420:	fed42623          	sw	a3,-20(s0)
80004424:	03070713          	add	a4,a4,48
80004428:	0ff77713          	zext.b	a4,a4
8000442c:	ff078793          	add	a5,a5,-16
80004430:	008787b3          	add	a5,a5,s0
80004434:	fae78c23          	sb	a4,-72(a5)
80004438:	fe042703          	lw	a4,-32(s0)
8000443c:	00a00793          	li	a5,10
80004440:	02f757b3          	divu	a5,a4,a5
80004444:	fef42023          	sw	a5,-32(s0)
80004448:	fe042783          	lw	a5,-32(s0)
8000444c:	00078a63          	beqz	a5,80004460 <_ftoa+0x518>
80004450:	fec42703          	lw	a4,-20(s0)
80004454:	01f00793          	li	a5,31
80004458:	fae7f2e3          	bgeu	a5,a4,800043fc <_ftoa+0x4b4>
8000445c:	0280006f          	j	80004484 <_ftoa+0x53c>
80004460:	00000013          	nop
80004464:	0200006f          	j	80004484 <_ftoa+0x53c>
80004468:	fec42783          	lw	a5,-20(s0)
8000446c:	00178713          	add	a4,a5,1
80004470:	fee42623          	sw	a4,-20(s0)
80004474:	ff078793          	add	a5,a5,-16
80004478:	008787b3          	add	a5,a5,s0
8000447c:	03000713          	li	a4,48
80004480:	fae78c23          	sb	a4,-72(a5)
80004484:	fec42703          	lw	a4,-20(s0)
80004488:	01f00793          	li	a5,31
8000448c:	00e7ea63          	bltu	a5,a4,800044a0 <_ftoa+0x558>
80004490:	fdc42783          	lw	a5,-36(s0)
80004494:	fff78713          	add	a4,a5,-1
80004498:	fce42e23          	sw	a4,-36(s0)
8000449c:	fc0796e3          	bnez	a5,80004468 <_ftoa+0x520>
800044a0:	fec42703          	lw	a4,-20(s0)
800044a4:	01f00793          	li	a5,31
800044a8:	06e7e663          	bltu	a5,a4,80004514 <_ftoa+0x5cc>
800044ac:	fec42783          	lw	a5,-20(s0)
800044b0:	00178713          	add	a4,a5,1
800044b4:	fee42623          	sw	a4,-20(s0)
800044b8:	ff078793          	add	a5,a5,-16
800044bc:	008787b3          	add	a5,a5,s0
800044c0:	02e00713          	li	a4,46
800044c4:	fae78c23          	sb	a4,-72(a5)
800044c8:	04c0006f          	j	80004514 <_ftoa+0x5cc>
800044cc:	fe442703          	lw	a4,-28(s0)
800044d0:	00a00793          	li	a5,10
800044d4:	02f767b3          	rem	a5,a4,a5
800044d8:	0ff7f713          	zext.b	a4,a5
800044dc:	fec42783          	lw	a5,-20(s0)
800044e0:	00178693          	add	a3,a5,1
800044e4:	fed42623          	sw	a3,-20(s0)
800044e8:	03070713          	add	a4,a4,48
800044ec:	0ff77713          	zext.b	a4,a4
800044f0:	ff078793          	add	a5,a5,-16
800044f4:	008787b3          	add	a5,a5,s0
800044f8:	fae78c23          	sb	a4,-72(a5)
800044fc:	fe442703          	lw	a4,-28(s0)
80004500:	00a00793          	li	a5,10
80004504:	02f747b3          	div	a5,a4,a5
80004508:	fef42223          	sw	a5,-28(s0)
8000450c:	fe442783          	lw	a5,-28(s0)
80004510:	00078a63          	beqz	a5,80004524 <_ftoa+0x5dc>
80004514:	fec42703          	lw	a4,-20(s0)
80004518:	01f00793          	li	a5,31
8000451c:	fae7f8e3          	bgeu	a5,a4,800044cc <_ftoa+0x584>
80004520:	0080006f          	j	80004528 <_ftoa+0x5e0>
80004524:	00000013          	nop
80004528:	00042783          	lw	a5,0(s0)
8000452c:	0027f793          	and	a5,a5,2
80004530:	06079863          	bnez	a5,800045a0 <_ftoa+0x658>
80004534:	00042783          	lw	a5,0(s0)
80004538:	0017f793          	and	a5,a5,1
8000453c:	06078263          	beqz	a5,800045a0 <_ftoa+0x658>
80004540:	f8042783          	lw	a5,-128(s0)
80004544:	04078263          	beqz	a5,80004588 <_ftoa+0x640>
80004548:	feb44783          	lbu	a5,-21(s0)
8000454c:	00079863          	bnez	a5,8000455c <_ftoa+0x614>
80004550:	00042783          	lw	a5,0(s0)
80004554:	00c7f793          	and	a5,a5,12
80004558:	02078863          	beqz	a5,80004588 <_ftoa+0x640>
8000455c:	f8042783          	lw	a5,-128(s0)
80004560:	fff78793          	add	a5,a5,-1
80004564:	f8f42023          	sw	a5,-128(s0)
80004568:	0200006f          	j	80004588 <_ftoa+0x640>
8000456c:	fec42783          	lw	a5,-20(s0)
80004570:	00178713          	add	a4,a5,1
80004574:	fee42623          	sw	a4,-20(s0)
80004578:	ff078793          	add	a5,a5,-16
8000457c:	008787b3          	add	a5,a5,s0
80004580:	03000713          	li	a4,48
80004584:	fae78c23          	sb	a4,-72(a5)
80004588:	fec42703          	lw	a4,-20(s0)
8000458c:	f8042783          	lw	a5,-128(s0)
80004590:	00f77863          	bgeu	a4,a5,800045a0 <_ftoa+0x658>
80004594:	fec42703          	lw	a4,-20(s0)
80004598:	01f00793          	li	a5,31
8000459c:	fce7f8e3          	bgeu	a5,a4,8000456c <_ftoa+0x624>
800045a0:	fec42703          	lw	a4,-20(s0)
800045a4:	01f00793          	li	a5,31
800045a8:	08e7e063          	bltu	a5,a4,80004628 <_ftoa+0x6e0>
800045ac:	feb44783          	lbu	a5,-21(s0)
800045b0:	02078263          	beqz	a5,800045d4 <_ftoa+0x68c>
800045b4:	fec42783          	lw	a5,-20(s0)
800045b8:	00178713          	add	a4,a5,1
800045bc:	fee42623          	sw	a4,-20(s0)
800045c0:	ff078793          	add	a5,a5,-16
800045c4:	008787b3          	add	a5,a5,s0
800045c8:	02d00713          	li	a4,45
800045cc:	fae78c23          	sb	a4,-72(a5)
800045d0:	0580006f          	j	80004628 <_ftoa+0x6e0>
800045d4:	00042783          	lw	a5,0(s0)
800045d8:	0047f793          	and	a5,a5,4
800045dc:	02078263          	beqz	a5,80004600 <_ftoa+0x6b8>
800045e0:	fec42783          	lw	a5,-20(s0)
800045e4:	00178713          	add	a4,a5,1
800045e8:	fee42623          	sw	a4,-20(s0)
800045ec:	ff078793          	add	a5,a5,-16
800045f0:	008787b3          	add	a5,a5,s0
800045f4:	02b00713          	li	a4,43
800045f8:	fae78c23          	sb	a4,-72(a5)
800045fc:	02c0006f          	j	80004628 <_ftoa+0x6e0>
80004600:	00042783          	lw	a5,0(s0)
80004604:	0087f793          	and	a5,a5,8
80004608:	02078063          	beqz	a5,80004628 <_ftoa+0x6e0>
8000460c:	fec42783          	lw	a5,-20(s0)
80004610:	00178713          	add	a4,a5,1
80004614:	fee42623          	sw	a4,-20(s0)
80004618:	ff078793          	add	a5,a5,-16
8000461c:	008787b3          	add	a5,a5,s0
80004620:	02000713          	li	a4,32
80004624:	fae78c23          	sb	a4,-72(a5)
80004628:	fa840713          	add	a4,s0,-88
8000462c:	00042883          	lw	a7,0(s0)
80004630:	f8042803          	lw	a6,-128(s0)
80004634:	fec42783          	lw	a5,-20(s0)
80004638:	f9042683          	lw	a3,-112(s0)
8000463c:	f9442603          	lw	a2,-108(s0)
80004640:	f9842583          	lw	a1,-104(s0)
80004644:	f9c42503          	lw	a0,-100(s0)
80004648:	9e8ff0ef          	jal	80003830 <_out_rev>
8000464c:	00050793          	mv	a5,a0
80004650:	00078513          	mv	a0,a5
80004654:	08c12083          	lw	ra,140(sp)
80004658:	08812403          	lw	s0,136(sp)
8000465c:	08412483          	lw	s1,132(sp)
80004660:	09010113          	add	sp,sp,144
80004664:	00008067          	ret

80004668 <_etoa>:
80004668:	f4010113          	add	sp,sp,-192
8000466c:	0a112e23          	sw	ra,188(sp)
80004670:	0a812c23          	sw	s0,184(sp)
80004674:	0a912a23          	sw	s1,180(sp)
80004678:	0b212823          	sw	s2,176(sp)
8000467c:	0b312623          	sw	s3,172(sp)
80004680:	0b412423          	sw	s4,168(sp)
80004684:	0b512223          	sw	s5,164(sp)
80004688:	0b612023          	sw	s6,160(sp)
8000468c:	09712e23          	sw	s7,156(sp)
80004690:	09812c23          	sw	s8,152(sp)
80004694:	09912a23          	sw	s9,148(sp)
80004698:	09a12823          	sw	s10,144(sp)
8000469c:	09b12623          	sw	s11,140(sp)
800046a0:	0c010413          	add	s0,sp,192
800046a4:	f6a42e23          	sw	a0,-132(s0)
800046a8:	f6b42c23          	sw	a1,-136(s0)
800046ac:	f6c42a23          	sw	a2,-140(s0)
800046b0:	f6d42823          	sw	a3,-144(s0)
800046b4:	f6e42423          	sw	a4,-152(s0)
800046b8:	f6f42623          	sw	a5,-148(s0)
800046bc:	f7042223          	sw	a6,-156(s0)
800046c0:	f7142023          	sw	a7,-160(s0)
800046c4:	f6842603          	lw	a2,-152(s0)
800046c8:	f6c42683          	lw	a3,-148(s0)
800046cc:	f6842503          	lw	a0,-152(s0)
800046d0:	f6c42583          	lw	a1,-148(s0)
800046d4:	9b8fd0ef          	jal	8000188c <__eqdf2>
800046d8:	00050793          	mv	a5,a0
800046dc:	04079263          	bnez	a5,80004720 <_etoa+0xb8>
800046e0:	a00007b7          	lui	a5,0xa0000
800046e4:	6707a603          	lw	a2,1648(a5) # a0000670 <main+0x1fffa8f0>
800046e8:	6747a683          	lw	a3,1652(a5)
800046ec:	f6842503          	lw	a0,-152(s0)
800046f0:	f6c42583          	lw	a1,-148(s0)
800046f4:	a24fd0ef          	jal	80001918 <__gedf2>
800046f8:	00050793          	mv	a5,a0
800046fc:	02f04263          	bgtz	a5,80004720 <_etoa+0xb8>
80004700:	a00007b7          	lui	a5,0xa0000
80004704:	6687a603          	lw	a2,1640(a5) # a0000668 <main+0x1fffa8e8>
80004708:	66c7a683          	lw	a3,1644(a5)
8000470c:	f6842503          	lw	a0,-152(s0)
80004710:	f6c42583          	lw	a1,-148(s0)
80004714:	ae0fd0ef          	jal	800019f4 <__ledf2>
80004718:	00050793          	mv	a5,a0
8000471c:	0207dc63          	bgez	a5,80004754 <_etoa+0xec>
80004720:	00042783          	lw	a5,0(s0)
80004724:	00f12023          	sw	a5,0(sp)
80004728:	f6042883          	lw	a7,-160(s0)
8000472c:	f6442803          	lw	a6,-156(s0)
80004730:	f6842703          	lw	a4,-152(s0)
80004734:	f6c42783          	lw	a5,-148(s0)
80004738:	f7042683          	lw	a3,-144(s0)
8000473c:	f7442603          	lw	a2,-140(s0)
80004740:	f7842583          	lw	a1,-136(s0)
80004744:	f7c42503          	lw	a0,-132(s0)
80004748:	801ff0ef          	jal	80003f48 <_ftoa>
8000474c:	00050793          	mv	a5,a0
80004750:	7480006f          	j	80004e98 <_etoa+0x830>
80004754:	00100493          	li	s1,1
80004758:	00000613          	li	a2,0
8000475c:	00000693          	li	a3,0
80004760:	f6842503          	lw	a0,-152(s0)
80004764:	f6c42583          	lw	a1,-148(s0)
80004768:	a8cfd0ef          	jal	800019f4 <__ledf2>
8000476c:	00050793          	mv	a5,a0
80004770:	0007c463          	bltz	a5,80004778 <_etoa+0x110>
80004774:	00000493          	li	s1,0
80004778:	fa9409a3          	sb	s1,-77(s0)
8000477c:	fb344783          	lbu	a5,-77(s0)
80004780:	00078e63          	beqz	a5,8000479c <_etoa+0x134>
80004784:	f6842c03          	lw	s8,-152(s0)
80004788:	f6c42703          	lw	a4,-148(s0)
8000478c:	800007b7          	lui	a5,0x80000
80004790:	00f74cb3          	xor	s9,a4,a5
80004794:	f7842423          	sw	s8,-152(s0)
80004798:	f7942623          	sw	s9,-148(s0)
8000479c:	00042783          	lw	a5,0(s0)
800047a0:	4007f793          	and	a5,a5,1024
800047a4:	00079663          	bnez	a5,800047b0 <_etoa+0x148>
800047a8:	00600793          	li	a5,6
800047ac:	f6f42223          	sw	a5,-156(s0)
800047b0:	f6842703          	lw	a4,-152(s0)
800047b4:	f6c42783          	lw	a5,-148(s0)
800047b8:	f8e42423          	sw	a4,-120(s0)
800047bc:	f8f42623          	sw	a5,-116(s0)
800047c0:	f8842703          	lw	a4,-120(s0)
800047c4:	f8c42783          	lw	a5,-116(s0)
800047c8:	0147d793          	srl	a5,a5,0x14
800047cc:	f4f42c23          	sw	a5,-168(s0)
800047d0:	f4042e23          	sw	zero,-164(s0)
800047d4:	f5842783          	lw	a5,-168(s0)
800047d8:	7ff7f793          	and	a5,a5,2047
800047dc:	c0178793          	add	a5,a5,-1023 # 7ffffc01 <__stack_size+0x7fffbc01>
800047e0:	faf42623          	sw	a5,-84(s0)
800047e4:	f8842703          	lw	a4,-120(s0)
800047e8:	f8c42783          	lw	a5,-116(s0)
800047ec:	fff77913          	and	s2,a4,-1
800047f0:	001006b7          	lui	a3,0x100
800047f4:	fff68693          	add	a3,a3,-1 # fffff <__stack_size+0xfbfff>
800047f8:	00d7f9b3          	and	s3,a5,a3
800047fc:	00096b13          	or	s6,s2,0
80004800:	3ff007b7          	lui	a5,0x3ff00
80004804:	00f9ebb3          	or	s7,s3,a5
80004808:	f9642423          	sw	s6,-120(s0)
8000480c:	f9742623          	sw	s7,-116(s0)
80004810:	fac42503          	lw	a0,-84(s0)
80004814:	950fe0ef          	jal	80002964 <__floatsidf>
80004818:	00050713          	mv	a4,a0
8000481c:	00058793          	mv	a5,a1
80004820:	a00006b7          	lui	a3,0xa0000
80004824:	6906a603          	lw	a2,1680(a3) # a0000690 <main+0x1fffa910>
80004828:	6946a683          	lw	a3,1684(a3)
8000482c:	00070513          	mv	a0,a4
80004830:	00078593          	mv	a1,a5
80004834:	a9cfd0ef          	jal	80001ad0 <__muldf3>
80004838:	00050713          	mv	a4,a0
8000483c:	00058793          	mv	a5,a1
80004840:	00070513          	mv	a0,a4
80004844:	00078593          	mv	a1,a5
80004848:	a00007b7          	lui	a5,0xa0000
8000484c:	6987a603          	lw	a2,1688(a5) # a0000698 <main+0x1fffa918>
80004850:	69c7a683          	lw	a3,1692(a5)
80004854:	9c8fc0ef          	jal	80000a1c <__adddf3>
80004858:	00050713          	mv	a4,a0
8000485c:	00058793          	mv	a5,a1
80004860:	00070913          	mv	s2,a4
80004864:	00078993          	mv	s3,a5
80004868:	f8842703          	lw	a4,-120(s0)
8000486c:	f8c42783          	lw	a5,-116(s0)
80004870:	a00006b7          	lui	a3,0xa0000
80004874:	6a06a603          	lw	a2,1696(a3) # a00006a0 <main+0x1fffa920>
80004878:	6a46a683          	lw	a3,1700(a3)
8000487c:	00070513          	mv	a0,a4
80004880:	00078593          	mv	a1,a5
80004884:	83dfd0ef          	jal	800020c0 <__subdf3>
80004888:	00050713          	mv	a4,a0
8000488c:	00058793          	mv	a5,a1
80004890:	00070513          	mv	a0,a4
80004894:	00078593          	mv	a1,a5
80004898:	a00007b7          	lui	a5,0xa0000
8000489c:	6a87a603          	lw	a2,1704(a5) # a00006a8 <main+0x1fffa928>
800048a0:	6ac7a683          	lw	a3,1708(a5)
800048a4:	a2cfd0ef          	jal	80001ad0 <__muldf3>
800048a8:	00050713          	mv	a4,a0
800048ac:	00058793          	mv	a5,a1
800048b0:	00070613          	mv	a2,a4
800048b4:	00078693          	mv	a3,a5
800048b8:	00090513          	mv	a0,s2
800048bc:	00098593          	mv	a1,s3
800048c0:	95cfc0ef          	jal	80000a1c <__adddf3>
800048c4:	00050713          	mv	a4,a0
800048c8:	00058793          	mv	a5,a1
800048cc:	00070513          	mv	a0,a4
800048d0:	00078593          	mv	a1,a5
800048d4:	f95fd0ef          	jal	80002868 <__fixdfsi>
800048d8:	00050793          	mv	a5,a0
800048dc:	faf42e23          	sw	a5,-68(s0)
800048e0:	fbc42503          	lw	a0,-68(s0)
800048e4:	880fe0ef          	jal	80002964 <__floatsidf>
800048e8:	00050713          	mv	a4,a0
800048ec:	00058793          	mv	a5,a1
800048f0:	a00006b7          	lui	a3,0xa0000
800048f4:	6b06a603          	lw	a2,1712(a3) # a00006b0 <main+0x1fffa930>
800048f8:	6b46a683          	lw	a3,1716(a3)
800048fc:	00070513          	mv	a0,a4
80004900:	00078593          	mv	a1,a5
80004904:	9ccfd0ef          	jal	80001ad0 <__muldf3>
80004908:	00050713          	mv	a4,a0
8000490c:	00058793          	mv	a5,a1
80004910:	00070513          	mv	a0,a4
80004914:	00078593          	mv	a1,a5
80004918:	a00007b7          	lui	a5,0xa0000
8000491c:	6887a603          	lw	a2,1672(a5) # a0000688 <main+0x1fffa908>
80004920:	68c7a683          	lw	a3,1676(a5)
80004924:	8f8fc0ef          	jal	80000a1c <__adddf3>
80004928:	00050713          	mv	a4,a0
8000492c:	00058793          	mv	a5,a1
80004930:	00070513          	mv	a0,a4
80004934:	00078593          	mv	a1,a5
80004938:	f31fd0ef          	jal	80002868 <__fixdfsi>
8000493c:	00050793          	mv	a5,a0
80004940:	faf42623          	sw	a5,-84(s0)
80004944:	fbc42503          	lw	a0,-68(s0)
80004948:	81cfe0ef          	jal	80002964 <__floatsidf>
8000494c:	00050713          	mv	a4,a0
80004950:	00058793          	mv	a5,a1
80004954:	a00006b7          	lui	a3,0xa0000
80004958:	6b86a603          	lw	a2,1720(a3) # a00006b8 <main+0x1fffa938>
8000495c:	6bc6a683          	lw	a3,1724(a3)
80004960:	00070513          	mv	a0,a4
80004964:	00078593          	mv	a1,a5
80004968:	968fd0ef          	jal	80001ad0 <__muldf3>
8000496c:	00050713          	mv	a4,a0
80004970:	00058793          	mv	a5,a1
80004974:	00070913          	mv	s2,a4
80004978:	00078993          	mv	s3,a5
8000497c:	fac42503          	lw	a0,-84(s0)
80004980:	fe5fd0ef          	jal	80002964 <__floatsidf>
80004984:	00050713          	mv	a4,a0
80004988:	00058793          	mv	a5,a1
8000498c:	a00006b7          	lui	a3,0xa0000
80004990:	6c06a603          	lw	a2,1728(a3) # a00006c0 <main+0x1fffa940>
80004994:	6c46a683          	lw	a3,1732(a3)
80004998:	00070513          	mv	a0,a4
8000499c:	00078593          	mv	a1,a5
800049a0:	930fd0ef          	jal	80001ad0 <__muldf3>
800049a4:	00050713          	mv	a4,a0
800049a8:	00058793          	mv	a5,a1
800049ac:	00070613          	mv	a2,a4
800049b0:	00078693          	mv	a3,a5
800049b4:	00090513          	mv	a0,s2
800049b8:	00098593          	mv	a1,s3
800049bc:	f04fd0ef          	jal	800020c0 <__subdf3>
800049c0:	00050713          	mv	a4,a0
800049c4:	00058793          	mv	a5,a1
800049c8:	fae42023          	sw	a4,-96(s0)
800049cc:	faf42223          	sw	a5,-92(s0)
800049d0:	fa042603          	lw	a2,-96(s0)
800049d4:	fa442683          	lw	a3,-92(s0)
800049d8:	fa042503          	lw	a0,-96(s0)
800049dc:	fa442583          	lw	a1,-92(s0)
800049e0:	8f0fd0ef          	jal	80001ad0 <__muldf3>
800049e4:	00050713          	mv	a4,a0
800049e8:	00058793          	mv	a5,a1
800049ec:	f8e42c23          	sw	a4,-104(s0)
800049f0:	f8f42e23          	sw	a5,-100(s0)
800049f4:	fac42783          	lw	a5,-84(s0)
800049f8:	3ff78793          	add	a5,a5,1023
800049fc:	f4f42823          	sw	a5,-176(s0)
80004a00:	41f7d793          	sra	a5,a5,0x1f
80004a04:	f4f42a23          	sw	a5,-172(s0)
80004a08:	f5042783          	lw	a5,-176(s0)
80004a0c:	01479d93          	sll	s11,a5,0x14
80004a10:	00000d13          	li	s10,0
80004a14:	f9a42423          	sw	s10,-120(s0)
80004a18:	f9b42623          	sw	s11,-116(s0)
80004a1c:	f8842903          	lw	s2,-120(s0)
80004a20:	f8c42983          	lw	s3,-116(s0)
80004a24:	fa042703          	lw	a4,-96(s0)
80004a28:	fa442783          	lw	a5,-92(s0)
80004a2c:	00070613          	mv	a2,a4
80004a30:	00078693          	mv	a3,a5
80004a34:	00070513          	mv	a0,a4
80004a38:	00078593          	mv	a1,a5
80004a3c:	fe1fb0ef          	jal	80000a1c <__adddf3>
80004a40:	00050713          	mv	a4,a0
80004a44:	00058793          	mv	a5,a1
80004a48:	00070b13          	mv	s6,a4
80004a4c:	00078b93          	mv	s7,a5
80004a50:	a00007b7          	lui	a5,0xa0000
80004a54:	fa042603          	lw	a2,-96(s0)
80004a58:	fa442683          	lw	a3,-92(s0)
80004a5c:	6c87a503          	lw	a0,1736(a5) # a00006c8 <main+0x1fffa948>
80004a60:	6cc7a583          	lw	a1,1740(a5)
80004a64:	e5cfd0ef          	jal	800020c0 <__subdf3>
80004a68:	00050713          	mv	a4,a0
80004a6c:	00058793          	mv	a5,a1
80004a70:	00070c13          	mv	s8,a4
80004a74:	00078c93          	mv	s9,a5
80004a78:	a00007b7          	lui	a5,0xa0000
80004a7c:	6d07a603          	lw	a2,1744(a5) # a00006d0 <main+0x1fffa950>
80004a80:	6d47a683          	lw	a3,1748(a5)
80004a84:	f9842503          	lw	a0,-104(s0)
80004a88:	f9c42583          	lw	a1,-100(s0)
80004a8c:	f24fc0ef          	jal	800011b0 <__divdf3>
80004a90:	00050713          	mv	a4,a0
80004a94:	00058793          	mv	a5,a1
80004a98:	00070513          	mv	a0,a4
80004a9c:	00078593          	mv	a1,a5
80004aa0:	a00007b7          	lui	a5,0xa0000
80004aa4:	6d87a603          	lw	a2,1752(a5) # a00006d8 <main+0x1fffa958>
80004aa8:	6dc7a683          	lw	a3,1756(a5)
80004aac:	f71fb0ef          	jal	80000a1c <__adddf3>
80004ab0:	00050713          	mv	a4,a0
80004ab4:	00058793          	mv	a5,a1
80004ab8:	00070613          	mv	a2,a4
80004abc:	00078693          	mv	a3,a5
80004ac0:	f9842503          	lw	a0,-104(s0)
80004ac4:	f9c42583          	lw	a1,-100(s0)
80004ac8:	ee8fc0ef          	jal	800011b0 <__divdf3>
80004acc:	00050713          	mv	a4,a0
80004ad0:	00058793          	mv	a5,a1
80004ad4:	00070513          	mv	a0,a4
80004ad8:	00078593          	mv	a1,a5
80004adc:	a00007b7          	lui	a5,0xa0000
80004ae0:	6e07a603          	lw	a2,1760(a5) # a00006e0 <main+0x1fffa960>
80004ae4:	6e47a683          	lw	a3,1764(a5)
80004ae8:	f35fb0ef          	jal	80000a1c <__adddf3>
80004aec:	00050713          	mv	a4,a0
80004af0:	00058793          	mv	a5,a1
80004af4:	00070613          	mv	a2,a4
80004af8:	00078693          	mv	a3,a5
80004afc:	f9842503          	lw	a0,-104(s0)
80004b00:	f9c42583          	lw	a1,-100(s0)
80004b04:	eacfc0ef          	jal	800011b0 <__divdf3>
80004b08:	00050713          	mv	a4,a0
80004b0c:	00058793          	mv	a5,a1
80004b10:	00070613          	mv	a2,a4
80004b14:	00078693          	mv	a3,a5
80004b18:	000c0513          	mv	a0,s8
80004b1c:	000c8593          	mv	a1,s9
80004b20:	efdfb0ef          	jal	80000a1c <__adddf3>
80004b24:	00050713          	mv	a4,a0
80004b28:	00058793          	mv	a5,a1
80004b2c:	00070613          	mv	a2,a4
80004b30:	00078693          	mv	a3,a5
80004b34:	000b0513          	mv	a0,s6
80004b38:	000b8593          	mv	a1,s7
80004b3c:	e74fc0ef          	jal	800011b0 <__divdf3>
80004b40:	00050713          	mv	a4,a0
80004b44:	00058793          	mv	a5,a1
80004b48:	00070513          	mv	a0,a4
80004b4c:	00078593          	mv	a1,a5
80004b50:	a00007b7          	lui	a5,0xa0000
80004b54:	6e87a603          	lw	a2,1768(a5) # a00006e8 <main+0x1fffa968>
80004b58:	6ec7a683          	lw	a3,1772(a5)
80004b5c:	ec1fb0ef          	jal	80000a1c <__adddf3>
80004b60:	00050713          	mv	a4,a0
80004b64:	00058793          	mv	a5,a1
80004b68:	00070613          	mv	a2,a4
80004b6c:	00078693          	mv	a3,a5
80004b70:	00090513          	mv	a0,s2
80004b74:	00098593          	mv	a1,s3
80004b78:	f59fc0ef          	jal	80001ad0 <__muldf3>
80004b7c:	00050713          	mv	a4,a0
80004b80:	00058793          	mv	a5,a1
80004b84:	f8e42423          	sw	a4,-120(s0)
80004b88:	f8f42623          	sw	a5,-116(s0)
80004b8c:	f8842703          	lw	a4,-120(s0)
80004b90:	f8c42783          	lw	a5,-116(s0)
80004b94:	00070613          	mv	a2,a4
80004b98:	00078693          	mv	a3,a5
80004b9c:	f6842503          	lw	a0,-152(s0)
80004ba0:	f6c42583          	lw	a1,-148(s0)
80004ba4:	e51fc0ef          	jal	800019f4 <__ledf2>
80004ba8:	00050793          	mv	a5,a0
80004bac:	0407d063          	bgez	a5,80004bec <_etoa+0x584>
80004bb0:	fbc42783          	lw	a5,-68(s0)
80004bb4:	fff78793          	add	a5,a5,-1
80004bb8:	faf42e23          	sw	a5,-68(s0)
80004bbc:	f8842703          	lw	a4,-120(s0)
80004bc0:	f8c42783          	lw	a5,-116(s0)
80004bc4:	a00006b7          	lui	a3,0xa0000
80004bc8:	6d86a603          	lw	a2,1752(a3) # a00006d8 <main+0x1fffa958>
80004bcc:	6dc6a683          	lw	a3,1756(a3)
80004bd0:	00070513          	mv	a0,a4
80004bd4:	00078593          	mv	a1,a5
80004bd8:	dd8fc0ef          	jal	800011b0 <__divdf3>
80004bdc:	00050713          	mv	a4,a0
80004be0:	00058793          	mv	a5,a1
80004be4:	f8e42423          	sw	a4,-120(s0)
80004be8:	f8f42623          	sw	a5,-116(s0)
80004bec:	fbc42703          	lw	a4,-68(s0)
80004bf0:	06300793          	li	a5,99
80004bf4:	00e7cc63          	blt	a5,a4,80004c0c <_etoa+0x5a4>
80004bf8:	fbc42703          	lw	a4,-68(s0)
80004bfc:	f9d00793          	li	a5,-99
80004c00:	00f74663          	blt	a4,a5,80004c0c <_etoa+0x5a4>
80004c04:	00400793          	li	a5,4
80004c08:	0080006f          	j	80004c10 <_etoa+0x5a8>
80004c0c:	00500793          	li	a5,5
80004c10:	faf42c23          	sw	a5,-72(s0)
80004c14:	00042703          	lw	a4,0(s0)
80004c18:	000017b7          	lui	a5,0x1
80004c1c:	80078793          	add	a5,a5,-2048 # 800 <__stack_size-0x3800>
80004c20:	00f777b3          	and	a5,a4,a5
80004c24:	0a078263          	beqz	a5,80004cc8 <_etoa+0x660>
80004c28:	a00007b7          	lui	a5,0xa0000
80004c2c:	6f07a603          	lw	a2,1776(a5) # a00006f0 <main+0x1fffa970>
80004c30:	6f47a683          	lw	a3,1780(a5)
80004c34:	f6842503          	lw	a0,-152(s0)
80004c38:	f6c42583          	lw	a1,-148(s0)
80004c3c:	cddfc0ef          	jal	80001918 <__gedf2>
80004c40:	00050793          	mv	a5,a0
80004c44:	0607c263          	bltz	a5,80004ca8 <_etoa+0x640>
80004c48:	a00007b7          	lui	a5,0xa0000
80004c4c:	6f87a603          	lw	a2,1784(a5) # a00006f8 <main+0x1fffa978>
80004c50:	6fc7a683          	lw	a3,1788(a5)
80004c54:	f6842503          	lw	a0,-152(s0)
80004c58:	f6c42583          	lw	a1,-148(s0)
80004c5c:	d99fc0ef          	jal	800019f4 <__ledf2>
80004c60:	00050793          	mv	a5,a0
80004c64:	0407d263          	bgez	a5,80004ca8 <_etoa+0x640>
80004c68:	f6442783          	lw	a5,-156(s0)
80004c6c:	fbc42703          	lw	a4,-68(s0)
80004c70:	00f75e63          	bge	a4,a5,80004c8c <_etoa+0x624>
80004c74:	f6442703          	lw	a4,-156(s0)
80004c78:	fbc42783          	lw	a5,-68(s0)
80004c7c:	40f707b3          	sub	a5,a4,a5
80004c80:	fff78793          	add	a5,a5,-1
80004c84:	f6f42223          	sw	a5,-156(s0)
80004c88:	0080006f          	j	80004c90 <_etoa+0x628>
80004c8c:	f6042223          	sw	zero,-156(s0)
80004c90:	00042783          	lw	a5,0(s0)
80004c94:	4007e793          	or	a5,a5,1024
80004c98:	00f42023          	sw	a5,0(s0)
80004c9c:	fa042c23          	sw	zero,-72(s0)
80004ca0:	fa042e23          	sw	zero,-68(s0)
80004ca4:	0240006f          	j	80004cc8 <_etoa+0x660>
80004ca8:	f6442783          	lw	a5,-156(s0)
80004cac:	00078e63          	beqz	a5,80004cc8 <_etoa+0x660>
80004cb0:	00042783          	lw	a5,0(s0)
80004cb4:	4007f793          	and	a5,a5,1024
80004cb8:	00078863          	beqz	a5,80004cc8 <_etoa+0x660>
80004cbc:	f6442783          	lw	a5,-156(s0)
80004cc0:	fff78793          	add	a5,a5,-1
80004cc4:	f6f42223          	sw	a5,-156(s0)
80004cc8:	f6042783          	lw	a5,-160(s0)
80004ccc:	faf42a23          	sw	a5,-76(s0)
80004cd0:	f6042703          	lw	a4,-160(s0)
80004cd4:	fb842783          	lw	a5,-72(s0)
80004cd8:	00e7fc63          	bgeu	a5,a4,80004cf0 <_etoa+0x688>
80004cdc:	fb442703          	lw	a4,-76(s0)
80004ce0:	fb842783          	lw	a5,-72(s0)
80004ce4:	40f707b3          	sub	a5,a4,a5
80004ce8:	faf42a23          	sw	a5,-76(s0)
80004cec:	0080006f          	j	80004cf4 <_etoa+0x68c>
80004cf0:	fa042a23          	sw	zero,-76(s0)
80004cf4:	00042783          	lw	a5,0(s0)
80004cf8:	0027f793          	and	a5,a5,2
80004cfc:	00078863          	beqz	a5,80004d0c <_etoa+0x6a4>
80004d00:	fb842783          	lw	a5,-72(s0)
80004d04:	00078463          	beqz	a5,80004d0c <_etoa+0x6a4>
80004d08:	fa042a23          	sw	zero,-76(s0)
80004d0c:	fbc42783          	lw	a5,-68(s0)
80004d10:	02078863          	beqz	a5,80004d40 <_etoa+0x6d8>
80004d14:	f8842703          	lw	a4,-120(s0)
80004d18:	f8c42783          	lw	a5,-116(s0)
80004d1c:	00070613          	mv	a2,a4
80004d20:	00078693          	mv	a3,a5
80004d24:	f6842503          	lw	a0,-152(s0)
80004d28:	f6c42583          	lw	a1,-148(s0)
80004d2c:	c84fc0ef          	jal	800011b0 <__divdf3>
80004d30:	00050713          	mv	a4,a0
80004d34:	00058793          	mv	a5,a1
80004d38:	f6e42423          	sw	a4,-152(s0)
80004d3c:	f6f42623          	sw	a5,-148(s0)
80004d40:	f7442783          	lw	a5,-140(s0)
80004d44:	f8f42a23          	sw	a5,-108(s0)
80004d48:	fb344783          	lbu	a5,-77(s0)
80004d4c:	00078c63          	beqz	a5,80004d64 <_etoa+0x6fc>
80004d50:	f6842a03          	lw	s4,-152(s0)
80004d54:	f6c42703          	lw	a4,-148(s0)
80004d58:	800007b7          	lui	a5,0x80000
80004d5c:	00f74ab3          	xor	s5,a4,a5
80004d60:	00c0006f          	j	80004d6c <_etoa+0x704>
80004d64:	f6842a03          	lw	s4,-152(s0)
80004d68:	f6c42a83          	lw	s5,-148(s0)
80004d6c:	00042703          	lw	a4,0(s0)
80004d70:	fffff7b7          	lui	a5,0xfffff
80004d74:	7ff78793          	add	a5,a5,2047 # fffff7ff <__stack_base+0x3ffff7ff>
80004d78:	00f777b3          	and	a5,a4,a5
80004d7c:	00f12023          	sw	a5,0(sp)
80004d80:	fb442883          	lw	a7,-76(s0)
80004d84:	f6442803          	lw	a6,-156(s0)
80004d88:	000a0713          	mv	a4,s4
80004d8c:	000a8793          	mv	a5,s5
80004d90:	f7042683          	lw	a3,-144(s0)
80004d94:	f7442603          	lw	a2,-140(s0)
80004d98:	f7842583          	lw	a1,-136(s0)
80004d9c:	f7c42503          	lw	a0,-132(s0)
80004da0:	9a8ff0ef          	jal	80003f48 <_ftoa>
80004da4:	f6a42a23          	sw	a0,-140(s0)
80004da8:	fb842783          	lw	a5,-72(s0)
80004dac:	0e078463          	beqz	a5,80004e94 <_etoa+0x82c>
80004db0:	00042783          	lw	a5,0(s0)
80004db4:	0207f793          	and	a5,a5,32
80004db8:	00078663          	beqz	a5,80004dc4 <_etoa+0x75c>
80004dbc:	04500793          	li	a5,69
80004dc0:	0080006f          	j	80004dc8 <_etoa+0x760>
80004dc4:	06500793          	li	a5,101
80004dc8:	f7442703          	lw	a4,-140(s0)
80004dcc:	00170693          	add	a3,a4,1
80004dd0:	f6d42a23          	sw	a3,-140(s0)
80004dd4:	f7c42803          	lw	a6,-132(s0)
80004dd8:	f7042683          	lw	a3,-144(s0)
80004ddc:	00070613          	mv	a2,a4
80004de0:	f7842583          	lw	a1,-136(s0)
80004de4:	00078513          	mv	a0,a5
80004de8:	000800e7          	jalr	a6
80004dec:	fbc42783          	lw	a5,-68(s0)
80004df0:	41f7d713          	sra	a4,a5,0x1f
80004df4:	fbc42783          	lw	a5,-68(s0)
80004df8:	00f747b3          	xor	a5,a4,a5
80004dfc:	40e787b3          	sub	a5,a5,a4
80004e00:	00078613          	mv	a2,a5
80004e04:	fbc42783          	lw	a5,-68(s0)
80004e08:	01f7d793          	srl	a5,a5,0x1f
80004e0c:	0ff7f693          	zext.b	a3,a5
80004e10:	fb842783          	lw	a5,-72(s0)
80004e14:	fff78793          	add	a5,a5,-1
80004e18:	00500713          	li	a4,5
80004e1c:	00e12223          	sw	a4,4(sp)
80004e20:	00f12023          	sw	a5,0(sp)
80004e24:	00000893          	li	a7,0
80004e28:	00a00813          	li	a6,10
80004e2c:	00068793          	mv	a5,a3
80004e30:	00060713          	mv	a4,a2
80004e34:	f7042683          	lw	a3,-144(s0)
80004e38:	f7442603          	lw	a2,-140(s0)
80004e3c:	f7842583          	lw	a1,-136(s0)
80004e40:	f7c42503          	lw	a0,-132(s0)
80004e44:	e29fe0ef          	jal	80003c6c <_ntoa_long>
80004e48:	f6a42a23          	sw	a0,-140(s0)
80004e4c:	00042783          	lw	a5,0(s0)
80004e50:	0027f793          	and	a5,a5,2
80004e54:	04078063          	beqz	a5,80004e94 <_etoa+0x82c>
80004e58:	0280006f          	j	80004e80 <_etoa+0x818>
80004e5c:	f7442783          	lw	a5,-140(s0)
80004e60:	00178713          	add	a4,a5,1
80004e64:	f6e42a23          	sw	a4,-140(s0)
80004e68:	f7c42703          	lw	a4,-132(s0)
80004e6c:	f7042683          	lw	a3,-144(s0)
80004e70:	00078613          	mv	a2,a5
80004e74:	f7842583          	lw	a1,-136(s0)
80004e78:	02000513          	li	a0,32
80004e7c:	000700e7          	jalr	a4
80004e80:	f7442703          	lw	a4,-140(s0)
80004e84:	f9442783          	lw	a5,-108(s0)
80004e88:	40f707b3          	sub	a5,a4,a5
80004e8c:	f6042703          	lw	a4,-160(s0)
80004e90:	fce7e6e3          	bltu	a5,a4,80004e5c <_etoa+0x7f4>
80004e94:	f7442783          	lw	a5,-140(s0)
80004e98:	00078513          	mv	a0,a5
80004e9c:	0bc12083          	lw	ra,188(sp)
80004ea0:	0b812403          	lw	s0,184(sp)
80004ea4:	0b412483          	lw	s1,180(sp)
80004ea8:	0b012903          	lw	s2,176(sp)
80004eac:	0ac12983          	lw	s3,172(sp)
80004eb0:	0a812a03          	lw	s4,168(sp)
80004eb4:	0a412a83          	lw	s5,164(sp)
80004eb8:	0a012b03          	lw	s6,160(sp)
80004ebc:	09c12b83          	lw	s7,156(sp)
80004ec0:	09812c03          	lw	s8,152(sp)
80004ec4:	09412c83          	lw	s9,148(sp)
80004ec8:	09012d03          	lw	s10,144(sp)
80004ecc:	08c12d83          	lw	s11,140(sp)
80004ed0:	0c010113          	add	sp,sp,192
80004ed4:	00008067          	ret

80004ed8 <_vsnprintf>:
80004ed8:	f5010113          	add	sp,sp,-176
80004edc:	0a112623          	sw	ra,172(sp)
80004ee0:	0a812423          	sw	s0,168(sp)
80004ee4:	0b212223          	sw	s2,164(sp)
80004ee8:	0b312023          	sw	s3,160(sp)
80004eec:	09412e23          	sw	s4,156(sp)
80004ef0:	09512c23          	sw	s5,152(sp)
80004ef4:	09612a23          	sw	s6,148(sp)
80004ef8:	09712823          	sw	s7,144(sp)
80004efc:	09812623          	sw	s8,140(sp)
80004f00:	09912423          	sw	s9,136(sp)
80004f04:	09a12223          	sw	s10,132(sp)
80004f08:	09b12023          	sw	s11,128(sp)
80004f0c:	0b010413          	add	s0,sp,176
80004f10:	f6a42e23          	sw	a0,-132(s0)
80004f14:	f6b42c23          	sw	a1,-136(s0)
80004f18:	f6c42a23          	sw	a2,-140(s0)
80004f1c:	f6d42823          	sw	a3,-144(s0)
80004f20:	f6e42623          	sw	a4,-148(s0)
80004f24:	fa042e23          	sw	zero,-68(s0)
80004f28:	f7842783          	lw	a5,-136(s0)
80004f2c:	54079ae3          	bnez	a5,80005c80 <_vsnprintf+0xda8>
80004f30:	800037b7          	lui	a5,0x80003
80004f34:	67478793          	add	a5,a5,1652 # 80003674 <_out_null>
80004f38:	f6f42e23          	sw	a5,-132(s0)
80004f3c:	5450006f          	j	80005c80 <_vsnprintf+0xda8>
80004f40:	f7042783          	lw	a5,-144(s0)
80004f44:	0007c703          	lbu	a4,0(a5)
80004f48:	02500793          	li	a5,37
80004f4c:	02f70e63          	beq	a4,a5,80004f88 <_vsnprintf+0xb0>
80004f50:	f7042783          	lw	a5,-144(s0)
80004f54:	0007c503          	lbu	a0,0(a5)
80004f58:	fbc42783          	lw	a5,-68(s0)
80004f5c:	00178713          	add	a4,a5,1
80004f60:	fae42e23          	sw	a4,-68(s0)
80004f64:	f7c42703          	lw	a4,-132(s0)
80004f68:	f7442683          	lw	a3,-140(s0)
80004f6c:	00078613          	mv	a2,a5
80004f70:	f7842583          	lw	a1,-136(s0)
80004f74:	000700e7          	jalr	a4
80004f78:	f7042783          	lw	a5,-144(s0)
80004f7c:	00178793          	add	a5,a5,1
80004f80:	f6f42823          	sw	a5,-144(s0)
80004f84:	4fd0006f          	j	80005c80 <_vsnprintf+0xda8>
80004f88:	f7042783          	lw	a5,-144(s0)
80004f8c:	00178793          	add	a5,a5,1
80004f90:	f6f42823          	sw	a5,-144(s0)
80004f94:	fc042623          	sw	zero,-52(s0)
80004f98:	f7042783          	lw	a5,-144(s0)
80004f9c:	0007c783          	lbu	a5,0(a5)
80004fa0:	fe078793          	add	a5,a5,-32
80004fa4:	01000713          	li	a4,16
80004fa8:	0cf76863          	bltu	a4,a5,80005078 <_vsnprintf+0x1a0>
80004fac:	00279713          	sll	a4,a5,0x2
80004fb0:	a00017b7          	lui	a5,0xa0001
80004fb4:	88878793          	add	a5,a5,-1912 # a0000888 <__clz_tab+0x130>
80004fb8:	00f707b3          	add	a5,a4,a5
80004fbc:	0007a783          	lw	a5,0(a5)
80004fc0:	00078067          	jr	a5
80004fc4:	fcc42783          	lw	a5,-52(s0)
80004fc8:	0017e793          	or	a5,a5,1
80004fcc:	fcf42623          	sw	a5,-52(s0)
80004fd0:	f7042783          	lw	a5,-144(s0)
80004fd4:	00178793          	add	a5,a5,1
80004fd8:	f6f42823          	sw	a5,-144(s0)
80004fdc:	00100793          	li	a5,1
80004fe0:	fcf42023          	sw	a5,-64(s0)
80004fe4:	09c0006f          	j	80005080 <_vsnprintf+0x1a8>
80004fe8:	fcc42783          	lw	a5,-52(s0)
80004fec:	0027e793          	or	a5,a5,2
80004ff0:	fcf42623          	sw	a5,-52(s0)
80004ff4:	f7042783          	lw	a5,-144(s0)
80004ff8:	00178793          	add	a5,a5,1
80004ffc:	f6f42823          	sw	a5,-144(s0)
80005000:	00100793          	li	a5,1
80005004:	fcf42023          	sw	a5,-64(s0)
80005008:	0780006f          	j	80005080 <_vsnprintf+0x1a8>
8000500c:	fcc42783          	lw	a5,-52(s0)
80005010:	0047e793          	or	a5,a5,4
80005014:	fcf42623          	sw	a5,-52(s0)
80005018:	f7042783          	lw	a5,-144(s0)
8000501c:	00178793          	add	a5,a5,1
80005020:	f6f42823          	sw	a5,-144(s0)
80005024:	00100793          	li	a5,1
80005028:	fcf42023          	sw	a5,-64(s0)
8000502c:	0540006f          	j	80005080 <_vsnprintf+0x1a8>
80005030:	fcc42783          	lw	a5,-52(s0)
80005034:	0087e793          	or	a5,a5,8
80005038:	fcf42623          	sw	a5,-52(s0)
8000503c:	f7042783          	lw	a5,-144(s0)
80005040:	00178793          	add	a5,a5,1
80005044:	f6f42823          	sw	a5,-144(s0)
80005048:	00100793          	li	a5,1
8000504c:	fcf42023          	sw	a5,-64(s0)
80005050:	0300006f          	j	80005080 <_vsnprintf+0x1a8>
80005054:	fcc42783          	lw	a5,-52(s0)
80005058:	0107e793          	or	a5,a5,16
8000505c:	fcf42623          	sw	a5,-52(s0)
80005060:	f7042783          	lw	a5,-144(s0)
80005064:	00178793          	add	a5,a5,1
80005068:	f6f42823          	sw	a5,-144(s0)
8000506c:	00100793          	li	a5,1
80005070:	fcf42023          	sw	a5,-64(s0)
80005074:	00c0006f          	j	80005080 <_vsnprintf+0x1a8>
80005078:	fc042023          	sw	zero,-64(s0)
8000507c:	00000013          	nop
80005080:	fc042783          	lw	a5,-64(s0)
80005084:	f0079ae3          	bnez	a5,80004f98 <_vsnprintf+0xc0>
80005088:	fc042423          	sw	zero,-56(s0)
8000508c:	f7042783          	lw	a5,-144(s0)
80005090:	0007c783          	lbu	a5,0(a5)
80005094:	00078513          	mv	a0,a5
80005098:	ebcfe0ef          	jal	80003754 <_is_digit>
8000509c:	00050793          	mv	a5,a0
800050a0:	00078c63          	beqz	a5,800050b8 <_vsnprintf+0x1e0>
800050a4:	f7040793          	add	a5,s0,-144
800050a8:	00078513          	mv	a0,a5
800050ac:	ef8fe0ef          	jal	800037a4 <_atoi>
800050b0:	fca42423          	sw	a0,-56(s0)
800050b4:	0600006f          	j	80005114 <_vsnprintf+0x23c>
800050b8:	f7042783          	lw	a5,-144(s0)
800050bc:	0007c703          	lbu	a4,0(a5)
800050c0:	02a00793          	li	a5,42
800050c4:	04f71863          	bne	a4,a5,80005114 <_vsnprintf+0x23c>
800050c8:	f6c42783          	lw	a5,-148(s0)
800050cc:	00478713          	add	a4,a5,4
800050d0:	f6e42623          	sw	a4,-148(s0)
800050d4:	0007a783          	lw	a5,0(a5)
800050d8:	faf42423          	sw	a5,-88(s0)
800050dc:	fa842783          	lw	a5,-88(s0)
800050e0:	0207d063          	bgez	a5,80005100 <_vsnprintf+0x228>
800050e4:	fcc42783          	lw	a5,-52(s0)
800050e8:	0027e793          	or	a5,a5,2
800050ec:	fcf42623          	sw	a5,-52(s0)
800050f0:	fa842783          	lw	a5,-88(s0)
800050f4:	40f007b3          	neg	a5,a5
800050f8:	fcf42423          	sw	a5,-56(s0)
800050fc:	00c0006f          	j	80005108 <_vsnprintf+0x230>
80005100:	fa842783          	lw	a5,-88(s0)
80005104:	fcf42423          	sw	a5,-56(s0)
80005108:	f7042783          	lw	a5,-144(s0)
8000510c:	00178793          	add	a5,a5,1
80005110:	f6f42823          	sw	a5,-144(s0)
80005114:	fc042223          	sw	zero,-60(s0)
80005118:	f7042783          	lw	a5,-144(s0)
8000511c:	0007c703          	lbu	a4,0(a5)
80005120:	02e00793          	li	a5,46
80005124:	08f71463          	bne	a4,a5,800051ac <_vsnprintf+0x2d4>
80005128:	fcc42783          	lw	a5,-52(s0)
8000512c:	4007e793          	or	a5,a5,1024
80005130:	fcf42623          	sw	a5,-52(s0)
80005134:	f7042783          	lw	a5,-144(s0)
80005138:	00178793          	add	a5,a5,1
8000513c:	f6f42823          	sw	a5,-144(s0)
80005140:	f7042783          	lw	a5,-144(s0)
80005144:	0007c783          	lbu	a5,0(a5)
80005148:	00078513          	mv	a0,a5
8000514c:	e08fe0ef          	jal	80003754 <_is_digit>
80005150:	00050793          	mv	a5,a0
80005154:	00078c63          	beqz	a5,8000516c <_vsnprintf+0x294>
80005158:	f7040793          	add	a5,s0,-144
8000515c:	00078513          	mv	a0,a5
80005160:	e44fe0ef          	jal	800037a4 <_atoi>
80005164:	fca42223          	sw	a0,-60(s0)
80005168:	0440006f          	j	800051ac <_vsnprintf+0x2d4>
8000516c:	f7042783          	lw	a5,-144(s0)
80005170:	0007c703          	lbu	a4,0(a5)
80005174:	02a00793          	li	a5,42
80005178:	02f71a63          	bne	a4,a5,800051ac <_vsnprintf+0x2d4>
8000517c:	f6c42783          	lw	a5,-148(s0)
80005180:	00478713          	add	a4,a5,4
80005184:	f6e42623          	sw	a4,-148(s0)
80005188:	0007a783          	lw	a5,0(a5)
8000518c:	faf42223          	sw	a5,-92(s0)
80005190:	fa442783          	lw	a5,-92(s0)
80005194:	0007d463          	bgez	a5,8000519c <_vsnprintf+0x2c4>
80005198:	00000793          	li	a5,0
8000519c:	fcf42223          	sw	a5,-60(s0)
800051a0:	f7042783          	lw	a5,-144(s0)
800051a4:	00178793          	add	a5,a5,1
800051a8:	f6f42823          	sw	a5,-144(s0)
800051ac:	f7042783          	lw	a5,-144(s0)
800051b0:	0007c783          	lbu	a5,0(a5)
800051b4:	f9878793          	add	a5,a5,-104
800051b8:	01200713          	li	a4,18
800051bc:	0ef76c63          	bltu	a4,a5,800052b4 <_vsnprintf+0x3dc>
800051c0:	00279713          	sll	a4,a5,0x2
800051c4:	a00017b7          	lui	a5,0xa0001
800051c8:	8cc78793          	add	a5,a5,-1844 # a00008cc <__clz_tab+0x174>
800051cc:	00f707b3          	add	a5,a4,a5
800051d0:	0007a783          	lw	a5,0(a5)
800051d4:	00078067          	jr	a5
800051d8:	fcc42783          	lw	a5,-52(s0)
800051dc:	1007e793          	or	a5,a5,256
800051e0:	fcf42623          	sw	a5,-52(s0)
800051e4:	f7042783          	lw	a5,-144(s0)
800051e8:	00178793          	add	a5,a5,1
800051ec:	f6f42823          	sw	a5,-144(s0)
800051f0:	f7042783          	lw	a5,-144(s0)
800051f4:	0007c703          	lbu	a4,0(a5)
800051f8:	06c00793          	li	a5,108
800051fc:	0cf71063          	bne	a4,a5,800052bc <_vsnprintf+0x3e4>
80005200:	fcc42783          	lw	a5,-52(s0)
80005204:	2007e793          	or	a5,a5,512
80005208:	fcf42623          	sw	a5,-52(s0)
8000520c:	f7042783          	lw	a5,-144(s0)
80005210:	00178793          	add	a5,a5,1
80005214:	f6f42823          	sw	a5,-144(s0)
80005218:	0a40006f          	j	800052bc <_vsnprintf+0x3e4>
8000521c:	fcc42783          	lw	a5,-52(s0)
80005220:	0807e793          	or	a5,a5,128
80005224:	fcf42623          	sw	a5,-52(s0)
80005228:	f7042783          	lw	a5,-144(s0)
8000522c:	00178793          	add	a5,a5,1
80005230:	f6f42823          	sw	a5,-144(s0)
80005234:	f7042783          	lw	a5,-144(s0)
80005238:	0007c703          	lbu	a4,0(a5)
8000523c:	06800793          	li	a5,104
80005240:	08f71263          	bne	a4,a5,800052c4 <_vsnprintf+0x3ec>
80005244:	fcc42783          	lw	a5,-52(s0)
80005248:	0407e793          	or	a5,a5,64
8000524c:	fcf42623          	sw	a5,-52(s0)
80005250:	f7042783          	lw	a5,-144(s0)
80005254:	00178793          	add	a5,a5,1
80005258:	f6f42823          	sw	a5,-144(s0)
8000525c:	0680006f          	j	800052c4 <_vsnprintf+0x3ec>
80005260:	fcc42783          	lw	a5,-52(s0)
80005264:	1007e793          	or	a5,a5,256
80005268:	fcf42623          	sw	a5,-52(s0)
8000526c:	f7042783          	lw	a5,-144(s0)
80005270:	00178793          	add	a5,a5,1
80005274:	f6f42823          	sw	a5,-144(s0)
80005278:	0500006f          	j	800052c8 <_vsnprintf+0x3f0>
8000527c:	fcc42783          	lw	a5,-52(s0)
80005280:	2007e793          	or	a5,a5,512
80005284:	fcf42623          	sw	a5,-52(s0)
80005288:	f7042783          	lw	a5,-144(s0)
8000528c:	00178793          	add	a5,a5,1
80005290:	f6f42823          	sw	a5,-144(s0)
80005294:	0340006f          	j	800052c8 <_vsnprintf+0x3f0>
80005298:	fcc42783          	lw	a5,-52(s0)
8000529c:	1007e793          	or	a5,a5,256
800052a0:	fcf42623          	sw	a5,-52(s0)
800052a4:	f7042783          	lw	a5,-144(s0)
800052a8:	00178793          	add	a5,a5,1
800052ac:	f6f42823          	sw	a5,-144(s0)
800052b0:	0180006f          	j	800052c8 <_vsnprintf+0x3f0>
800052b4:	00000013          	nop
800052b8:	0100006f          	j	800052c8 <_vsnprintf+0x3f0>
800052bc:	00000013          	nop
800052c0:	0080006f          	j	800052c8 <_vsnprintf+0x3f0>
800052c4:	00000013          	nop
800052c8:	f7042783          	lw	a5,-144(s0)
800052cc:	0007c783          	lbu	a5,0(a5)
800052d0:	06700713          	li	a4,103
800052d4:	06f74e63          	blt	a4,a5,80005350 <_vsnprintf+0x478>
800052d8:	02500713          	li	a4,37
800052dc:	04e7d863          	bge	a5,a4,8000532c <_vsnprintf+0x454>
800052e0:	1690006f          	j	80005c48 <_vsnprintf+0xd70>
800052e4:	f9778793          	add	a5,a5,-105
800052e8:	00100713          	li	a4,1
800052ec:	00f717b3          	sll	a5,a4,a5
800052f0:	00009737          	lui	a4,0x9
800052f4:	04170713          	add	a4,a4,65 # 9041 <__stack_size+0x5041>
800052f8:	00e7f733          	and	a4,a5,a4
800052fc:	00e03733          	snez	a4,a4
80005300:	0ff77713          	zext.b	a4,a4
80005304:	06071063          	bnez	a4,80005364 <_vsnprintf+0x48c>
80005308:	0807f713          	and	a4,a5,128
8000530c:	00e03733          	snez	a4,a4
80005310:	0ff77713          	zext.b	a4,a4
80005314:	020714e3          	bnez	a4,80005b3c <_vsnprintf+0xc64>
80005318:	4007f793          	and	a5,a5,1024
8000531c:	00f037b3          	snez	a5,a5
80005320:	0ff7f793          	zext.b	a5,a5
80005324:	6c079263          	bnez	a5,800059e8 <_vsnprintf+0xb10>
80005328:	1210006f          	j	80005c48 <_vsnprintf+0xd70>
8000532c:	fdb78793          	add	a5,a5,-37
80005330:	04200713          	li	a4,66
80005334:	10f76ae3          	bltu	a4,a5,80005c48 <_vsnprintf+0xd70>
80005338:	00279713          	sll	a4,a5,0x2
8000533c:	a00017b7          	lui	a5,0xa0001
80005340:	91878793          	add	a5,a5,-1768 # a0000918 <__clz_tab+0x1c0>
80005344:	00f707b3          	add	a5,a4,a5
80005348:	0007a783          	lw	a5,0(a5)
8000534c:	00078067          	jr	a5
80005350:	07800713          	li	a4,120
80005354:	0ef74ae3          	blt	a4,a5,80005c48 <_vsnprintf+0xd70>
80005358:	06900713          	li	a4,105
8000535c:	f8e7d4e3          	bge	a5,a4,800052e4 <_vsnprintf+0x40c>
80005360:	0e90006f          	j	80005c48 <_vsnprintf+0xd70>
80005364:	f7042783          	lw	a5,-144(s0)
80005368:	0007c703          	lbu	a4,0(a5)
8000536c:	07800793          	li	a5,120
80005370:	00f70a63          	beq	a4,a5,80005384 <_vsnprintf+0x4ac>
80005374:	f7042783          	lw	a5,-144(s0)
80005378:	0007c703          	lbu	a4,0(a5)
8000537c:	05800793          	li	a5,88
80005380:	00f71863          	bne	a4,a5,80005390 <_vsnprintf+0x4b8>
80005384:	01000793          	li	a5,16
80005388:	faf42c23          	sw	a5,-72(s0)
8000538c:	0500006f          	j	800053dc <_vsnprintf+0x504>
80005390:	f7042783          	lw	a5,-144(s0)
80005394:	0007c703          	lbu	a4,0(a5)
80005398:	06f00793          	li	a5,111
8000539c:	00f71863          	bne	a4,a5,800053ac <_vsnprintf+0x4d4>
800053a0:	00800793          	li	a5,8
800053a4:	faf42c23          	sw	a5,-72(s0)
800053a8:	0340006f          	j	800053dc <_vsnprintf+0x504>
800053ac:	f7042783          	lw	a5,-144(s0)
800053b0:	0007c703          	lbu	a4,0(a5)
800053b4:	06200793          	li	a5,98
800053b8:	00f71863          	bne	a4,a5,800053c8 <_vsnprintf+0x4f0>
800053bc:	00200793          	li	a5,2
800053c0:	faf42c23          	sw	a5,-72(s0)
800053c4:	0180006f          	j	800053dc <_vsnprintf+0x504>
800053c8:	00a00793          	li	a5,10
800053cc:	faf42c23          	sw	a5,-72(s0)
800053d0:	fcc42783          	lw	a5,-52(s0)
800053d4:	fef7f793          	and	a5,a5,-17
800053d8:	fcf42623          	sw	a5,-52(s0)
800053dc:	f7042783          	lw	a5,-144(s0)
800053e0:	0007c703          	lbu	a4,0(a5)
800053e4:	05800793          	li	a5,88
800053e8:	00f71863          	bne	a4,a5,800053f8 <_vsnprintf+0x520>
800053ec:	fcc42783          	lw	a5,-52(s0)
800053f0:	0207e793          	or	a5,a5,32
800053f4:	fcf42623          	sw	a5,-52(s0)
800053f8:	f7042783          	lw	a5,-144(s0)
800053fc:	0007c703          	lbu	a4,0(a5)
80005400:	06900793          	li	a5,105
80005404:	02f70063          	beq	a4,a5,80005424 <_vsnprintf+0x54c>
80005408:	f7042783          	lw	a5,-144(s0)
8000540c:	0007c703          	lbu	a4,0(a5)
80005410:	06400793          	li	a5,100
80005414:	00f70863          	beq	a4,a5,80005424 <_vsnprintf+0x54c>
80005418:	fcc42783          	lw	a5,-52(s0)
8000541c:	ff37f793          	and	a5,a5,-13
80005420:	fcf42623          	sw	a5,-52(s0)
80005424:	fcc42783          	lw	a5,-52(s0)
80005428:	4007f793          	and	a5,a5,1024
8000542c:	00078863          	beqz	a5,8000543c <_vsnprintf+0x564>
80005430:	fcc42783          	lw	a5,-52(s0)
80005434:	ffe7f793          	and	a5,a5,-2
80005438:	fcf42623          	sw	a5,-52(s0)
8000543c:	f7042783          	lw	a5,-144(s0)
80005440:	0007c703          	lbu	a4,0(a5)
80005444:	06900793          	li	a5,105
80005448:	00f70a63          	beq	a4,a5,8000545c <_vsnprintf+0x584>
8000544c:	f7042783          	lw	a5,-144(s0)
80005450:	0007c703          	lbu	a4,0(a5)
80005454:	06400793          	li	a5,100
80005458:	22f71063          	bne	a4,a5,80005678 <_vsnprintf+0x7a0>
8000545c:	fcc42783          	lw	a5,-52(s0)
80005460:	2007f793          	and	a5,a5,512
80005464:	0c078a63          	beqz	a5,80005538 <_vsnprintf+0x660>
80005468:	f6c42783          	lw	a5,-148(s0)
8000546c:	00778793          	add	a5,a5,7
80005470:	ff87f793          	and	a5,a5,-8
80005474:	00878713          	add	a4,a5,8
80005478:	f6e42623          	sw	a4,-148(s0)
8000547c:	0007a703          	lw	a4,0(a5)
80005480:	0047a783          	lw	a5,4(a5)
80005484:	f8e42423          	sw	a4,-120(s0)
80005488:	f8f42623          	sw	a5,-116(s0)
8000548c:	f8c42783          	lw	a5,-116(s0)
80005490:	41f7d913          	sra	s2,a5,0x1f
80005494:	f8c42783          	lw	a5,-116(s0)
80005498:	41f7d993          	sra	s3,a5,0x1f
8000549c:	f8842783          	lw	a5,-120(s0)
800054a0:	0127ca33          	xor	s4,a5,s2
800054a4:	f8c42783          	lw	a5,-116(s0)
800054a8:	0137cab3          	xor	s5,a5,s3
800054ac:	412a0733          	sub	a4,s4,s2
800054b0:	00070693          	mv	a3,a4
800054b4:	00da36b3          	sltu	a3,s4,a3
800054b8:	413a87b3          	sub	a5,s5,s3
800054bc:	40d786b3          	sub	a3,a5,a3
800054c0:	00068793          	mv	a5,a3
800054c4:	00070a13          	mv	s4,a4
800054c8:	00078a93          	mv	s5,a5
800054cc:	000a0613          	mv	a2,s4
800054d0:	000a8693          	mv	a3,s5
800054d4:	f8c42783          	lw	a5,-116(s0)
800054d8:	01f7dd13          	srl	s10,a5,0x1f
800054dc:	00000d93          	li	s11,0
800054e0:	0ffd7713          	zext.b	a4,s10
800054e4:	fb842783          	lw	a5,-72(s0)
800054e8:	00078b13          	mv	s6,a5
800054ec:	00000b93          	li	s7,0
800054f0:	fcc42783          	lw	a5,-52(s0)
800054f4:	00f12623          	sw	a5,12(sp)
800054f8:	fc842783          	lw	a5,-56(s0)
800054fc:	00f12423          	sw	a5,8(sp)
80005500:	fc442783          	lw	a5,-60(s0)
80005504:	00f12223          	sw	a5,4(sp)
80005508:	01712023          	sw	s7,0(sp)
8000550c:	000b0893          	mv	a7,s6
80005510:	00070813          	mv	a6,a4
80005514:	00060713          	mv	a4,a2
80005518:	00068793          	mv	a5,a3
8000551c:	f7442683          	lw	a3,-140(s0)
80005520:	fbc42603          	lw	a2,-68(s0)
80005524:	f7842583          	lw	a1,-136(s0)
80005528:	f7c42503          	lw	a0,-132(s0)
8000552c:	889fe0ef          	jal	80003db4 <_ntoa_long_long>
80005530:	faa42e23          	sw	a0,-68(s0)
80005534:	2a40006f          	j	800057d8 <_vsnprintf+0x900>
80005538:	fcc42783          	lw	a5,-52(s0)
8000553c:	1007f793          	and	a5,a5,256
80005540:	06078c63          	beqz	a5,800055b8 <_vsnprintf+0x6e0>
80005544:	f6c42783          	lw	a5,-148(s0)
80005548:	00478713          	add	a4,a5,4
8000554c:	f6e42623          	sw	a4,-148(s0)
80005550:	0007a783          	lw	a5,0(a5)
80005554:	f8f42a23          	sw	a5,-108(s0)
80005558:	f9442783          	lw	a5,-108(s0)
8000555c:	41f7d713          	sra	a4,a5,0x1f
80005560:	f9442783          	lw	a5,-108(s0)
80005564:	00f747b3          	xor	a5,a4,a5
80005568:	40e787b3          	sub	a5,a5,a4
8000556c:	00078693          	mv	a3,a5
80005570:	f9442783          	lw	a5,-108(s0)
80005574:	01f7d793          	srl	a5,a5,0x1f
80005578:	0ff7f713          	zext.b	a4,a5
8000557c:	fcc42783          	lw	a5,-52(s0)
80005580:	00f12223          	sw	a5,4(sp)
80005584:	fc842783          	lw	a5,-56(s0)
80005588:	00f12023          	sw	a5,0(sp)
8000558c:	fc442883          	lw	a7,-60(s0)
80005590:	fb842803          	lw	a6,-72(s0)
80005594:	00070793          	mv	a5,a4
80005598:	00068713          	mv	a4,a3
8000559c:	f7442683          	lw	a3,-140(s0)
800055a0:	fbc42603          	lw	a2,-68(s0)
800055a4:	f7842583          	lw	a1,-136(s0)
800055a8:	f7c42503          	lw	a0,-132(s0)
800055ac:	ec0fe0ef          	jal	80003c6c <_ntoa_long>
800055b0:	faa42e23          	sw	a0,-68(s0)
800055b4:	2240006f          	j	800057d8 <_vsnprintf+0x900>
800055b8:	fcc42783          	lw	a5,-52(s0)
800055bc:	0407f793          	and	a5,a5,64
800055c0:	00078e63          	beqz	a5,800055dc <_vsnprintf+0x704>
800055c4:	f6c42783          	lw	a5,-148(s0)
800055c8:	00478713          	add	a4,a5,4
800055cc:	f6e42623          	sw	a4,-148(s0)
800055d0:	0007a783          	lw	a5,0(a5)
800055d4:	0ff7f793          	zext.b	a5,a5
800055d8:	03c0006f          	j	80005614 <_vsnprintf+0x73c>
800055dc:	fcc42783          	lw	a5,-52(s0)
800055e0:	0807f793          	and	a5,a5,128
800055e4:	02078063          	beqz	a5,80005604 <_vsnprintf+0x72c>
800055e8:	f6c42783          	lw	a5,-148(s0)
800055ec:	00478713          	add	a4,a5,4
800055f0:	f6e42623          	sw	a4,-148(s0)
800055f4:	0007a783          	lw	a5,0(a5)
800055f8:	01079793          	sll	a5,a5,0x10
800055fc:	4107d793          	sra	a5,a5,0x10
80005600:	0140006f          	j	80005614 <_vsnprintf+0x73c>
80005604:	f6c42783          	lw	a5,-148(s0)
80005608:	00478713          	add	a4,a5,4
8000560c:	f6e42623          	sw	a4,-148(s0)
80005610:	0007a783          	lw	a5,0(a5)
80005614:	f8f42c23          	sw	a5,-104(s0)
80005618:	f9842783          	lw	a5,-104(s0)
8000561c:	41f7d713          	sra	a4,a5,0x1f
80005620:	f9842783          	lw	a5,-104(s0)
80005624:	00f747b3          	xor	a5,a4,a5
80005628:	40e787b3          	sub	a5,a5,a4
8000562c:	00078693          	mv	a3,a5
80005630:	f9842783          	lw	a5,-104(s0)
80005634:	01f7d793          	srl	a5,a5,0x1f
80005638:	0ff7f713          	zext.b	a4,a5
8000563c:	fcc42783          	lw	a5,-52(s0)
80005640:	00f12223          	sw	a5,4(sp)
80005644:	fc842783          	lw	a5,-56(s0)
80005648:	00f12023          	sw	a5,0(sp)
8000564c:	fc442883          	lw	a7,-60(s0)
80005650:	fb842803          	lw	a6,-72(s0)
80005654:	00070793          	mv	a5,a4
80005658:	00068713          	mv	a4,a3
8000565c:	f7442683          	lw	a3,-140(s0)
80005660:	fbc42603          	lw	a2,-68(s0)
80005664:	f7842583          	lw	a1,-136(s0)
80005668:	f7c42503          	lw	a0,-132(s0)
8000566c:	e00fe0ef          	jal	80003c6c <_ntoa_long>
80005670:	faa42e23          	sw	a0,-68(s0)
80005674:	1640006f          	j	800057d8 <_vsnprintf+0x900>
80005678:	fcc42783          	lw	a5,-52(s0)
8000567c:	2007f793          	and	a5,a5,512
80005680:	06078663          	beqz	a5,800056ec <_vsnprintf+0x814>
80005684:	f6c42783          	lw	a5,-148(s0)
80005688:	00778793          	add	a5,a5,7
8000568c:	ff87f793          	and	a5,a5,-8
80005690:	00878713          	add	a4,a5,8
80005694:	f6e42623          	sw	a4,-148(s0)
80005698:	0007a703          	lw	a4,0(a5)
8000569c:	0047a783          	lw	a5,4(a5)
800056a0:	fb842683          	lw	a3,-72(s0)
800056a4:	00068c13          	mv	s8,a3
800056a8:	00000c93          	li	s9,0
800056ac:	fcc42683          	lw	a3,-52(s0)
800056b0:	00d12623          	sw	a3,12(sp)
800056b4:	fc842683          	lw	a3,-56(s0)
800056b8:	00d12423          	sw	a3,8(sp)
800056bc:	fc442683          	lw	a3,-60(s0)
800056c0:	00d12223          	sw	a3,4(sp)
800056c4:	01912023          	sw	s9,0(sp)
800056c8:	000c0893          	mv	a7,s8
800056cc:	00000813          	li	a6,0
800056d0:	f7442683          	lw	a3,-140(s0)
800056d4:	fbc42603          	lw	a2,-68(s0)
800056d8:	f7842583          	lw	a1,-136(s0)
800056dc:	f7c42503          	lw	a0,-132(s0)
800056e0:	ed4fe0ef          	jal	80003db4 <_ntoa_long_long>
800056e4:	faa42e23          	sw	a0,-68(s0)
800056e8:	0f00006f          	j	800057d8 <_vsnprintf+0x900>
800056ec:	fcc42783          	lw	a5,-52(s0)
800056f0:	1007f793          	and	a5,a5,256
800056f4:	04078663          	beqz	a5,80005740 <_vsnprintf+0x868>
800056f8:	f6c42783          	lw	a5,-148(s0)
800056fc:	00478713          	add	a4,a5,4
80005700:	f6e42623          	sw	a4,-148(s0)
80005704:	0007a703          	lw	a4,0(a5)
80005708:	fcc42783          	lw	a5,-52(s0)
8000570c:	00f12223          	sw	a5,4(sp)
80005710:	fc842783          	lw	a5,-56(s0)
80005714:	00f12023          	sw	a5,0(sp)
80005718:	fc442883          	lw	a7,-60(s0)
8000571c:	fb842803          	lw	a6,-72(s0)
80005720:	00000793          	li	a5,0
80005724:	f7442683          	lw	a3,-140(s0)
80005728:	fbc42603          	lw	a2,-68(s0)
8000572c:	f7842583          	lw	a1,-136(s0)
80005730:	f7c42503          	lw	a0,-132(s0)
80005734:	d38fe0ef          	jal	80003c6c <_ntoa_long>
80005738:	faa42e23          	sw	a0,-68(s0)
8000573c:	09c0006f          	j	800057d8 <_vsnprintf+0x900>
80005740:	fcc42783          	lw	a5,-52(s0)
80005744:	0407f793          	and	a5,a5,64
80005748:	00078e63          	beqz	a5,80005764 <_vsnprintf+0x88c>
8000574c:	f6c42783          	lw	a5,-148(s0)
80005750:	00478713          	add	a4,a5,4
80005754:	f6e42623          	sw	a4,-148(s0)
80005758:	0007a783          	lw	a5,0(a5)
8000575c:	0ff7f793          	zext.b	a5,a5
80005760:	03c0006f          	j	8000579c <_vsnprintf+0x8c4>
80005764:	fcc42783          	lw	a5,-52(s0)
80005768:	0807f793          	and	a5,a5,128
8000576c:	02078063          	beqz	a5,8000578c <_vsnprintf+0x8b4>
80005770:	f6c42783          	lw	a5,-148(s0)
80005774:	00478713          	add	a4,a5,4
80005778:	f6e42623          	sw	a4,-148(s0)
8000577c:	0007a783          	lw	a5,0(a5)
80005780:	01079793          	sll	a5,a5,0x10
80005784:	0107d793          	srl	a5,a5,0x10
80005788:	0140006f          	j	8000579c <_vsnprintf+0x8c4>
8000578c:	f6c42783          	lw	a5,-148(s0)
80005790:	00478713          	add	a4,a5,4
80005794:	f6e42623          	sw	a4,-148(s0)
80005798:	0007a783          	lw	a5,0(a5)
8000579c:	f8f42e23          	sw	a5,-100(s0)
800057a0:	fcc42783          	lw	a5,-52(s0)
800057a4:	00f12223          	sw	a5,4(sp)
800057a8:	fc842783          	lw	a5,-56(s0)
800057ac:	00f12023          	sw	a5,0(sp)
800057b0:	fc442883          	lw	a7,-60(s0)
800057b4:	fb842803          	lw	a6,-72(s0)
800057b8:	00000793          	li	a5,0
800057bc:	f9c42703          	lw	a4,-100(s0)
800057c0:	f7442683          	lw	a3,-140(s0)
800057c4:	fbc42603          	lw	a2,-68(s0)
800057c8:	f7842583          	lw	a1,-136(s0)
800057cc:	f7c42503          	lw	a0,-132(s0)
800057d0:	c9cfe0ef          	jal	80003c6c <_ntoa_long>
800057d4:	faa42e23          	sw	a0,-68(s0)
800057d8:	f7042783          	lw	a5,-144(s0)
800057dc:	00178793          	add	a5,a5,1
800057e0:	f6f42823          	sw	a5,-144(s0)
800057e4:	49c0006f          	j	80005c80 <_vsnprintf+0xda8>
800057e8:	f7042783          	lw	a5,-144(s0)
800057ec:	0007c703          	lbu	a4,0(a5)
800057f0:	04600793          	li	a5,70
800057f4:	00f71863          	bne	a4,a5,80005804 <_vsnprintf+0x92c>
800057f8:	fcc42783          	lw	a5,-52(s0)
800057fc:	0207e793          	or	a5,a5,32
80005800:	fcf42623          	sw	a5,-52(s0)
80005804:	f6c42783          	lw	a5,-148(s0)
80005808:	00778793          	add	a5,a5,7
8000580c:	ff87f793          	and	a5,a5,-8
80005810:	00878713          	add	a4,a5,8
80005814:	f6e42623          	sw	a4,-148(s0)
80005818:	0007a703          	lw	a4,0(a5)
8000581c:	0047a783          	lw	a5,4(a5)
80005820:	fcc42683          	lw	a3,-52(s0)
80005824:	00d12023          	sw	a3,0(sp)
80005828:	fc842883          	lw	a7,-56(s0)
8000582c:	fc442803          	lw	a6,-60(s0)
80005830:	f7442683          	lw	a3,-140(s0)
80005834:	fbc42603          	lw	a2,-68(s0)
80005838:	f7842583          	lw	a1,-136(s0)
8000583c:	f7c42503          	lw	a0,-132(s0)
80005840:	f08fe0ef          	jal	80003f48 <_ftoa>
80005844:	faa42e23          	sw	a0,-68(s0)
80005848:	f7042783          	lw	a5,-144(s0)
8000584c:	00178793          	add	a5,a5,1
80005850:	f6f42823          	sw	a5,-144(s0)
80005854:	42c0006f          	j	80005c80 <_vsnprintf+0xda8>
80005858:	f7042783          	lw	a5,-144(s0)
8000585c:	0007c703          	lbu	a4,0(a5)
80005860:	06700793          	li	a5,103
80005864:	00f70a63          	beq	a4,a5,80005878 <_vsnprintf+0x9a0>
80005868:	f7042783          	lw	a5,-144(s0)
8000586c:	0007c703          	lbu	a4,0(a5)
80005870:	04700793          	li	a5,71
80005874:	00f71c63          	bne	a4,a5,8000588c <_vsnprintf+0x9b4>
80005878:	fcc42703          	lw	a4,-52(s0)
8000587c:	000017b7          	lui	a5,0x1
80005880:	80078793          	add	a5,a5,-2048 # 800 <__stack_size-0x3800>
80005884:	00f767b3          	or	a5,a4,a5
80005888:	fcf42623          	sw	a5,-52(s0)
8000588c:	f7042783          	lw	a5,-144(s0)
80005890:	0007c703          	lbu	a4,0(a5)
80005894:	04500793          	li	a5,69
80005898:	00f70a63          	beq	a4,a5,800058ac <_vsnprintf+0x9d4>
8000589c:	f7042783          	lw	a5,-144(s0)
800058a0:	0007c703          	lbu	a4,0(a5)
800058a4:	04700793          	li	a5,71
800058a8:	00f71863          	bne	a4,a5,800058b8 <_vsnprintf+0x9e0>
800058ac:	fcc42783          	lw	a5,-52(s0)
800058b0:	0207e793          	or	a5,a5,32
800058b4:	fcf42623          	sw	a5,-52(s0)
800058b8:	f6c42783          	lw	a5,-148(s0)
800058bc:	00778793          	add	a5,a5,7
800058c0:	ff87f793          	and	a5,a5,-8
800058c4:	00878713          	add	a4,a5,8
800058c8:	f6e42623          	sw	a4,-148(s0)
800058cc:	0007a703          	lw	a4,0(a5)
800058d0:	0047a783          	lw	a5,4(a5)
800058d4:	fcc42683          	lw	a3,-52(s0)
800058d8:	00d12023          	sw	a3,0(sp)
800058dc:	fc842883          	lw	a7,-56(s0)
800058e0:	fc442803          	lw	a6,-60(s0)
800058e4:	f7442683          	lw	a3,-140(s0)
800058e8:	fbc42603          	lw	a2,-68(s0)
800058ec:	f7842583          	lw	a1,-136(s0)
800058f0:	f7c42503          	lw	a0,-132(s0)
800058f4:	d75fe0ef          	jal	80004668 <_etoa>
800058f8:	faa42e23          	sw	a0,-68(s0)
800058fc:	f7042783          	lw	a5,-144(s0)
80005900:	00178793          	add	a5,a5,1
80005904:	f6f42823          	sw	a5,-144(s0)
80005908:	3780006f          	j	80005c80 <_vsnprintf+0xda8>
8000590c:	00100793          	li	a5,1
80005910:	faf42a23          	sw	a5,-76(s0)
80005914:	fcc42783          	lw	a5,-52(s0)
80005918:	0027f793          	and	a5,a5,2
8000591c:	04079063          	bnez	a5,8000595c <_vsnprintf+0xa84>
80005920:	0280006f          	j	80005948 <_vsnprintf+0xa70>
80005924:	fbc42783          	lw	a5,-68(s0)
80005928:	00178713          	add	a4,a5,1
8000592c:	fae42e23          	sw	a4,-68(s0)
80005930:	f7c42703          	lw	a4,-132(s0)
80005934:	f7442683          	lw	a3,-140(s0)
80005938:	00078613          	mv	a2,a5
8000593c:	f7842583          	lw	a1,-136(s0)
80005940:	02000513          	li	a0,32
80005944:	000700e7          	jalr	a4
80005948:	fb442783          	lw	a5,-76(s0)
8000594c:	00178713          	add	a4,a5,1
80005950:	fae42a23          	sw	a4,-76(s0)
80005954:	fc842703          	lw	a4,-56(s0)
80005958:	fce7e6e3          	bltu	a5,a4,80005924 <_vsnprintf+0xa4c>
8000595c:	f6c42783          	lw	a5,-148(s0)
80005960:	00478713          	add	a4,a5,4
80005964:	f6e42623          	sw	a4,-148(s0)
80005968:	0007a783          	lw	a5,0(a5)
8000596c:	0ff7f513          	zext.b	a0,a5
80005970:	fbc42783          	lw	a5,-68(s0)
80005974:	00178713          	add	a4,a5,1
80005978:	fae42e23          	sw	a4,-68(s0)
8000597c:	f7c42703          	lw	a4,-132(s0)
80005980:	f7442683          	lw	a3,-140(s0)
80005984:	00078613          	mv	a2,a5
80005988:	f7842583          	lw	a1,-136(s0)
8000598c:	000700e7          	jalr	a4
80005990:	fcc42783          	lw	a5,-52(s0)
80005994:	0027f793          	and	a5,a5,2
80005998:	04078063          	beqz	a5,800059d8 <_vsnprintf+0xb00>
8000599c:	0280006f          	j	800059c4 <_vsnprintf+0xaec>
800059a0:	fbc42783          	lw	a5,-68(s0)
800059a4:	00178713          	add	a4,a5,1
800059a8:	fae42e23          	sw	a4,-68(s0)
800059ac:	f7c42703          	lw	a4,-132(s0)
800059b0:	f7442683          	lw	a3,-140(s0)
800059b4:	00078613          	mv	a2,a5
800059b8:	f7842583          	lw	a1,-136(s0)
800059bc:	02000513          	li	a0,32
800059c0:	000700e7          	jalr	a4
800059c4:	fb442783          	lw	a5,-76(s0)
800059c8:	00178713          	add	a4,a5,1
800059cc:	fae42a23          	sw	a4,-76(s0)
800059d0:	fc842703          	lw	a4,-56(s0)
800059d4:	fce7e6e3          	bltu	a5,a4,800059a0 <_vsnprintf+0xac8>
800059d8:	f7042783          	lw	a5,-144(s0)
800059dc:	00178793          	add	a5,a5,1
800059e0:	f6f42823          	sw	a5,-144(s0)
800059e4:	29c0006f          	j	80005c80 <_vsnprintf+0xda8>
800059e8:	f6c42783          	lw	a5,-148(s0)
800059ec:	00478713          	add	a4,a5,4
800059f0:	f6e42623          	sw	a4,-148(s0)
800059f4:	0007a783          	lw	a5,0(a5)
800059f8:	faf42823          	sw	a5,-80(s0)
800059fc:	fc442783          	lw	a5,-60(s0)
80005a00:	00078663          	beqz	a5,80005a0c <_vsnprintf+0xb34>
80005a04:	fc442783          	lw	a5,-60(s0)
80005a08:	0080006f          	j	80005a10 <_vsnprintf+0xb38>
80005a0c:	fff00793          	li	a5,-1
80005a10:	00078593          	mv	a1,a5
80005a14:	fb042503          	lw	a0,-80(s0)
80005a18:	cd9fd0ef          	jal	800036f0 <_strnlen_s>
80005a1c:	faa42623          	sw	a0,-84(s0)
80005a20:	fcc42783          	lw	a5,-52(s0)
80005a24:	4007f793          	and	a5,a5,1024
80005a28:	00078c63          	beqz	a5,80005a40 <_vsnprintf+0xb68>
80005a2c:	fac42703          	lw	a4,-84(s0)
80005a30:	fc442783          	lw	a5,-60(s0)
80005a34:	00f77463          	bgeu	a4,a5,80005a3c <_vsnprintf+0xb64>
80005a38:	00070793          	mv	a5,a4
80005a3c:	faf42623          	sw	a5,-84(s0)
80005a40:	fcc42783          	lw	a5,-52(s0)
80005a44:	0027f793          	and	a5,a5,2
80005a48:	06079a63          	bnez	a5,80005abc <_vsnprintf+0xbe4>
80005a4c:	0280006f          	j	80005a74 <_vsnprintf+0xb9c>
80005a50:	fbc42783          	lw	a5,-68(s0)
80005a54:	00178713          	add	a4,a5,1
80005a58:	fae42e23          	sw	a4,-68(s0)
80005a5c:	f7c42703          	lw	a4,-132(s0)
80005a60:	f7442683          	lw	a3,-140(s0)
80005a64:	00078613          	mv	a2,a5
80005a68:	f7842583          	lw	a1,-136(s0)
80005a6c:	02000513          	li	a0,32
80005a70:	000700e7          	jalr	a4
80005a74:	fac42783          	lw	a5,-84(s0)
80005a78:	00178713          	add	a4,a5,1
80005a7c:	fae42623          	sw	a4,-84(s0)
80005a80:	fc842703          	lw	a4,-56(s0)
80005a84:	fce7e6e3          	bltu	a5,a4,80005a50 <_vsnprintf+0xb78>
80005a88:	0340006f          	j	80005abc <_vsnprintf+0xbe4>
80005a8c:	fb042783          	lw	a5,-80(s0)
80005a90:	00178713          	add	a4,a5,1
80005a94:	fae42823          	sw	a4,-80(s0)
80005a98:	0007c503          	lbu	a0,0(a5)
80005a9c:	fbc42783          	lw	a5,-68(s0)
80005aa0:	00178713          	add	a4,a5,1
80005aa4:	fae42e23          	sw	a4,-68(s0)
80005aa8:	f7c42703          	lw	a4,-132(s0)
80005aac:	f7442683          	lw	a3,-140(s0)
80005ab0:	00078613          	mv	a2,a5
80005ab4:	f7842583          	lw	a1,-136(s0)
80005ab8:	000700e7          	jalr	a4
80005abc:	fb042783          	lw	a5,-80(s0)
80005ac0:	0007c783          	lbu	a5,0(a5)
80005ac4:	02078063          	beqz	a5,80005ae4 <_vsnprintf+0xc0c>
80005ac8:	fcc42783          	lw	a5,-52(s0)
80005acc:	4007f793          	and	a5,a5,1024
80005ad0:	fa078ee3          	beqz	a5,80005a8c <_vsnprintf+0xbb4>
80005ad4:	fc442783          	lw	a5,-60(s0)
80005ad8:	fff78713          	add	a4,a5,-1
80005adc:	fce42223          	sw	a4,-60(s0)
80005ae0:	fa0796e3          	bnez	a5,80005a8c <_vsnprintf+0xbb4>
80005ae4:	fcc42783          	lw	a5,-52(s0)
80005ae8:	0027f793          	and	a5,a5,2
80005aec:	04078063          	beqz	a5,80005b2c <_vsnprintf+0xc54>
80005af0:	0280006f          	j	80005b18 <_vsnprintf+0xc40>
80005af4:	fbc42783          	lw	a5,-68(s0)
80005af8:	00178713          	add	a4,a5,1
80005afc:	fae42e23          	sw	a4,-68(s0)
80005b00:	f7c42703          	lw	a4,-132(s0)
80005b04:	f7442683          	lw	a3,-140(s0)
80005b08:	00078613          	mv	a2,a5
80005b0c:	f7842583          	lw	a1,-136(s0)
80005b10:	02000513          	li	a0,32
80005b14:	000700e7          	jalr	a4
80005b18:	fac42783          	lw	a5,-84(s0)
80005b1c:	00178713          	add	a4,a5,1
80005b20:	fae42623          	sw	a4,-84(s0)
80005b24:	fc842703          	lw	a4,-56(s0)
80005b28:	fce7e6e3          	bltu	a5,a4,80005af4 <_vsnprintf+0xc1c>
80005b2c:	f7042783          	lw	a5,-144(s0)
80005b30:	00178793          	add	a5,a5,1
80005b34:	f6f42823          	sw	a5,-144(s0)
80005b38:	1480006f          	j	80005c80 <_vsnprintf+0xda8>
80005b3c:	00800793          	li	a5,8
80005b40:	fcf42423          	sw	a5,-56(s0)
80005b44:	fcc42783          	lw	a5,-52(s0)
80005b48:	0217e793          	or	a5,a5,33
80005b4c:	fcf42623          	sw	a5,-52(s0)
80005b50:	fa0401a3          	sb	zero,-93(s0)
80005b54:	fa344783          	lbu	a5,-93(s0)
80005b58:	06078263          	beqz	a5,80005bbc <_vsnprintf+0xce4>
80005b5c:	f6c42783          	lw	a5,-148(s0)
80005b60:	00478713          	add	a4,a5,4
80005b64:	f6e42623          	sw	a4,-148(s0)
80005b68:	0007a783          	lw	a5,0(a5)
80005b6c:	f6f42023          	sw	a5,-160(s0)
80005b70:	f6042223          	sw	zero,-156(s0)
80005b74:	fcc42783          	lw	a5,-52(s0)
80005b78:	00f12623          	sw	a5,12(sp)
80005b7c:	fc842783          	lw	a5,-56(s0)
80005b80:	00f12423          	sw	a5,8(sp)
80005b84:	fc442783          	lw	a5,-60(s0)
80005b88:	00f12223          	sw	a5,4(sp)
80005b8c:	00012023          	sw	zero,0(sp)
80005b90:	01000893          	li	a7,16
80005b94:	00000813          	li	a6,0
80005b98:	f6042703          	lw	a4,-160(s0)
80005b9c:	f6442783          	lw	a5,-156(s0)
80005ba0:	f7442683          	lw	a3,-140(s0)
80005ba4:	fbc42603          	lw	a2,-68(s0)
80005ba8:	f7842583          	lw	a1,-136(s0)
80005bac:	f7c42503          	lw	a0,-132(s0)
80005bb0:	a04fe0ef          	jal	80003db4 <_ntoa_long_long>
80005bb4:	faa42e23          	sw	a0,-68(s0)
80005bb8:	04c0006f          	j	80005c04 <_vsnprintf+0xd2c>
80005bbc:	f6c42783          	lw	a5,-148(s0)
80005bc0:	00478713          	add	a4,a5,4
80005bc4:	f6e42623          	sw	a4,-148(s0)
80005bc8:	0007a783          	lw	a5,0(a5)
80005bcc:	00078713          	mv	a4,a5
80005bd0:	fcc42783          	lw	a5,-52(s0)
80005bd4:	00f12223          	sw	a5,4(sp)
80005bd8:	fc842783          	lw	a5,-56(s0)
80005bdc:	00f12023          	sw	a5,0(sp)
80005be0:	fc442883          	lw	a7,-60(s0)
80005be4:	01000813          	li	a6,16
80005be8:	00000793          	li	a5,0
80005bec:	f7442683          	lw	a3,-140(s0)
80005bf0:	fbc42603          	lw	a2,-68(s0)
80005bf4:	f7842583          	lw	a1,-136(s0)
80005bf8:	f7c42503          	lw	a0,-132(s0)
80005bfc:	870fe0ef          	jal	80003c6c <_ntoa_long>
80005c00:	faa42e23          	sw	a0,-68(s0)
80005c04:	f7042783          	lw	a5,-144(s0)
80005c08:	00178793          	add	a5,a5,1
80005c0c:	f6f42823          	sw	a5,-144(s0)
80005c10:	0700006f          	j	80005c80 <_vsnprintf+0xda8>
80005c14:	fbc42783          	lw	a5,-68(s0)
80005c18:	00178713          	add	a4,a5,1
80005c1c:	fae42e23          	sw	a4,-68(s0)
80005c20:	f7c42703          	lw	a4,-132(s0)
80005c24:	f7442683          	lw	a3,-140(s0)
80005c28:	00078613          	mv	a2,a5
80005c2c:	f7842583          	lw	a1,-136(s0)
80005c30:	02500513          	li	a0,37
80005c34:	000700e7          	jalr	a4
80005c38:	f7042783          	lw	a5,-144(s0)
80005c3c:	00178793          	add	a5,a5,1
80005c40:	f6f42823          	sw	a5,-144(s0)
80005c44:	03c0006f          	j	80005c80 <_vsnprintf+0xda8>
80005c48:	f7042783          	lw	a5,-144(s0)
80005c4c:	0007c503          	lbu	a0,0(a5)
80005c50:	fbc42783          	lw	a5,-68(s0)
80005c54:	00178713          	add	a4,a5,1
80005c58:	fae42e23          	sw	a4,-68(s0)
80005c5c:	f7c42703          	lw	a4,-132(s0)
80005c60:	f7442683          	lw	a3,-140(s0)
80005c64:	00078613          	mv	a2,a5
80005c68:	f7842583          	lw	a1,-136(s0)
80005c6c:	000700e7          	jalr	a4
80005c70:	f7042783          	lw	a5,-144(s0)
80005c74:	00178793          	add	a5,a5,1
80005c78:	f6f42823          	sw	a5,-144(s0)
80005c7c:	00000013          	nop
80005c80:	f7042783          	lw	a5,-144(s0)
80005c84:	0007c783          	lbu	a5,0(a5)
80005c88:	aa079c63          	bnez	a5,80004f40 <_vsnprintf+0x68>
80005c8c:	fbc42703          	lw	a4,-68(s0)
80005c90:	f7442783          	lw	a5,-140(s0)
80005c94:	00f76863          	bltu	a4,a5,80005ca4 <_vsnprintf+0xdcc>
80005c98:	f7442783          	lw	a5,-140(s0)
80005c9c:	fff78793          	add	a5,a5,-1
80005ca0:	0080006f          	j	80005ca8 <_vsnprintf+0xdd0>
80005ca4:	fbc42783          	lw	a5,-68(s0)
80005ca8:	f7c42703          	lw	a4,-132(s0)
80005cac:	f7442683          	lw	a3,-140(s0)
80005cb0:	00078613          	mv	a2,a5
80005cb4:	f7842583          	lw	a1,-136(s0)
80005cb8:	00000513          	li	a0,0
80005cbc:	000700e7          	jalr	a4
80005cc0:	fbc42783          	lw	a5,-68(s0)
80005cc4:	00078513          	mv	a0,a5
80005cc8:	0ac12083          	lw	ra,172(sp)
80005ccc:	0a812403          	lw	s0,168(sp)
80005cd0:	0a412903          	lw	s2,164(sp)
80005cd4:	0a012983          	lw	s3,160(sp)
80005cd8:	09c12a03          	lw	s4,156(sp)
80005cdc:	09812a83          	lw	s5,152(sp)
80005ce0:	09412b03          	lw	s6,148(sp)
80005ce4:	09012b83          	lw	s7,144(sp)
80005ce8:	08c12c03          	lw	s8,140(sp)
80005cec:	08812c83          	lw	s9,136(sp)
80005cf0:	08412d03          	lw	s10,132(sp)
80005cf4:	08012d83          	lw	s11,128(sp)
80005cf8:	0b010113          	add	sp,sp,176
80005cfc:	00008067          	ret

80005d00 <printf_>:
80005d00:	fb010113          	add	sp,sp,-80
80005d04:	02112623          	sw	ra,44(sp)
80005d08:	02812423          	sw	s0,40(sp)
80005d0c:	03010413          	add	s0,sp,48
80005d10:	fca42e23          	sw	a0,-36(s0)
80005d14:	00b42223          	sw	a1,4(s0)
80005d18:	00c42423          	sw	a2,8(s0)
80005d1c:	00d42623          	sw	a3,12(s0)
80005d20:	00e42823          	sw	a4,16(s0)
80005d24:	00f42a23          	sw	a5,20(s0)
80005d28:	01042c23          	sw	a6,24(s0)
80005d2c:	01142e23          	sw	a7,28(s0)
80005d30:	02040793          	add	a5,s0,32
80005d34:	fcf42c23          	sw	a5,-40(s0)
80005d38:	fd842783          	lw	a5,-40(s0)
80005d3c:	fe478793          	add	a5,a5,-28
80005d40:	fef42423          	sw	a5,-24(s0)
80005d44:	fe842703          	lw	a4,-24(s0)
80005d48:	fe440793          	add	a5,s0,-28
80005d4c:	fdc42683          	lw	a3,-36(s0)
80005d50:	fff00613          	li	a2,-1
80005d54:	00078593          	mv	a1,a5
80005d58:	800037b7          	lui	a5,0x80003
80005d5c:	6a478513          	add	a0,a5,1700 # 800036a4 <_out_char>
80005d60:	978ff0ef          	jal	80004ed8 <_vsnprintf>
80005d64:	fea42623          	sw	a0,-20(s0)
80005d68:	fec42783          	lw	a5,-20(s0)
80005d6c:	00078513          	mv	a0,a5
80005d70:	02c12083          	lw	ra,44(sp)
80005d74:	02812403          	lw	s0,40(sp)
80005d78:	05010113          	add	sp,sp,80
80005d7c:	00008067          	ret

80005d80 <main>:
80005d80:	fe010113          	add	sp,sp,-32
80005d84:	00112e23          	sw	ra,28(sp)
80005d88:	00812c23          	sw	s0,24(sp)
80005d8c:	02010413          	add	s0,sp,32
80005d90:	a00007b7          	lui	a5,0xa0000
80005d94:	7147a783          	lw	a5,1812(a5) # a0000714 <main+0x1fffa994>
80005d98:	fef42623          	sw	a5,-20(s0)
80005d9c:	a00007b7          	lui	a5,0xa0000
80005da0:	7187a783          	lw	a5,1816(a5) # a0000718 <main+0x1fffa998>
80005da4:	fef42423          	sw	a5,-24(s0)
80005da8:	fe842583          	lw	a1,-24(s0)
80005dac:	fec42503          	lw	a0,-20(s0)
80005db0:	cddfc0ef          	jal	80002a8c <__mulsf3>
80005db4:	00050793          	mv	a5,a0
80005db8:	fef42223          	sw	a5,-28(s0)
80005dbc:	fe442503          	lw	a0,-28(s0)
80005dc0:	fe9fc0ef          	jal	80002da8 <__extendsfdf2>
80005dc4:	00050713          	mv	a4,a0
80005dc8:	00058793          	mv	a5,a1
80005dcc:	00070613          	mv	a2,a4
80005dd0:	00078693          	mv	a3,a5
80005dd4:	a00007b7          	lui	a5,0xa0000
80005dd8:	70078513          	add	a0,a5,1792 # a0000700 <main+0x1fffa980>
80005ddc:	f25ff0ef          	jal	80005d00 <printf_>
80005de0:	00000793          	li	a5,0
80005de4:	00078513          	mv	a0,a5
80005de8:	01c12083          	lw	ra,28(sp)
80005dec:	01812403          	lw	s0,24(sp)
80005df0:	02010113          	add	sp,sp,32
80005df4:	00008067          	ret
