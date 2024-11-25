
/data/usr/qijiahuan/baremetal_hello_world/benchmarks/build/toy_bm/coremark.elf:     file format elf32-littleriscv


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
80000088:	e3828293          	add	t0,t0,-456 # a0000ebc <__bss_end>
8000008c:	20001317          	auipc	t1,0x20001
80000090:	e3030313          	add	t1,t1,-464 # a0000ebc <__bss_end>

80000094 <clear_bss_loop>:
80000094:	0002a023          	sw	zero,0(t0)
80000098:	00428293          	add	t0,t0,4
8000009c:	fe62cce3          	blt	t0,t1,80000094 <clear_bss_loop>
800000a0:	20001297          	auipc	t0,0x20001
800000a4:	df828293          	add	t0,t0,-520 # a0000e98 <uart>
800000a8:	20001317          	auipc	t1,0x20001
800000ac:	e1430313          	add	t1,t1,-492 # a0000ebc <__bss_end>

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
800000dc:	519020ef          	jal	80002df4 <init>
800000e0:	2d9050ef          	jal	80005bb8 <main>
800000e4:	4f1020ef          	jal	80002dd4 <to_host>
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
80000184:	71d020ef          	jal	800030a0 <toy_trap_handler>

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
80000224:	03c58593          	add	a1,a1,60 # a000003c <__clz_tab>
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
800004c0:	03c78793          	add	a5,a5,60 # a000003c <__clz_tab>
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
8000064c:	03c88893          	add	a7,a7,60 # a000003c <__clz_tab>
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
80000870:	03c88893          	add	a7,a7,60 # a000003c <__clz_tab>
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
80000fe8:	4c5010ef          	jal	80002cac <__clzsi2>
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
80001060:	44d010ef          	jal	80002cac <__clzsi2>
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
80001288:	00068693          	mv	a3,a3
8000128c:	00d70733          	add	a4,a4,a3
80001290:	00072703          	lw	a4,0(a4)
80001294:	00070067          	jr	a4
  FP_UNPACK_D (A, a);
80001298:	00a4ea33          	or	s4,s1,a0
8000129c:	060a0e63          	beqz	s4,80001318 <__divdf3+0x168>
800012a0:	02048e63          	beqz	s1,800012dc <__divdf3+0x12c>
800012a4:	00048513          	mv	a0,s1
800012a8:	205010ef          	jal	80002cac <__clzsi2>
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
800012dc:	1d1010ef          	jal	80002cac <__clzsi2>
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
8000134c:	161010ef          	jal	80002cac <__clzsi2>
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
80001388:	125010ef          	jal	80002cac <__clzsi2>
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
8000165c:	fff68f13          	add	t5,a3,-1 # 9fffffff <portable_fini+0x1fff806b>
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
80001d84:	729000ef          	jal	80002cac <__clzsi2>
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
80001dbc:	6f1000ef          	jal	80002cac <__clzsi2>
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
80001e28:	685000ef          	jal	80002cac <__clzsi2>
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
80001e64:	649000ef          	jal	80002cac <__clzsi2>
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
800026a0:	60c000ef          	jal	80002cac <__clzsi2>
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
80002718:	594000ef          	jal	80002cac <__clzsi2>
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
8000298c:	320000ef          	jal	80002cac <__clzsi2>
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
80002a20:	28c000ef          	jal	80002cac <__clzsi2>
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

80002a8c <__floatundidf>:
#include "soft-fp.h"
#include "double.h"

DFtype
__floatundidf (UDItype i)
{
80002a8c:	fe010113          	add	sp,sp,-32
80002a90:	00112e23          	sw	ra,28(sp)
80002a94:	00812c23          	sw	s0,24(sp)
80002a98:	00912a23          	sw	s1,20(sp)
80002a9c:	01212823          	sw	s2,16(sp)
80002aa0:	01312623          	sw	s3,12(sp)
80002aa4:	01412423          	sw	s4,8(sp)
  FP_DECL_EX;
  FP_DECL_D (A);
  DFtype a;

  FP_INIT_ROUNDMODE;
  FP_FROM_INT_D (A, i, DI_BITS, UDItype);
80002aa8:	00b567b3          	or	a5,a0,a1
80002aac:	16078c63          	beqz	a5,80002c24 <__floatundidf+0x198>
80002ab0:	00050493          	mv	s1,a0
80002ab4:	00058913          	mv	s2,a1
80002ab8:	00058413          	mv	s0,a1
80002abc:	08058463          	beqz	a1,80002b44 <__floatundidf+0xb8>
80002ac0:	00058513          	mv	a0,a1
80002ac4:	1e8000ef          	jal	80002cac <__clzsi2>
80002ac8:	00050993          	mv	s3,a0
80002acc:	43e00a13          	li	s4,1086
80002ad0:	413a0a33          	sub	s4,s4,s3
80002ad4:	43300793          	li	a5,1075
80002ad8:	0947c463          	blt	a5,s4,80002b60 <__floatundidf+0xd4>
80002adc:	00b00793          	li	a5,11
80002ae0:	00048713          	mv	a4,s1
80002ae4:	14f98863          	beq	s3,a5,80002c34 <__floatundidf+0x1a8>
80002ae8:	02a00793          	li	a5,42
80002aec:	0737c263          	blt	a5,s3,80002b50 <__floatundidf+0xc4>
80002af0:	02b00413          	li	s0,43
80002af4:	ff598793          	add	a5,s3,-11
80002af8:	41340433          	sub	s0,s0,s3
80002afc:	0084d433          	srl	s0,s1,s0
80002b00:	00f91933          	sll	s2,s2,a5
80002b04:	01246433          	or	s0,s0,s2
80002b08:	00f49733          	sll	a4,s1,a5
  FP_PACK_RAW_D (a, A);
  FP_HANDLE_EXCEPTIONS;

  return a;
}
80002b0c:	01c12083          	lw	ra,28(sp)
  FP_PACK_RAW_D (a, A);
80002b10:	00c41593          	sll	a1,s0,0xc
}
80002b14:	01812403          	lw	s0,24(sp)
  FP_PACK_RAW_D (a, A);
80002b18:	014a1a13          	sll	s4,s4,0x14
80002b1c:	00c5d593          	srl	a1,a1,0xc
80002b20:	00ba67b3          	or	a5,s4,a1
}
80002b24:	01412483          	lw	s1,20(sp)
80002b28:	01012903          	lw	s2,16(sp)
80002b2c:	00c12983          	lw	s3,12(sp)
80002b30:	00812a03          	lw	s4,8(sp)
80002b34:	00070513          	mv	a0,a4
80002b38:	00078593          	mv	a1,a5
80002b3c:	02010113          	add	sp,sp,32
80002b40:	00008067          	ret
  FP_FROM_INT_D (A, i, DI_BITS, UDItype);
80002b44:	168000ef          	jal	80002cac <__clzsi2>
80002b48:	02050993          	add	s3,a0,32
80002b4c:	f81ff06f          	j	80002acc <__floatundidf+0x40>
80002b50:	fd598593          	add	a1,s3,-43
80002b54:	00b49433          	sll	s0,s1,a1
80002b58:	00000713          	li	a4,0
80002b5c:	fb1ff06f          	j	80002b0c <__floatundidf+0x80>
80002b60:	43600793          	li	a5,1078
80002b64:	0347dc63          	bge	a5,s4,80002b9c <__floatundidf+0x110>
80002b68:	03898613          	add	a2,s3,56
80002b6c:	00048513          	mv	a0,s1
80002b70:	00090593          	mv	a1,s2
80002b74:	100000ef          	jal	80002c74 <__ashldi3>
80002b78:	00b56533          	or	a0,a0,a1
80002b7c:	00800613          	li	a2,8
80002b80:	00a03433          	snez	s0,a0
80002b84:	00090593          	mv	a1,s2
80002b88:	00048513          	mv	a0,s1
80002b8c:	41360633          	sub	a2,a2,s3
80002b90:	0ac000ef          	jal	80002c3c <__lshrdi3>
80002b94:	00a464b3          	or	s1,s0,a0
80002b98:	00058913          	mv	s2,a1
80002b9c:	00800793          	li	a5,8
80002ba0:	00048713          	mv	a4,s1
80002ba4:	0337d063          	bge	a5,s3,80002bc4 <__floatundidf+0x138>
80002ba8:	02800793          	li	a5,40
80002bac:	ff898693          	add	a3,s3,-8
80002bb0:	413787b3          	sub	a5,a5,s3
80002bb4:	00d91933          	sll	s2,s2,a3
80002bb8:	00f4d7b3          	srl	a5,s1,a5
80002bbc:	0127e933          	or	s2,a5,s2
80002bc0:	00d49733          	sll	a4,s1,a3
80002bc4:	ff8007b7          	lui	a5,0xff800
80002bc8:	fff78793          	add	a5,a5,-1 # ff7fffff <__stack_base+0x3f7fffff>
80002bcc:	00f975b3          	and	a1,s2,a5
80002bd0:	00777793          	and	a5,a4,7
80002bd4:	02078063          	beqz	a5,80002bf4 <__floatundidf+0x168>
80002bd8:	00f77793          	and	a5,a4,15
80002bdc:	00400693          	li	a3,4
80002be0:	00d78a63          	beq	a5,a3,80002bf4 <__floatundidf+0x168>
80002be4:	00470793          	add	a5,a4,4
80002be8:	00e7b6b3          	sltu	a3,a5,a4
80002bec:	00d585b3          	add	a1,a1,a3
80002bf0:	00078713          	mv	a4,a5
80002bf4:	00859793          	sll	a5,a1,0x8
80002bf8:	0007dc63          	bgez	a5,80002c10 <__floatundidf+0x184>
80002bfc:	ff8007b7          	lui	a5,0xff800
80002c00:	fff78793          	add	a5,a5,-1 # ff7fffff <__stack_base+0x3f7fffff>
80002c04:	43f00a13          	li	s4,1087
80002c08:	00f5f5b3          	and	a1,a1,a5
80002c0c:	413a0a33          	sub	s4,s4,s3
80002c10:	00375713          	srl	a4,a4,0x3
80002c14:	01d59793          	sll	a5,a1,0x1d
80002c18:	00e7e733          	or	a4,a5,a4
80002c1c:	0035d413          	srl	s0,a1,0x3
80002c20:	eedff06f          	j	80002b0c <__floatundidf+0x80>
80002c24:	00000413          	li	s0,0
80002c28:	00000713          	li	a4,0
80002c2c:	00000a13          	li	s4,0
80002c30:	eddff06f          	j	80002b0c <__floatundidf+0x80>
80002c34:	43300a13          	li	s4,1075
80002c38:	ed5ff06f          	j	80002b0c <__floatundidf+0x80>

80002c3c <__lshrdi3>:
  if (b == 0)
80002c3c:	02060063          	beqz	a2,80002c5c <__lshrdi3+0x20>
  const shift_count_type bm = W_TYPE_SIZE - b;
80002c40:	02000793          	li	a5,32
80002c44:	40c787b3          	sub	a5,a5,a2
  if (bm <= 0)
80002c48:	00f04c63          	bgtz	a5,80002c60 <__lshrdi3+0x24>
      w.s.low = (UWtype) uu.s.high >> -bm;
80002c4c:	fe060613          	add	a2,a2,-32
80002c50:	00c5d533          	srl	a0,a1,a2
80002c54:	00000713          	li	a4,0
  return w.ll;
80002c58:	00070593          	mv	a1,a4
}
80002c5c:	00008067          	ret
      w.s.high = (UWtype) uu.s.high >> b;
80002c60:	00c5d733          	srl	a4,a1,a2
      w.s.low = ((UWtype) uu.s.low >> b) | carries;
80002c64:	00c55533          	srl	a0,a0,a2
      const UWtype carries = (UWtype) uu.s.high << bm;
80002c68:	00f595b3          	sll	a1,a1,a5
      w.s.low = ((UWtype) uu.s.low >> b) | carries;
80002c6c:	00b56533          	or	a0,a0,a1
80002c70:	fe9ff06f          	j	80002c58 <__lshrdi3+0x1c>

80002c74 <__ashldi3>:
  if (b == 0)
80002c74:	02060063          	beqz	a2,80002c94 <__ashldi3+0x20>
  const shift_count_type bm = W_TYPE_SIZE - b;
80002c78:	02000793          	li	a5,32
80002c7c:	40c787b3          	sub	a5,a5,a2
  if (bm <= 0)
80002c80:	00f04c63          	bgtz	a5,80002c98 <__ashldi3+0x24>
      w.s.high = (UWtype) uu.s.low << -bm;
80002c84:	fe060613          	add	a2,a2,-32
80002c88:	00c515b3          	sll	a1,a0,a2
80002c8c:	00000713          	li	a4,0
  return w.ll;
80002c90:	00070513          	mv	a0,a4
}
80002c94:	00008067          	ret
      w.s.low = (UWtype) uu.s.low << b;
80002c98:	00c51733          	sll	a4,a0,a2
      w.s.high = ((UWtype) uu.s.high << b) | carries;
80002c9c:	00c595b3          	sll	a1,a1,a2
      const UWtype carries = (UWtype) uu.s.low >> bm;
80002ca0:	00f55533          	srl	a0,a0,a5
      w.s.high = ((UWtype) uu.s.high << b) | carries;
80002ca4:	00a5e5b3          	or	a1,a1,a0
80002ca8:	fe9ff06f          	j	80002c90 <__ashldi3+0x1c>

80002cac <__clzsi2>:
  count_leading_zeros (ret, x);
80002cac:	000107b7          	lui	a5,0x10
80002cb0:	02f57a63          	bgeu	a0,a5,80002ce4 <__clzsi2+0x38>
80002cb4:	10053793          	sltiu	a5,a0,256
80002cb8:	0017b793          	seqz	a5,a5
80002cbc:	00379793          	sll	a5,a5,0x3
80002cc0:	a0000737          	lui	a4,0xa0000
80002cc4:	02000693          	li	a3,32
80002cc8:	40f686b3          	sub	a3,a3,a5
80002ccc:	00f55533          	srl	a0,a0,a5
80002cd0:	03c70793          	add	a5,a4,60 # a000003c <__clz_tab>
80002cd4:	00a787b3          	add	a5,a5,a0
80002cd8:	0007c503          	lbu	a0,0(a5) # 10000 <__stack_size+0xc000>
}
80002cdc:	40a68533          	sub	a0,a3,a0
80002ce0:	00008067          	ret
  count_leading_zeros (ret, x);
80002ce4:	01000737          	lui	a4,0x1000
80002ce8:	01800793          	li	a5,24
80002cec:	fce57ae3          	bgeu	a0,a4,80002cc0 <__clzsi2+0x14>
80002cf0:	01000793          	li	a5,16
80002cf4:	fcdff06f          	j	80002cc0 <__clzsi2+0x14>

80002cf8 <memset>:
80002cf8:	00f00313          	li	t1,15
80002cfc:	00050713          	mv	a4,a0
80002d00:	02c37e63          	bgeu	t1,a2,80002d3c <memset+0x44>
80002d04:	00f77793          	and	a5,a4,15
80002d08:	0a079063          	bnez	a5,80002da8 <memset+0xb0>
80002d0c:	08059263          	bnez	a1,80002d90 <memset+0x98>
80002d10:	ff067693          	and	a3,a2,-16
80002d14:	00f67613          	and	a2,a2,15
80002d18:	00e686b3          	add	a3,a3,a4
80002d1c:	00b72023          	sw	a1,0(a4) # 1000000 <__stack_size+0xffc000>
80002d20:	00b72223          	sw	a1,4(a4)
80002d24:	00b72423          	sw	a1,8(a4)
80002d28:	00b72623          	sw	a1,12(a4)
80002d2c:	01070713          	add	a4,a4,16
80002d30:	fed766e3          	bltu	a4,a3,80002d1c <memset+0x24>
80002d34:	00061463          	bnez	a2,80002d3c <memset+0x44>
80002d38:	00008067          	ret
80002d3c:	40c306b3          	sub	a3,t1,a2
80002d40:	00269693          	sll	a3,a3,0x2
80002d44:	00000297          	auipc	t0,0x0
80002d48:	005686b3          	add	a3,a3,t0
80002d4c:	00c68067          	jr	12(a3)
80002d50:	00b70723          	sb	a1,14(a4)
80002d54:	00b706a3          	sb	a1,13(a4)
80002d58:	00b70623          	sb	a1,12(a4)
80002d5c:	00b705a3          	sb	a1,11(a4)
80002d60:	00b70523          	sb	a1,10(a4)
80002d64:	00b704a3          	sb	a1,9(a4)
80002d68:	00b70423          	sb	a1,8(a4)
80002d6c:	00b703a3          	sb	a1,7(a4)
80002d70:	00b70323          	sb	a1,6(a4)
80002d74:	00b702a3          	sb	a1,5(a4)
80002d78:	00b70223          	sb	a1,4(a4)
80002d7c:	00b701a3          	sb	a1,3(a4)
80002d80:	00b70123          	sb	a1,2(a4)
80002d84:	00b700a3          	sb	a1,1(a4)
80002d88:	00b70023          	sb	a1,0(a4)
80002d8c:	00008067          	ret
80002d90:	0ff5f593          	zext.b	a1,a1
80002d94:	00859693          	sll	a3,a1,0x8
80002d98:	00d5e5b3          	or	a1,a1,a3
80002d9c:	01059693          	sll	a3,a1,0x10
80002da0:	00d5e5b3          	or	a1,a1,a3
80002da4:	f6dff06f          	j	80002d10 <memset+0x18>
80002da8:	00279693          	sll	a3,a5,0x2
80002dac:	00000297          	auipc	t0,0x0
80002db0:	005686b3          	add	a3,a3,t0
80002db4:	00008293          	mv	t0,ra
80002db8:	fa0680e7          	jalr	-96(a3)
80002dbc:	00028093          	mv	ra,t0
80002dc0:	ff078793          	add	a5,a5,-16
80002dc4:	40f70733          	sub	a4,a4,a5
80002dc8:	00f60633          	add	a2,a2,a5
80002dcc:	f6c378e3          	bgeu	t1,a2,80002d3c <memset+0x44>
80002dd0:	f3dff06f          	j	80002d0c <memset+0x14>

80002dd4 <to_host>:
80002dd4:	c00007b7          	lui	a5,0xc0000
80002dd8:	00100713          	li	a4,1
80002ddc:	00e7a023          	sw	a4,0(a5) # c0000000 <__stack_base>
80002de0:	00008067          	ret

80002de4 <_putchar>:
80002de4:	00050593          	mv	a1,a0
80002de8:	a0001537          	lui	a0,0xa0001
80002dec:	e9850513          	add	a0,a0,-360 # a0000e98 <uart>
80002df0:	4940006f          	j	80003284 <uart_put_char>

80002df4 <init>:
80002df4:	a0001537          	lui	a0,0xa0001
80002df8:	ff010113          	add	sp,sp,-16
80002dfc:	c00015b7          	lui	a1,0xc0001
80002e00:	e9850513          	add	a0,a0,-360 # a0000e98 <uart>
80002e04:	00112623          	sw	ra,12(sp)
80002e08:	474000ef          	jal	8000327c <uart_init>
80002e0c:	a0000537          	lui	a0,0xa0000
80002e10:	13c50513          	add	a0,a0,316 # a000013c <__clz_tab+0x100>
80002e14:	364020ef          	jal	80005178 <printf_>
80002e18:	018000ef          	jal	80002e30 <pmp_init>
80002e1c:	00c12083          	lw	ra,12(sp)
80002e20:	a0000537          	lui	a0,0xa0000
80002e24:	15450513          	add	a0,a0,340 # a0000154 <__clz_tab+0x118>
80002e28:	01010113          	add	sp,sp,16
80002e2c:	34c0206f          	j	80005178 <printf_>

80002e30 <pmp_init>:
80002e30:	80006737          	lui	a4,0x80006
80002e34:	96c70713          	add	a4,a4,-1684 # 8000596c <core_list_init+0x110>
80002e38:	3b071073          	csrw	pmpaddr0,a4
80002e3c:	c00007b7          	lui	a5,0xc0000
80002e40:	fe078793          	add	a5,a5,-32 # bfffffe0 <__bss_end+0x1ffff124>
80002e44:	3b179073          	csrw	pmpaddr1,a5
80002e48:	3b271073          	csrw	pmpaddr2,a4
80002e4c:	3b379073          	csrw	pmpaddr3,a5
80002e50:	989827b7          	lui	a5,0x98982
80002e54:	89878793          	add	a5,a5,-1896 # 98981898 <portable_fini+0x18979904>
80002e58:	3a079073          	csrw	pmpcfg0,a5
80002e5c:	00008067          	ret

80002e60 <sbi_ecall_handler>:
80002e60:	ff010113          	add	sp,sp,-16
80002e64:	00112623          	sw	ra,12(sp)
80002e68:	00812423          	sw	s0,8(sp)
80002e6c:	34102473          	csrr	s0,mepc
80002e70:	a0000537          	lui	a0,0xa0000
80002e74:	00040593          	mv	a1,s0
80002e78:	17050513          	add	a0,a0,368 # a0000170 <__clz_tab+0x134>
80002e7c:	2fc020ef          	jal	80005178 <printf_>
80002e80:	00440413          	add	s0,s0,4
80002e84:	34141073          	csrw	mepc,s0
80002e88:	341025f3          	csrr	a1,mepc
80002e8c:	00812403          	lw	s0,8(sp)
80002e90:	00c12083          	lw	ra,12(sp)
80002e94:	a0000537          	lui	a0,0xa0000
80002e98:	18850513          	add	a0,a0,392 # a0000188 <__clz_tab+0x14c>
80002e9c:	01010113          	add	sp,sp,16
80002ea0:	2d80206f          	j	80005178 <printf_>

80002ea4 <sbi_illegal_insn_handler>:
80002ea4:	ff010113          	add	sp,sp,-16
80002ea8:	00112623          	sw	ra,12(sp)
80002eac:	00812423          	sw	s0,8(sp)
80002eb0:	341025f3          	csrr	a1,mepc
80002eb4:	34302473          	csrr	s0,mtval
80002eb8:	a0000537          	lui	a0,0xa0000
80002ebc:	1a450513          	add	a0,a0,420 # a00001a4 <__clz_tab+0x168>
80002ec0:	2b8020ef          	jal	80005178 <printf_>
80002ec4:	a0000537          	lui	a0,0xa0000
80002ec8:	00040593          	mv	a1,s0
80002ecc:	1bc50513          	add	a0,a0,444 # a00001bc <__clz_tab+0x180>
80002ed0:	2a8020ef          	jal	80005178 <printf_>
80002ed4:	00812403          	lw	s0,8(sp)
80002ed8:	00c12083          	lw	ra,12(sp)
80002edc:	a0000537          	lui	a0,0xa0000
80002ee0:	1dc50513          	add	a0,a0,476 # a00001dc <__clz_tab+0x1a0>
80002ee4:	01010113          	add	sp,sp,16
80002ee8:	2900206f          	j	80005178 <printf_>

80002eec <sbi_ebreak_handler>:
80002eec:	a0000537          	lui	a0,0xa0000
80002ef0:	ff010113          	add	sp,sp,-16
80002ef4:	21c50513          	add	a0,a0,540 # a000021c <__clz_tab+0x1e0>
80002ef8:	00112623          	sw	ra,12(sp)
80002efc:	00812423          	sw	s0,8(sp)
80002f00:	278020ef          	jal	80005178 <printf_>
80002f04:	34102473          	csrr	s0,mepc
80002f08:	a0000537          	lui	a0,0xa0000
80002f0c:	00040593          	mv	a1,s0
80002f10:	25c50513          	add	a0,a0,604 # a000025c <__clz_tab+0x220>
80002f14:	264020ef          	jal	80005178 <printf_>
80002f18:	00440413          	add	s0,s0,4
80002f1c:	34141073          	csrw	mepc,s0
80002f20:	341025f3          	csrr	a1,mepc
80002f24:	00812403          	lw	s0,8(sp)
80002f28:	00c12083          	lw	ra,12(sp)
80002f2c:	a0000537          	lui	a0,0xa0000
80002f30:	27450513          	add	a0,a0,628 # a0000274 <__clz_tab+0x238>
80002f34:	01010113          	add	sp,sp,16
80002f38:	2400206f          	j	80005178 <printf_>

80002f3c <sbi_irqchip_process>:
80002f3c:	ff010113          	add	sp,sp,-16
80002f40:	00112623          	sw	ra,12(sp)
80002f44:	00812423          	sw	s0,8(sp)
80002f48:	00912223          	sw	s1,4(sp)
80002f4c:	01212023          	sw	s2,0(sp)
80002f50:	341025f3          	csrr	a1,mepc
80002f54:	30002973          	csrr	s2,mstatus
80002f58:	344024f3          	csrr	s1,mip
80002f5c:	30402473          	csrr	s0,mie
80002f60:	a0000537          	lui	a0,0xa0000
80002f64:	29050513          	add	a0,a0,656 # a0000290 <__clz_tab+0x254>
80002f68:	210020ef          	jal	80005178 <printf_>
80002f6c:	a0000537          	lui	a0,0xa0000
80002f70:	00090593          	mv	a1,s2
80002f74:	2b850513          	add	a0,a0,696 # a00002b8 <__clz_tab+0x27c>
80002f78:	200020ef          	jal	80005178 <printf_>
80002f7c:	a0000537          	lui	a0,0xa0000
80002f80:	00048593          	mv	a1,s1
80002f84:	2e450513          	add	a0,a0,740 # a00002e4 <__clz_tab+0x2a8>
80002f88:	1f0020ef          	jal	80005178 <printf_>
80002f8c:	a0000537          	lui	a0,0xa0000
80002f90:	00040593          	mv	a1,s0
80002f94:	30c50513          	add	a0,a0,780 # a000030c <__clz_tab+0x2d0>
80002f98:	1e0020ef          	jal	80005178 <printf_>
80002f9c:	00812403          	lw	s0,8(sp)
80002fa0:	00c12083          	lw	ra,12(sp)
80002fa4:	00412483          	lw	s1,4(sp)
80002fa8:	00012903          	lw	s2,0(sp)
80002fac:	a0000537          	lui	a0,0xa0000
80002fb0:	33450513          	add	a0,a0,820 # a0000334 <__clz_tab+0x2f8>
80002fb4:	01010113          	add	sp,sp,16
80002fb8:	1c00206f          	j	80005178 <printf_>

80002fbc <sbi_fetch_access_handler>:
80002fbc:	ff010113          	add	sp,sp,-16
80002fc0:	00112623          	sw	ra,12(sp)
80002fc4:	00812423          	sw	s0,8(sp)
80002fc8:	341025f3          	csrr	a1,mepc
80002fcc:	34302473          	csrr	s0,mtval
80002fd0:	a0000537          	lui	a0,0xa0000
80002fd4:	1a450513          	add	a0,a0,420 # a00001a4 <__clz_tab+0x168>
80002fd8:	1a0020ef          	jal	80005178 <printf_>
80002fdc:	a0000537          	lui	a0,0xa0000
80002fe0:	00040593          	mv	a1,s0
80002fe4:	1bc50513          	add	a0,a0,444 # a00001bc <__clz_tab+0x180>
80002fe8:	190020ef          	jal	80005178 <printf_>
80002fec:	00812403          	lw	s0,8(sp)
80002ff0:	00c12083          	lw	ra,12(sp)
80002ff4:	a0000537          	lui	a0,0xa0000
80002ff8:	38450513          	add	a0,a0,900 # a0000384 <__clz_tab+0x348>
80002ffc:	01010113          	add	sp,sp,16
80003000:	1780206f          	j	80005178 <printf_>

80003004 <sbi_store_access_handler>:
80003004:	ff010113          	add	sp,sp,-16
80003008:	00112623          	sw	ra,12(sp)
8000300c:	00812423          	sw	s0,8(sp)
80003010:	341025f3          	csrr	a1,mepc
80003014:	34302473          	csrr	s0,mtval
80003018:	a0000537          	lui	a0,0xa0000
8000301c:	1a450513          	add	a0,a0,420 # a00001a4 <__clz_tab+0x168>
80003020:	158020ef          	jal	80005178 <printf_>
80003024:	a0000537          	lui	a0,0xa0000
80003028:	00040593          	mv	a1,s0
8000302c:	1bc50513          	add	a0,a0,444 # a00001bc <__clz_tab+0x180>
80003030:	148020ef          	jal	80005178 <printf_>
80003034:	000027b7          	lui	a5,0x2
80003038:	81878793          	add	a5,a5,-2024 # 1818 <__stack_size-0x27e8>
8000303c:	3a079073          	csrw	pmpcfg0,a5
80003040:	00812403          	lw	s0,8(sp)
80003044:	00c12083          	lw	ra,12(sp)
80003048:	a0000537          	lui	a0,0xa0000
8000304c:	3d850513          	add	a0,a0,984 # a00003d8 <__clz_tab+0x39c>
80003050:	01010113          	add	sp,sp,16
80003054:	1240206f          	j	80005178 <printf_>

80003058 <sbi_load_access_handler>:
80003058:	ff010113          	add	sp,sp,-16
8000305c:	00112623          	sw	ra,12(sp)
80003060:	00812423          	sw	s0,8(sp)
80003064:	341025f3          	csrr	a1,mepc
80003068:	34302473          	csrr	s0,mtval
8000306c:	a0000537          	lui	a0,0xa0000
80003070:	1a450513          	add	a0,a0,420 # a00001a4 <__clz_tab+0x168>
80003074:	104020ef          	jal	80005178 <printf_>
80003078:	a0000537          	lui	a0,0xa0000
8000307c:	00040593          	mv	a1,s0
80003080:	1bc50513          	add	a0,a0,444 # a00001bc <__clz_tab+0x180>
80003084:	0f4020ef          	jal	80005178 <printf_>
80003088:	00812403          	lw	s0,8(sp)
8000308c:	00c12083          	lw	ra,12(sp)
80003090:	a0000537          	lui	a0,0xa0000
80003094:	42450513          	add	a0,a0,1060 # a0000424 <__clz_tab+0x3e8>
80003098:	01010113          	add	sp,sp,16
8000309c:	0dc0206f          	j	80005178 <printf_>

800030a0 <toy_trap_handler>:
800030a0:	ff010113          	add	sp,sp,-16
800030a4:	00912223          	sw	s1,4(sp)
800030a8:	00050493          	mv	s1,a0
800030ac:	a0000537          	lui	a0,0xa0000
800030b0:	47050513          	add	a0,a0,1136 # a0000470 <__clz_tab+0x434>
800030b4:	00112623          	sw	ra,12(sp)
800030b8:	00812423          	sw	s0,8(sp)
800030bc:	01212023          	sw	s2,0(sp)
800030c0:	0b8020ef          	jal	80005178 <printf_>
800030c4:	341025f3          	csrr	a1,mepc
800030c8:	34202473          	csrr	s0,mcause
800030cc:	34302973          	csrr	s2,mtval
800030d0:	a0000537          	lui	a0,0xa0000
800030d4:	4ac50513          	add	a0,a0,1196 # a00004ac <__clz_tab+0x470>
800030d8:	0a0020ef          	jal	80005178 <printf_>
800030dc:	a0000537          	lui	a0,0xa0000
800030e0:	00040593          	mv	a1,s0
800030e4:	4c450513          	add	a0,a0,1220 # a00004c4 <__clz_tab+0x488>
800030e8:	090020ef          	jal	80005178 <printf_>
800030ec:	a0000537          	lui	a0,0xa0000
800030f0:	00090593          	mv	a1,s2
800030f4:	4dc50513          	add	a0,a0,1244 # a00004dc <__clz_tab+0x4a0>
800030f8:	080020ef          	jal	80005178 <printf_>
800030fc:	02044263          	bltz	s0,80003120 <toy_trap_handler+0x80>
80003100:	00b00793          	li	a5,11
80003104:	0687e263          	bltu	a5,s0,80003168 <toy_trap_handler+0xc8>
80003108:	a00017b7          	lui	a5,0xa0001
8000310c:	b7c78793          	add	a5,a5,-1156 # a0000b7c <__clz_tab+0xb40>
80003110:	00241413          	sll	s0,s0,0x2
80003114:	00f40433          	add	s0,s0,a5
80003118:	00042783          	lw	a5,0(s0)
8000311c:	00078067          	jr	a5
80003120:	00141413          	sll	s0,s0,0x1
80003124:	00145413          	srl	s0,s0,0x1
80003128:	00700793          	li	a5,7
8000312c:	12f40063          	beq	s0,a5,8000324c <toy_trap_handler+0x1ac>
80003130:	00b00793          	li	a5,11
80003134:	12f40463          	beq	s0,a5,8000325c <toy_trap_handler+0x1bc>
80003138:	00300793          	li	a5,3
8000313c:	00f41863          	bne	s0,a5,8000314c <toy_trap_handler+0xac>
80003140:	a0000537          	lui	a0,0xa0000
80003144:	50850513          	add	a0,a0,1288 # a0000508 <__clz_tab+0x4cc>
80003148:	030020ef          	jal	80005178 <printf_>
8000314c:	a0001737          	lui	a4,0xa0001
80003150:	e8872783          	lw	a5,-376(a4) # a0000e88 <global_cnt>
80003154:	a0000537          	lui	a0,0xa0000
80003158:	53850513          	add	a0,a0,1336 # a0000538 <__clz_tab+0x4fc>
8000315c:	00178793          	add	a5,a5,1
80003160:	e8f72423          	sw	a5,-376(a4)
80003164:	014020ef          	jal	80005178 <printf_>
80003168:	a0000537          	lui	a0,0xa0000
8000316c:	6ac50513          	add	a0,a0,1708 # a00006ac <__clz_tab+0x670>
80003170:	008020ef          	jal	80005178 <printf_>
80003174:	00c12083          	lw	ra,12(sp)
80003178:	00812403          	lw	s0,8(sp)
8000317c:	00012903          	lw	s2,0(sp)
80003180:	00048513          	mv	a0,s1
80003184:	00412483          	lw	s1,4(sp)
80003188:	01010113          	add	sp,sp,16
8000318c:	00008067          	ret
80003190:	a0000537          	lui	a0,0xa0000
80003194:	57450513          	add	a0,a0,1396 # a0000574 <__clz_tab+0x538>
80003198:	7e1010ef          	jal	80005178 <printf_>
8000319c:	e21ff0ef          	jal	80002fbc <sbi_fetch_access_handler>
800031a0:	c35ff0ef          	jal	80002dd4 <to_host>
800031a4:	fc5ff06f          	j	80003168 <toy_trap_handler+0xc8>
800031a8:	a0000537          	lui	a0,0xa0000
800031ac:	59850513          	add	a0,a0,1432 # a0000598 <__clz_tab+0x55c>
800031b0:	7c9010ef          	jal	80005178 <printf_>
800031b4:	cf1ff0ef          	jal	80002ea4 <sbi_illegal_insn_handler>
800031b8:	c1dff0ef          	jal	80002dd4 <to_host>
800031bc:	fadff06f          	j	80003168 <toy_trap_handler+0xc8>
800031c0:	a0000537          	lui	a0,0xa0000
800031c4:	5c050513          	add	a0,a0,1472 # a00005c0 <__clz_tab+0x584>
800031c8:	7b1010ef          	jal	80005178 <printf_>
800031cc:	d21ff0ef          	jal	80002eec <sbi_ebreak_handler>
800031d0:	c05ff0ef          	jal	80002dd4 <to_host>
800031d4:	f95ff06f          	j	80003168 <toy_trap_handler+0xc8>
800031d8:	a0000537          	lui	a0,0xa0000
800031dc:	5e050513          	add	a0,a0,1504 # a00005e0 <__clz_tab+0x5a4>
800031e0:	799010ef          	jal	80005178 <printf_>
800031e4:	f85ff06f          	j	80003168 <toy_trap_handler+0xc8>
800031e8:	a0000537          	lui	a0,0xa0000
800031ec:	66c50513          	add	a0,a0,1644 # a000066c <__clz_tab+0x630>
800031f0:	789010ef          	jal	80005178 <printf_>
800031f4:	e65ff0ef          	jal	80003058 <sbi_load_access_handler>
800031f8:	bddff0ef          	jal	80002dd4 <to_host>
800031fc:	f6dff06f          	j	80003168 <toy_trap_handler+0xc8>
80003200:	a0000537          	lui	a0,0xa0000
80003204:	60450513          	add	a0,a0,1540 # a0000604 <__clz_tab+0x5c8>
80003208:	771010ef          	jal	80005178 <printf_>
8000320c:	f5dff06f          	j	80003168 <toy_trap_handler+0xc8>
80003210:	a0000537          	lui	a0,0xa0000
80003214:	68c50513          	add	a0,a0,1676 # a000068c <__clz_tab+0x650>
80003218:	761010ef          	jal	80005178 <printf_>
8000321c:	de9ff0ef          	jal	80003004 <sbi_store_access_handler>
80003220:	bb5ff0ef          	jal	80002dd4 <to_host>
80003224:	f45ff06f          	j	80003168 <toy_trap_handler+0xc8>
80003228:	a0000537          	lui	a0,0xa0000
8000322c:	62850513          	add	a0,a0,1576 # a0000628 <__clz_tab+0x5ec>
80003230:	749010ef          	jal	80005178 <printf_>
80003234:	f35ff06f          	j	80003168 <toy_trap_handler+0xc8>
80003238:	a0000537          	lui	a0,0xa0000
8000323c:	64c50513          	add	a0,a0,1612 # a000064c <__clz_tab+0x610>
80003240:	739010ef          	jal	80005178 <printf_>
80003244:	c1dff0ef          	jal	80002e60 <sbi_ecall_handler>
80003248:	f21ff06f          	j	80003168 <toy_trap_handler+0xc8>
8000324c:	a0000537          	lui	a0,0xa0000
80003250:	4f450513          	add	a0,a0,1268 # a00004f4 <__clz_tab+0x4b8>
80003254:	725010ef          	jal	80005178 <printf_>
80003258:	ef5ff06f          	j	8000314c <toy_trap_handler+0xac>
8000325c:	a0000537          	lui	a0,0xa0000
80003260:	52050513          	add	a0,a0,1312 # a0000520 <__clz_tab+0x4e4>
80003264:	715010ef          	jal	80005178 <printf_>
80003268:	cd5ff0ef          	jal	80002f3c <sbi_irqchip_process>
8000326c:	ee1ff06f          	j	8000314c <toy_trap_handler+0xac>

80003270 <get_cycle>:
80003270:	b0002573          	csrr	a0,mcycle
80003274:	b80025f3          	csrr	a1,mcycleh
80003278:	00008067          	ret

8000327c <uart_init>:
8000327c:	00b52023          	sw	a1,0(a0)
80003280:	00008067          	ret

80003284 <uart_put_char>:
80003284:	00052783          	lw	a5,0(a0)
80003288:	00b7a023          	sw	a1,0(a5)
8000328c:	00008067          	ret

80003290 <_out_null>:
80003290:	00008067          	ret

80003294 <_out_rev>:
80003294:	fd010113          	add	sp,sp,-48
80003298:	02812423          	sw	s0,40(sp)
8000329c:	01312e23          	sw	s3,28(sp)
800032a0:	01412c23          	sw	s4,24(sp)
800032a4:	01512a23          	sw	s5,20(sp)
800032a8:	01612823          	sw	s6,16(sp)
800032ac:	01712623          	sw	s7,12(sp)
800032b0:	01812423          	sw	s8,8(sp)
800032b4:	01912223          	sw	s9,4(sp)
800032b8:	02112623          	sw	ra,44(sp)
800032bc:	00088c93          	mv	s9,a7
800032c0:	02912223          	sw	s1,36(sp)
800032c4:	03212023          	sw	s2,32(sp)
800032c8:	0038f893          	and	a7,a7,3
800032cc:	00050993          	mv	s3,a0
800032d0:	00058a13          	mv	s4,a1
800032d4:	00060b13          	mv	s6,a2
800032d8:	00068a93          	mv	s5,a3
800032dc:	00070b93          	mv	s7,a4
800032e0:	00078413          	mv	s0,a5
800032e4:	00080c13          	mv	s8,a6
800032e8:	0c089263          	bnez	a7,800033ac <_out_rev+0x118>
800032ec:	0d07f863          	bgeu	a5,a6,800033bc <_out_rev+0x128>
800032f0:	40f80933          	sub	s2,a6,a5
800032f4:	00c90933          	add	s2,s2,a2
800032f8:	00060493          	mv	s1,a2
800032fc:	00048613          	mv	a2,s1
80003300:	000a8693          	mv	a3,s5
80003304:	00148493          	add	s1,s1,1
80003308:	000a0593          	mv	a1,s4
8000330c:	02000513          	li	a0,32
80003310:	000980e7          	jalr	s3
80003314:	ff2494e3          	bne	s1,s2,800032fc <_out_rev+0x68>
80003318:	04040e63          	beqz	s0,80003374 <_out_rev+0xe0>
8000331c:	00890933          	add	s2,s2,s0
80003320:	40890633          	sub	a2,s2,s0
80003324:	fff40413          	add	s0,s0,-1
80003328:	008b87b3          	add	a5,s7,s0
8000332c:	0007c503          	lbu	a0,0(a5)
80003330:	000a8693          	mv	a3,s5
80003334:	000a0593          	mv	a1,s4
80003338:	00090493          	mv	s1,s2
8000333c:	000980e7          	jalr	s3
80003340:	fe0410e3          	bnez	s0,80003320 <_out_rev+0x8c>
80003344:	002cfc93          	and	s9,s9,2
80003348:	020c8663          	beqz	s9,80003374 <_out_rev+0xe0>
8000334c:	41648b33          	sub	s6,s1,s6
80003350:	038b7263          	bgeu	s6,s8,80003374 <_out_rev+0xe0>
80003354:	00048613          	mv	a2,s1
80003358:	000a8693          	mv	a3,s5
8000335c:	000a0593          	mv	a1,s4
80003360:	02000513          	li	a0,32
80003364:	001b0b13          	add	s6,s6,1
80003368:	00148493          	add	s1,s1,1
8000336c:	000980e7          	jalr	s3
80003370:	ff8b62e3          	bltu	s6,s8,80003354 <_out_rev+0xc0>
80003374:	02c12083          	lw	ra,44(sp)
80003378:	02812403          	lw	s0,40(sp)
8000337c:	02012903          	lw	s2,32(sp)
80003380:	01c12983          	lw	s3,28(sp)
80003384:	01812a03          	lw	s4,24(sp)
80003388:	01412a83          	lw	s5,20(sp)
8000338c:	01012b03          	lw	s6,16(sp)
80003390:	00c12b83          	lw	s7,12(sp)
80003394:	00812c03          	lw	s8,8(sp)
80003398:	00412c83          	lw	s9,4(sp)
8000339c:	00048513          	mv	a0,s1
800033a0:	02412483          	lw	s1,36(sp)
800033a4:	03010113          	add	sp,sp,48
800033a8:	00008067          	ret
800033ac:	00060913          	mv	s2,a2
800033b0:	00060493          	mv	s1,a2
800033b4:	f60794e3          	bnez	a5,8000331c <_out_rev+0x88>
800033b8:	f8dff06f          	j	80003344 <_out_rev+0xb0>
800033bc:	00060913          	mv	s2,a2
800033c0:	f4079ee3          	bnez	a5,8000331c <_out_rev+0x88>
800033c4:	00060493          	mv	s1,a2
800033c8:	fadff06f          	j	80003374 <_out_rev+0xe0>

800033cc <_ntoa_format>:
800033cc:	00812383          	lw	t2,8(sp)
800033d0:	00012283          	lw	t0,0(sp)
800033d4:	00412f83          	lw	t6,4(sp)
800033d8:	0023f313          	and	t1,t2,2
800033dc:	00080f13          	mv	t5,a6
800033e0:	06031463          	bnez	t1,80003448 <_ntoa_format+0x7c>
800033e4:	100f9c63          	bnez	t6,800034fc <_ntoa_format+0x130>
800033e8:	0657f063          	bgeu	a5,t0,80003448 <_ntoa_format+0x7c>
800033ec:	02000313          	li	t1,32
800033f0:	0013f813          	and	a6,t2,1
800033f4:	2e678063          	beq	a5,t1,800036d4 <_ntoa_format+0x308>
800033f8:	03000e13          	li	t3,48
800033fc:	02000e93          	li	t4,32
80003400:	0080006f          	j	80003408 <_ntoa_format+0x3c>
80003404:	15d78e63          	beq	a5,t4,80003560 <_ntoa_format+0x194>
80003408:	00178793          	add	a5,a5,1
8000340c:	00f70333          	add	t1,a4,a5
80003410:	ffc30fa3          	sb	t3,-1(t1)
80003414:	fe57e8e3          	bltu	a5,t0,80003404 <_ntoa_format+0x38>
80003418:	02080863          	beqz	a6,80003448 <_ntoa_format+0x7c>
8000341c:	03f7f663          	bgeu	a5,t6,80003448 <_ntoa_format+0x7c>
80003420:	02000813          	li	a6,32
80003424:	03000e13          	li	t3,48
80003428:	02000e93          	li	t4,32
8000342c:	01079663          	bne	a5,a6,80003438 <_ntoa_format+0x6c>
80003430:	1380006f          	j	80003568 <_ntoa_format+0x19c>
80003434:	07d78663          	beq	a5,t4,800034a0 <_ntoa_format+0xd4>
80003438:	00178793          	add	a5,a5,1
8000343c:	00f70333          	add	t1,a4,a5
80003440:	ffc30fa3          	sb	t3,-1(t1)
80003444:	fff798e3          	bne	a5,t6,80003434 <_ntoa_format+0x68>
80003448:	0103f813          	and	a6,t2,16
8000344c:	08080e63          	beqz	a6,800034e8 <_ntoa_format+0x11c>
80003450:	4003f813          	and	a6,t2,1024
80003454:	06081463          	bnez	a6,800034bc <_ntoa_format+0xf0>
80003458:	04079e63          	bnez	a5,800034b4 <_ntoa_format+0xe8>
8000345c:	01000793          	li	a5,16
80003460:	22f88863          	beq	a7,a5,80003690 <_ntoa_format+0x2c4>
80003464:	00200793          	li	a5,2
80003468:	24f88663          	beq	a7,a5,800036b4 <_ntoa_format+0x2e8>
8000346c:	03000793          	li	a5,48
80003470:	00f70023          	sb	a5,0(a4)
80003474:	00100793          	li	a5,1
80003478:	100f1e63          	bnez	t5,80003594 <_ntoa_format+0x1c8>
8000347c:	0043f813          	and	a6,t2,4
80003480:	1c080c63          	beqz	a6,80003658 <_ntoa_format+0x28c>
80003484:	00f70833          	add	a6,a4,a5
80003488:	02b00893          	li	a7,43
8000348c:	01180023          	sb	a7,0(a6)
80003490:	00178793          	add	a5,a5,1
80003494:	00038893          	mv	a7,t2
80003498:	000f8813          	mv	a6,t6
8000349c:	df9ff06f          	j	80003294 <_out_rev>
800034a0:	0103f813          	and	a6,t2,16
800034a4:	02000793          	li	a5,32
800034a8:	fe0806e3          	beqz	a6,80003494 <_ntoa_format+0xc8>
800034ac:	4003f813          	and	a6,t2,1024
800034b0:	00081663          	bnez	a6,800034bc <_ntoa_format+0xf0>
800034b4:	14f28263          	beq	t0,a5,800035f8 <_ntoa_format+0x22c>
800034b8:	15f78063          	beq	a5,t6,800035f8 <_ntoa_format+0x22c>
800034bc:	01000813          	li	a6,16
800034c0:	17088a63          	beq	a7,a6,80003634 <_ntoa_format+0x268>
800034c4:	00200813          	li	a6,2
800034c8:	11088e63          	beq	a7,a6,800035e4 <_ntoa_format+0x218>
800034cc:	02000813          	li	a6,32
800034d0:	fd0782e3          	beq	a5,a6,80003494 <_ntoa_format+0xc8>
800034d4:	00078813          	mv	a6,a5
800034d8:	00178793          	add	a5,a5,1
800034dc:	01070833          	add	a6,a4,a6
800034e0:	03000893          	li	a7,48
800034e4:	01180023          	sb	a7,0(a6)
800034e8:	02000813          	li	a6,32
800034ec:	f90796e3          	bne	a5,a6,80003478 <_ntoa_format+0xac>
800034f0:	00038893          	mv	a7,t2
800034f4:	000f8813          	mv	a6,t6
800034f8:	d9dff06f          	j	80003294 <_out_rev>
800034fc:	0013f813          	and	a6,t2,1
80003500:	0a080863          	beqz	a6,800035b0 <_ntoa_format+0x1e4>
80003504:	120f1463          	bnez	t5,8000362c <_ntoa_format+0x260>
80003508:	00c3f313          	and	t1,t2,12
8000350c:	12031063          	bnez	t1,8000362c <_ntoa_format+0x260>
80003510:	f057f6e3          	bgeu	a5,t0,8000341c <_ntoa_format+0x50>
80003514:	02000313          	li	t1,32
80003518:	ee6790e3          	bne	a5,t1,800033f8 <_ntoa_format+0x2c>
8000351c:	05f7e663          	bltu	a5,t6,80003568 <_ntoa_format+0x19c>
80003520:	0103f813          	and	a6,t2,16
80003524:	02000793          	li	a5,32
80003528:	f60806e3          	beqz	a6,80003494 <_ntoa_format+0xc8>
8000352c:	4003f813          	and	a6,t2,1024
80003530:	04081a63          	bnez	a6,80003584 <_ntoa_format+0x1b8>
80003534:	00f28463          	beq	t0,a5,8000353c <_ntoa_format+0x170>
80003538:	f8ff92e3          	bne	t6,a5,800034bc <_ntoa_format+0xf0>
8000353c:	01f00813          	li	a6,31
80003540:	01000313          	li	t1,16
80003544:	18688c63          	beq	a7,t1,800036dc <_ntoa_format+0x310>
80003548:	00200313          	li	t1,2
8000354c:	f86898e3          	bne	a7,t1,800034dc <_ntoa_format+0x110>
80003550:	01070833          	add	a6,a4,a6
80003554:	06200893          	li	a7,98
80003558:	01180023          	sb	a7,0(a6)
8000355c:	f71ff06f          	j	800034cc <_ntoa_format+0x100>
80003560:	1a080463          	beqz	a6,80003708 <_ntoa_format+0x33c>
80003564:	f3f7fee3          	bgeu	a5,t6,800034a0 <_ntoa_format+0xd4>
80003568:	0103f813          	and	a6,t2,16
8000356c:	02000793          	li	a5,32
80003570:	f20802e3          	beqz	a6,80003494 <_ntoa_format+0xc8>
80003574:	4003f813          	and	a6,t2,1024
80003578:	00081663          	bnez	a6,80003584 <_ntoa_format+0x1b8>
8000357c:	fcf280e3          	beq	t0,a5,8000353c <_ntoa_format+0x170>
80003580:	faff8ee3          	beq	t6,a5,8000353c <_ntoa_format+0x170>
80003584:	01000813          	li	a6,16
80003588:	f10896e3          	bne	a7,a6,80003494 <_ntoa_format+0xc8>
8000358c:	02000793          	li	a5,32
80003590:	f05ff06f          	j	80003494 <_ntoa_format+0xc8>
80003594:	00f70833          	add	a6,a4,a5
80003598:	02d00893          	li	a7,45
8000359c:	01180023          	sb	a7,0(a6)
800035a0:	00178793          	add	a5,a5,1
800035a4:	00038893          	mv	a7,t2
800035a8:	000f8813          	mv	a6,t6
800035ac:	ce9ff06f          	j	80003294 <_out_rev>
800035b0:	e857fce3          	bgeu	a5,t0,80003448 <_ntoa_format+0x7c>
800035b4:	02000313          	li	t1,32
800035b8:	e46790e3          	bne	a5,t1,800033f8 <_ntoa_format+0x2c>
800035bc:	0103f793          	and	a5,t2,16
800035c0:	fc0786e3          	beqz	a5,8000358c <_ntoa_format+0x1c0>
800035c4:	4003f793          	and	a5,t2,1024
800035c8:	fc0792e3          	bnez	a5,8000358c <_ntoa_format+0x1c0>
800035cc:	02000793          	li	a5,32
800035d0:	00f28463          	beq	t0,a5,800035d8 <_ntoa_format+0x20c>
800035d4:	faff9ce3          	bne	t6,a5,8000358c <_ntoa_format+0x1c0>
800035d8:	02000793          	li	a5,32
800035dc:	01f00813          	li	a6,31
800035e0:	f61ff06f          	j	80003540 <_ntoa_format+0x174>
800035e4:	02000813          	li	a6,32
800035e8:	eb0786e3          	beq	a5,a6,80003494 <_ntoa_format+0xc8>
800035ec:	00078813          	mv	a6,a5
800035f0:	00178793          	add	a5,a5,1
800035f4:	f5dff06f          	j	80003550 <_ntoa_format+0x184>
800035f8:	fff78813          	add	a6,a5,-1
800035fc:	f40812e3          	bnez	a6,80003540 <_ntoa_format+0x174>
80003600:	01000793          	li	a5,16
80003604:	e6f890e3          	bne	a7,a5,80003464 <_ntoa_format+0x98>
80003608:	0203f793          	and	a5,t2,32
8000360c:	0c078063          	beqz	a5,800036cc <_ntoa_format+0x300>
80003610:	05800793          	li	a5,88
80003614:	00f70023          	sb	a5,0(a4)
80003618:	03000793          	li	a5,48
8000361c:	00f700a3          	sb	a5,1(a4)
80003620:	00200793          	li	a5,2
80003624:	e40f0ce3          	beqz	t5,8000347c <_ntoa_format+0xb0>
80003628:	f6dff06f          	j	80003594 <_ntoa_format+0x1c8>
8000362c:	ffff8f93          	add	t6,t6,-1
80003630:	ee1ff06f          	j	80003510 <_ntoa_format+0x144>
80003634:	0203f813          	and	a6,t2,32
80003638:	02081e63          	bnez	a6,80003674 <_ntoa_format+0x2a8>
8000363c:	02000813          	li	a6,32
80003640:	f50786e3          	beq	a5,a6,8000358c <_ntoa_format+0x1c0>
80003644:	00f70833          	add	a6,a4,a5
80003648:	07800893          	li	a7,120
8000364c:	01180023          	sb	a7,0(a6)
80003650:	00178793          	add	a5,a5,1
80003654:	e79ff06f          	j	800034cc <_ntoa_format+0x100>
80003658:	0083f813          	and	a6,t2,8
8000365c:	e2080ce3          	beqz	a6,80003494 <_ntoa_format+0xc8>
80003660:	00f70833          	add	a6,a4,a5
80003664:	02000893          	li	a7,32
80003668:	01180023          	sb	a7,0(a6)
8000366c:	00178793          	add	a5,a5,1
80003670:	e25ff06f          	j	80003494 <_ntoa_format+0xc8>
80003674:	02000813          	li	a6,32
80003678:	f1078ae3          	beq	a5,a6,8000358c <_ntoa_format+0x1c0>
8000367c:	00f70833          	add	a6,a4,a5
80003680:	05800893          	li	a7,88
80003684:	01180023          	sb	a7,0(a6)
80003688:	00178793          	add	a5,a5,1
8000368c:	e41ff06f          	j	800034cc <_ntoa_format+0x100>
80003690:	0203f793          	and	a5,t2,32
80003694:	02078c63          	beqz	a5,800036cc <_ntoa_format+0x300>
80003698:	05800793          	li	a5,88
8000369c:	00f70023          	sb	a5,0(a4)
800036a0:	03000793          	li	a5,48
800036a4:	00f700a3          	sb	a5,1(a4)
800036a8:	00200793          	li	a5,2
800036ac:	dc0f08e3          	beqz	t5,8000347c <_ntoa_format+0xb0>
800036b0:	ee5ff06f          	j	80003594 <_ntoa_format+0x1c8>
800036b4:	06200793          	li	a5,98
800036b8:	00f70023          	sb	a5,0(a4)
800036bc:	03000793          	li	a5,48
800036c0:	00f700a3          	sb	a5,1(a4)
800036c4:	00200793          	li	a5,2
800036c8:	f5dff06f          	j	80003624 <_ntoa_format+0x258>
800036cc:	07800793          	li	a5,120
800036d0:	fe9ff06f          	j	800036b8 <_ntoa_format+0x2ec>
800036d4:	e40816e3          	bnez	a6,80003520 <_ntoa_format+0x154>
800036d8:	ee5ff06f          	j	800035bc <_ntoa_format+0x1f0>
800036dc:	ffe78813          	add	a6,a5,-2
800036e0:	0203f893          	and	a7,t2,32
800036e4:	01070833          	add	a6,a4,a6
800036e8:	fff78793          	add	a5,a5,-1
800036ec:	00089863          	bnez	a7,800036fc <_ntoa_format+0x330>
800036f0:	07800893          	li	a7,120
800036f4:	01180023          	sb	a7,0(a6)
800036f8:	dddff06f          	j	800034d4 <_ntoa_format+0x108>
800036fc:	05800893          	li	a7,88
80003700:	01180023          	sb	a7,0(a6)
80003704:	dd1ff06f          	j	800034d4 <_ntoa_format+0x108>
80003708:	0103f813          	and	a6,t2,16
8000370c:	d80804e3          	beqz	a6,80003494 <_ntoa_format+0xc8>
80003710:	4003f813          	and	a6,t2,1024
80003714:	e60818e3          	bnez	a6,80003584 <_ntoa_format+0x1b8>
80003718:	dbf792e3          	bne	a5,t6,800034bc <_ntoa_format+0xf0>
8000371c:	eddff06f          	j	800035f8 <_ntoa_format+0x22c>

80003720 <_out_char>:
80003720:	00051463          	bnez	a0,80003728 <_out_char+0x8>
80003724:	00008067          	ret
80003728:	ebcff06f          	j	80002de4 <_putchar>

8000372c <_etoa>:
8000372c:	f7010113          	add	sp,sp,-144
80003730:	09212023          	sw	s2,128(sp)
80003734:	07312e23          	sw	s3,124(sp)
80003738:	07412c23          	sw	s4,120(sp)
8000373c:	07512a23          	sw	s5,116(sp)
80003740:	00050993          	mv	s3,a0
80003744:	00058a13          	mv	s4,a1
80003748:	00060913          	mv	s2,a2
8000374c:	00068a93          	mv	s5,a3
80003750:	00070613          	mv	a2,a4
80003754:	00078693          	mv	a3,a5
80003758:	00070513          	mv	a0,a4
8000375c:	00078593          	mv	a1,a5
80003760:	08812423          	sw	s0,136(sp)
80003764:	08912223          	sw	s1,132(sp)
80003768:	07612823          	sw	s6,112(sp)
8000376c:	07812423          	sw	s8,104(sp)
80003770:	07912223          	sw	s9,100(sp)
80003774:	08112623          	sw	ra,140(sp)
80003778:	09012c83          	lw	s9,144(sp)
8000377c:	00070413          	mv	s0,a4
80003780:	00078493          	mv	s1,a5
80003784:	00080c13          	mv	s8,a6
80003788:	00088b13          	mv	s6,a7
8000378c:	900fe0ef          	jal	8000188c <__eqdf2>
80003790:	54051463          	bnez	a0,80003cd8 <_etoa+0x5ac>
80003794:	a00016b7          	lui	a3,0xa0001
80003798:	df06a603          	lw	a2,-528(a3) # a0000df0 <intpat+0x28>
8000379c:	df46a683          	lw	a3,-524(a3)
800037a0:	00040513          	mv	a0,s0
800037a4:	00048593          	mv	a1,s1
800037a8:	970fe0ef          	jal	80001918 <__gedf2>
800037ac:	52a04663          	bgtz	a0,80003cd8 <_etoa+0x5ac>
800037b0:	a00016b7          	lui	a3,0xa0001
800037b4:	df86a603          	lw	a2,-520(a3) # a0000df8 <intpat+0x30>
800037b8:	dfc6a683          	lw	a3,-516(a3)
800037bc:	00040513          	mv	a0,s0
800037c0:	00048593          	mv	a1,s1
800037c4:	a30fe0ef          	jal	800019f4 <__ledf2>
800037c8:	50054863          	bltz	a0,80003cd8 <_etoa+0x5ac>
800037cc:	00040513          	mv	a0,s0
800037d0:	00048593          	mv	a1,s1
800037d4:	00000613          	li	a2,0
800037d8:	00000693          	li	a3,0
800037dc:	07712623          	sw	s7,108(sp)
800037e0:	07a12023          	sw	s10,96(sp)
800037e4:	05b12e23          	sw	s11,92(sp)
800037e8:	a0cfe0ef          	jal	800019f4 <__ledf2>
800037ec:	00812a23          	sw	s0,20(sp)
800037f0:	00048b93          	mv	s7,s1
800037f4:	00055663          	bgez	a0,80003800 <_etoa+0xd4>
800037f8:	80000bb7          	lui	s7,0x80000
800037fc:	009bcbb3          	xor	s7,s7,s1
80003800:	400cf793          	and	a5,s9,1024
80003804:	02f12623          	sw	a5,44(sp)
80003808:	00079463          	bnez	a5,80003810 <_etoa+0xe4>
8000380c:	00600c13          	li	s8,6
80003810:	014bd513          	srl	a0,s7,0x14
80003814:	7ff57513          	and	a0,a0,2047
80003818:	c0150513          	add	a0,a0,-1023
8000381c:	948ff0ef          	jal	80002964 <__floatsidf>
80003820:	a00017b7          	lui	a5,0xa0001
80003824:	e007a603          	lw	a2,-512(a5) # a0000e00 <intpat+0x38>
80003828:	e047a683          	lw	a3,-508(a5)
8000382c:	aa4fe0ef          	jal	80001ad0 <__muldf3>
80003830:	a00017b7          	lui	a5,0xa0001
80003834:	e087a603          	lw	a2,-504(a5) # a0000e08 <intpat+0x40>
80003838:	e0c7a683          	lw	a3,-500(a5)
8000383c:	9e0fd0ef          	jal	80000a1c <__adddf3>
80003840:	00cb9693          	sll	a3,s7,0xc
80003844:	00c6d693          	srl	a3,a3,0xc
80003848:	3ff007b7          	lui	a5,0x3ff00
8000384c:	00d7e7b3          	or	a5,a5,a3
80003850:	a00016b7          	lui	a3,0xa0001
80003854:	e106a603          	lw	a2,-496(a3) # a0000e10 <intpat+0x48>
80003858:	e146a683          	lw	a3,-492(a3)
8000385c:	00050d93          	mv	s11,a0
80003860:	00058d13          	mv	s10,a1
80003864:	00040513          	mv	a0,s0
80003868:	00078593          	mv	a1,a5
8000386c:	855fe0ef          	jal	800020c0 <__subdf3>
80003870:	a00017b7          	lui	a5,0xa0001
80003874:	e187a603          	lw	a2,-488(a5) # a0000e18 <intpat+0x50>
80003878:	e1c7a683          	lw	a3,-484(a5)
8000387c:	a54fe0ef          	jal	80001ad0 <__muldf3>
80003880:	00050613          	mv	a2,a0
80003884:	00058693          	mv	a3,a1
80003888:	000d8513          	mv	a0,s11
8000388c:	000d0593          	mv	a1,s10
80003890:	98cfd0ef          	jal	80000a1c <__adddf3>
80003894:	fd5fe0ef          	jal	80002868 <__fixdfsi>
80003898:	00050d13          	mv	s10,a0
8000389c:	8c8ff0ef          	jal	80002964 <__floatsidf>
800038a0:	a00017b7          	lui	a5,0xa0001
800038a4:	e207a603          	lw	a2,-480(a5) # a0000e20 <intpat+0x58>
800038a8:	e247a683          	lw	a3,-476(a5)
800038ac:	00058d93          	mv	s11,a1
800038b0:	00a12823          	sw	a0,16(sp)
800038b4:	a1cfe0ef          	jal	80001ad0 <__muldf3>
800038b8:	a0001737          	lui	a4,0xa0001
800038bc:	e2872603          	lw	a2,-472(a4) # a0000e28 <intpat+0x60>
800038c0:	e2c72683          	lw	a3,-468(a4)
800038c4:	958fd0ef          	jal	80000a1c <__adddf3>
800038c8:	fa1fe0ef          	jal	80002868 <__fixdfsi>
800038cc:	01012783          	lw	a5,16(sp)
800038d0:	a00016b7          	lui	a3,0xa0001
800038d4:	e306a603          	lw	a2,-464(a3) # a0000e30 <intpat+0x68>
800038d8:	e346a683          	lw	a3,-460(a3)
800038dc:	00050713          	mv	a4,a0
800038e0:	000d8593          	mv	a1,s11
800038e4:	00078513          	mv	a0,a5
800038e8:	00070d93          	mv	s11,a4
800038ec:	9e4fe0ef          	jal	80001ad0 <__muldf3>
800038f0:	00050793          	mv	a5,a0
800038f4:	000d8513          	mv	a0,s11
800038f8:	00f12823          	sw	a5,16(sp)
800038fc:	01b12c23          	sw	s11,24(sp)
80003900:	00058d93          	mv	s11,a1
80003904:	860ff0ef          	jal	80002964 <__floatsidf>
80003908:	a0001737          	lui	a4,0xa0001
8000390c:	e3872603          	lw	a2,-456(a4) # a0000e38 <intpat+0x70>
80003910:	e3c72683          	lw	a3,-452(a4)
80003914:	9bcfe0ef          	jal	80001ad0 <__muldf3>
80003918:	01012783          	lw	a5,16(sp)
8000391c:	00050613          	mv	a2,a0
80003920:	00058693          	mv	a3,a1
80003924:	00078513          	mv	a0,a5
80003928:	000d8593          	mv	a1,s11
8000392c:	f94fe0ef          	jal	800020c0 <__subdf3>
80003930:	00050613          	mv	a2,a0
80003934:	00058693          	mv	a3,a1
80003938:	00a12e23          	sw	a0,28(sp)
8000393c:	00b12823          	sw	a1,16(sp)
80003940:	990fe0ef          	jal	80001ad0 <__muldf3>
80003944:	01012783          	lw	a5,16(sp)
80003948:	01c12703          	lw	a4,28(sp)
8000394c:	00050d93          	mv	s11,a0
80003950:	00078693          	mv	a3,a5
80003954:	00070613          	mv	a2,a4
80003958:	00070513          	mv	a0,a4
8000395c:	00058813          	mv	a6,a1
80003960:	00078593          	mv	a1,a5
80003964:	02e12423          	sw	a4,40(sp)
80003968:	02f12223          	sw	a5,36(sp)
8000396c:	01012823          	sw	a6,16(sp)
80003970:	8acfd0ef          	jal	80000a1c <__adddf3>
80003974:	a00016b7          	lui	a3,0xa0001
80003978:	00058893          	mv	a7,a1
8000397c:	e406a603          	lw	a2,-448(a3) # a0000e40 <intpat+0x78>
80003980:	01012583          	lw	a1,16(sp)
80003984:	e446a683          	lw	a3,-444(a3)
80003988:	00050313          	mv	t1,a0
8000398c:	000d8513          	mv	a0,s11
80003990:	02612023          	sw	t1,32(sp)
80003994:	01112e23          	sw	a7,28(sp)
80003998:	819fd0ef          	jal	800011b0 <__divdf3>
8000399c:	a0001837          	lui	a6,0xa0001
800039a0:	e4882603          	lw	a2,-440(a6) # a0000e48 <intpat+0x80>
800039a4:	e4c82683          	lw	a3,-436(a6)
800039a8:	874fd0ef          	jal	80000a1c <__adddf3>
800039ac:	00058693          	mv	a3,a1
800039b0:	01012583          	lw	a1,16(sp)
800039b4:	00050613          	mv	a2,a0
800039b8:	000d8513          	mv	a0,s11
800039bc:	ff4fd0ef          	jal	800011b0 <__divdf3>
800039c0:	a00016b7          	lui	a3,0xa0001
800039c4:	e506a603          	lw	a2,-432(a3) # a0000e50 <intpat+0x88>
800039c8:	e546a683          	lw	a3,-428(a3)
800039cc:	850fd0ef          	jal	80000a1c <__adddf3>
800039d0:	00058693          	mv	a3,a1
800039d4:	01012583          	lw	a1,16(sp)
800039d8:	00050613          	mv	a2,a0
800039dc:	000d8513          	mv	a0,s11
800039e0:	fd0fd0ef          	jal	800011b0 <__divdf3>
800039e4:	02812703          	lw	a4,40(sp)
800039e8:	02412783          	lw	a5,36(sp)
800039ec:	a00016b7          	lui	a3,0xa0001
800039f0:	00050e13          	mv	t3,a0
800039f4:	00058d93          	mv	s11,a1
800039f8:	e586a503          	lw	a0,-424(a3) # a0000e58 <intpat+0x90>
800039fc:	e5c6a583          	lw	a1,-420(a3)
80003a00:	00070613          	mv	a2,a4
80003a04:	00078693          	mv	a3,a5
80003a08:	01c12823          	sw	t3,16(sp)
80003a0c:	eb4fe0ef          	jal	800020c0 <__subdf3>
80003a10:	01012e03          	lw	t3,16(sp)
80003a14:	00050613          	mv	a2,a0
80003a18:	00058693          	mv	a3,a1
80003a1c:	000e0513          	mv	a0,t3
80003a20:	000d8593          	mv	a1,s11
80003a24:	ff9fc0ef          	jal	80000a1c <__adddf3>
80003a28:	02012303          	lw	t1,32(sp)
80003a2c:	01c12883          	lw	a7,28(sp)
80003a30:	00050613          	mv	a2,a0
80003a34:	00058693          	mv	a3,a1
80003a38:	00030513          	mv	a0,t1
80003a3c:	00088593          	mv	a1,a7
80003a40:	f70fd0ef          	jal	800011b0 <__divdf3>
80003a44:	a00017b7          	lui	a5,0xa0001
80003a48:	e607a603          	lw	a2,-416(a5) # a0000e60 <intpat+0x98>
80003a4c:	e647a683          	lw	a3,-412(a5)
80003a50:	fcdfc0ef          	jal	80000a1c <__adddf3>
80003a54:	01812783          	lw	a5,24(sp)
80003a58:	00000613          	li	a2,0
80003a5c:	3ff78793          	add	a5,a5,1023
80003a60:	01479793          	sll	a5,a5,0x14
80003a64:	00078693          	mv	a3,a5
80003a68:	868fe0ef          	jal	80001ad0 <__muldf3>
80003a6c:	00050613          	mv	a2,a0
80003a70:	00a12c23          	sw	a0,24(sp)
80003a74:	00058693          	mv	a3,a1
80003a78:	00b12823          	sw	a1,16(sp)
80003a7c:	00040513          	mv	a0,s0
80003a80:	000b8593          	mv	a1,s7
80003a84:	f71fd0ef          	jal	800019f4 <__ledf2>
80003a88:	01012783          	lw	a5,16(sp)
80003a8c:	01812703          	lw	a4,24(sp)
80003a90:	02055463          	bgez	a0,80003ab8 <_etoa+0x38c>
80003a94:	a0001837          	lui	a6,0xa0001
80003a98:	e4882603          	lw	a2,-440(a6) # a0000e48 <intpat+0x80>
80003a9c:	e4c82683          	lw	a3,-436(a6)
80003aa0:	00070513          	mv	a0,a4
80003aa4:	00078593          	mv	a1,a5
80003aa8:	f08fd0ef          	jal	800011b0 <__divdf3>
80003aac:	fffd0d13          	add	s10,s10,-1
80003ab0:	00050713          	mv	a4,a0
80003ab4:	00058793          	mv	a5,a1
80003ab8:	0c600693          	li	a3,198
80003abc:	063d0d93          	add	s11,s10,99
80003ac0:	01b6bdb3          	sltu	s11,a3,s11
80003ac4:	014c9693          	sll	a3,s9,0x14
80003ac8:	004d8d93          	add	s11,s11,4
80003acc:	0606d663          	bgez	a3,80003b38 <_etoa+0x40c>
80003ad0:	a00016b7          	lui	a3,0xa0001
80003ad4:	e686a603          	lw	a2,-408(a3) # a0000e68 <intpat+0xa0>
80003ad8:	e6c6a683          	lw	a3,-404(a3)
80003adc:	00040513          	mv	a0,s0
80003ae0:	000b8593          	mv	a1,s7
80003ae4:	00f12c23          	sw	a5,24(sp)
80003ae8:	00e12823          	sw	a4,16(sp)
80003aec:	e2dfd0ef          	jal	80001918 <__gedf2>
80003af0:	01012703          	lw	a4,16(sp)
80003af4:	01812783          	lw	a5,24(sp)
80003af8:	24054e63          	bltz	a0,80003d54 <_etoa+0x628>
80003afc:	a00016b7          	lui	a3,0xa0001
80003b00:	e706a603          	lw	a2,-400(a3) # a0000e70 <intpat+0xa8>
80003b04:	e746a683          	lw	a3,-396(a3)
80003b08:	00040513          	mv	a0,s0
80003b0c:	000b8593          	mv	a1,s7
80003b10:	ee5fd0ef          	jal	800019f4 <__ledf2>
80003b14:	01012703          	lw	a4,16(sp)
80003b18:	01812783          	lw	a5,24(sp)
80003b1c:	22055c63          	bgez	a0,80003d54 <_etoa+0x628>
80003b20:	258d5463          	bge	s10,s8,80003d68 <_etoa+0x63c>
80003b24:	41ac0d33          	sub	s10,s8,s10
80003b28:	fffd0c13          	add	s8,s10,-1
80003b2c:	400cec93          	or	s9,s9,1024
80003b30:	00000d93          	li	s11,0
80003b34:	00000d13          	li	s10,0
80003b38:	00000893          	li	a7,0
80003b3c:	016df463          	bgeu	s11,s6,80003b44 <_etoa+0x418>
80003b40:	41bb08b3          	sub	a7,s6,s11
80003b44:	002cf693          	and	a3,s9,2
80003b48:	00d12c23          	sw	a3,24(sp)
80003b4c:	00068863          	beqz	a3,80003b5c <_etoa+0x430>
80003b50:	001db693          	seqz	a3,s11
80003b54:	40d006b3          	neg	a3,a3
80003b58:	00d8f8b3          	and	a7,a7,a3
80003b5c:	1c0d1863          	bnez	s10,80003d2c <_etoa+0x600>
80003b60:	00040513          	mv	a0,s0
80003b64:	00048593          	mv	a1,s1
80003b68:	00000613          	li	a2,0
80003b6c:	00000693          	li	a3,0
80003b70:	01112823          	sw	a7,16(sp)
80003b74:	e81fd0ef          	jal	800019f4 <__ledf2>
80003b78:	01012883          	lw	a7,16(sp)
80003b7c:	00055663          	bgez	a0,80003b88 <_etoa+0x45c>
80003b80:	800007b7          	lui	a5,0x80000
80003b84:	0177cbb3          	xor	s7,a5,s7
80003b88:	01412683          	lw	a3,20(sp)
80003b8c:	fffff7b7          	lui	a5,0xfffff
80003b90:	7ff78793          	add	a5,a5,2047 # fffff7ff <__stack_base+0x3ffff7ff>
80003b94:	00fcf7b3          	and	a5,s9,a5
80003b98:	00f12023          	sw	a5,0(sp)
80003b9c:	00068713          	mv	a4,a3
80003ba0:	000c0813          	mv	a6,s8
80003ba4:	000b8793          	mv	a5,s7
80003ba8:	000a8693          	mv	a3,s5
80003bac:	00090613          	mv	a2,s2
80003bb0:	000a0593          	mv	a1,s4
80003bb4:	00098513          	mv	a0,s3
80003bb8:	1b8000ef          	jal	80003d70 <_ftoa>
80003bbc:	00050413          	mv	s0,a0
80003bc0:	0c0d8c63          	beqz	s11,80003c98 <_etoa+0x56c>
80003bc4:	020cfc93          	and	s9,s9,32
80003bc8:	06500513          	li	a0,101
80003bcc:	000c8463          	beqz	s9,80003bd4 <_etoa+0x4a8>
80003bd0:	04500513          	li	a0,69
80003bd4:	00040613          	mv	a2,s0
80003bd8:	000a8693          	mv	a3,s5
80003bdc:	000a0593          	mv	a1,s4
80003be0:	000980e7          	jalr	s3
80003be4:	41fd5793          	sra	a5,s10,0x1f
80003be8:	01a7c733          	xor	a4,a5,s10
80003bec:	40f70733          	sub	a4,a4,a5
80003bf0:	00140413          	add	s0,s0,1
80003bf4:	01fd5813          	srl	a6,s10,0x1f
80003bf8:	fffd8d93          	add	s11,s11,-1
80003bfc:	00000793          	li	a5,0
80003c00:	00a00613          	li	a2,10
80003c04:	00900893          	li	a7,9
80003c08:	02000313          	li	t1,32
80003c0c:	0080006f          	j	80003c14 <_etoa+0x4e8>
80003c10:	02678463          	beq	a5,t1,80003c38 <_etoa+0x50c>
80003c14:	02c776b3          	remu	a3,a4,a2
80003c18:	03010593          	add	a1,sp,48
80003c1c:	00178793          	add	a5,a5,1
80003c20:	00f58533          	add	a0,a1,a5
80003c24:	00070593          	mv	a1,a4
80003c28:	03068693          	add	a3,a3,48
80003c2c:	fed50fa3          	sb	a3,-1(a0)
80003c30:	02c75733          	divu	a4,a4,a2
80003c34:	fcb8eee3          	bltu	a7,a1,80003c10 <_etoa+0x4e4>
80003c38:	00500713          	li	a4,5
80003c3c:	00e12423          	sw	a4,8(sp)
80003c40:	00040613          	mv	a2,s0
80003c44:	01b12223          	sw	s11,4(sp)
80003c48:	00012023          	sw	zero,0(sp)
80003c4c:	00a00893          	li	a7,10
80003c50:	03010713          	add	a4,sp,48
80003c54:	000a8693          	mv	a3,s5
80003c58:	000a0593          	mv	a1,s4
80003c5c:	00098513          	mv	a0,s3
80003c60:	f6cff0ef          	jal	800033cc <_ntoa_format>
80003c64:	01812783          	lw	a5,24(sp)
80003c68:	00050413          	mv	s0,a0
80003c6c:	02078663          	beqz	a5,80003c98 <_etoa+0x56c>
80003c70:	41250933          	sub	s2,a0,s2
80003c74:	03697263          	bgeu	s2,s6,80003c98 <_etoa+0x56c>
80003c78:	00040613          	mv	a2,s0
80003c7c:	000a8693          	mv	a3,s5
80003c80:	000a0593          	mv	a1,s4
80003c84:	02000513          	li	a0,32
80003c88:	00190913          	add	s2,s2,1
80003c8c:	00140413          	add	s0,s0,1
80003c90:	000980e7          	jalr	s3
80003c94:	ff6962e3          	bltu	s2,s6,80003c78 <_etoa+0x54c>
80003c98:	08c12083          	lw	ra,140(sp)
80003c9c:	00040513          	mv	a0,s0
80003ca0:	08812403          	lw	s0,136(sp)
80003ca4:	06c12b83          	lw	s7,108(sp)
80003ca8:	06012d03          	lw	s10,96(sp)
80003cac:	05c12d83          	lw	s11,92(sp)
80003cb0:	08412483          	lw	s1,132(sp)
80003cb4:	08012903          	lw	s2,128(sp)
80003cb8:	07c12983          	lw	s3,124(sp)
80003cbc:	07812a03          	lw	s4,120(sp)
80003cc0:	07412a83          	lw	s5,116(sp)
80003cc4:	07012b03          	lw	s6,112(sp)
80003cc8:	06812c03          	lw	s8,104(sp)
80003ccc:	06412c83          	lw	s9,100(sp)
80003cd0:	09010113          	add	sp,sp,144
80003cd4:	00008067          	ret
80003cd8:	00040713          	mv	a4,s0
80003cdc:	08812403          	lw	s0,136(sp)
80003ce0:	09912823          	sw	s9,144(sp)
80003ce4:	08c12083          	lw	ra,140(sp)
80003ce8:	06412c83          	lw	s9,100(sp)
80003cec:	00048793          	mv	a5,s1
80003cf0:	000b0893          	mv	a7,s6
80003cf4:	08412483          	lw	s1,132(sp)
80003cf8:	07012b03          	lw	s6,112(sp)
80003cfc:	000c0813          	mv	a6,s8
80003d00:	000a8693          	mv	a3,s5
80003d04:	06812c03          	lw	s8,104(sp)
80003d08:	07412a83          	lw	s5,116(sp)
80003d0c:	00090613          	mv	a2,s2
80003d10:	000a0593          	mv	a1,s4
80003d14:	08012903          	lw	s2,128(sp)
80003d18:	07812a03          	lw	s4,120(sp)
80003d1c:	00098513          	mv	a0,s3
80003d20:	07c12983          	lw	s3,124(sp)
80003d24:	09010113          	add	sp,sp,144
80003d28:	0480006f          	j	80003d70 <_ftoa>
80003d2c:	000b8593          	mv	a1,s7
80003d30:	00070613          	mv	a2,a4
80003d34:	00040513          	mv	a0,s0
80003d38:	00078693          	mv	a3,a5
80003d3c:	01112823          	sw	a7,16(sp)
80003d40:	c70fd0ef          	jal	800011b0 <__divdf3>
80003d44:	01012883          	lw	a7,16(sp)
80003d48:	00a12a23          	sw	a0,20(sp)
80003d4c:	00058b93          	mv	s7,a1
80003d50:	e11ff06f          	j	80003b60 <_etoa+0x434>
80003d54:	de0c02e3          	beqz	s8,80003b38 <_etoa+0x40c>
80003d58:	02c12683          	lw	a3,44(sp)
80003d5c:	00d036b3          	snez	a3,a3
80003d60:	40dc0c33          	sub	s8,s8,a3
80003d64:	dd5ff06f          	j	80003b38 <_etoa+0x40c>
80003d68:	00000c13          	li	s8,0
80003d6c:	dc1ff06f          	j	80003b2c <_etoa+0x400>

80003d70 <_ftoa>:
80003d70:	f8010113          	add	sp,sp,-128
80003d74:	07312623          	sw	s3,108(sp)
80003d78:	05812c23          	sw	s8,88(sp)
80003d7c:	05912a23          	sw	s9,84(sp)
80003d80:	05a12823          	sw	s10,80(sp)
80003d84:	00050993          	mv	s3,a0
80003d88:	00058c13          	mv	s8,a1
80003d8c:	00060c93          	mv	s9,a2
80003d90:	00068d13          	mv	s10,a3
80003d94:	00070613          	mv	a2,a4
80003d98:	00078693          	mv	a3,a5
80003d9c:	00070513          	mv	a0,a4
80003da0:	00078593          	mv	a1,a5
80003da4:	06812c23          	sw	s0,120(sp)
80003da8:	06912a23          	sw	s1,116(sp)
80003dac:	07212823          	sw	s2,112(sp)
80003db0:	07612023          	sw	s6,96(sp)
80003db4:	05b12623          	sw	s11,76(sp)
80003db8:	06112e23          	sw	ra,124(sp)
80003dbc:	08012d83          	lw	s11,128(sp)
80003dc0:	00070493          	mv	s1,a4
80003dc4:	00078413          	mv	s0,a5
80003dc8:	00080b13          	mv	s6,a6
80003dcc:	00088913          	mv	s2,a7
80003dd0:	abdfd0ef          	jal	8000188c <__eqdf2>
80003dd4:	20051063          	bnez	a0,80003fd4 <_ftoa+0x264>
80003dd8:	a00017b7          	lui	a5,0xa0001
80003ddc:	df87a603          	lw	a2,-520(a5) # a0000df8 <intpat+0x30>
80003de0:	dfc7a683          	lw	a3,-516(a5)
80003de4:	00048513          	mv	a0,s1
80003de8:	00040593          	mv	a1,s0
80003dec:	c09fd0ef          	jal	800019f4 <__ledf2>
80003df0:	2c054463          	bltz	a0,800040b8 <_ftoa+0x348>
80003df4:	a00017b7          	lui	a5,0xa0001
80003df8:	df07a603          	lw	a2,-528(a5) # a0000df0 <intpat+0x28>
80003dfc:	df47a683          	lw	a3,-524(a5)
80003e00:	00048513          	mv	a0,s1
80003e04:	00040593          	mv	a1,s0
80003e08:	b11fd0ef          	jal	80001918 <__gedf2>
80003e0c:	1aa04463          	bgtz	a0,80003fb4 <_ftoa+0x244>
80003e10:	07412423          	sw	s4,104(sp)
80003e14:	a0001a37          	lui	s4,0xa0001
80003e18:	e78a2603          	lw	a2,-392(s4) # a0000e78 <intpat+0xb0>
80003e1c:	e7ca2683          	lw	a3,-388(s4)
80003e20:	00048513          	mv	a0,s1
80003e24:	00040593          	mv	a1,s0
80003e28:	af1fd0ef          	jal	80001918 <__gedf2>
80003e2c:	22a04a63          	bgtz	a0,80004060 <_ftoa+0x2f0>
80003e30:	a00017b7          	lui	a5,0xa0001
80003e34:	e807a603          	lw	a2,-384(a5) # a0000e80 <intpat+0xb8>
80003e38:	e847a683          	lw	a3,-380(a5)
80003e3c:	00048513          	mv	a0,s1
80003e40:	00040593          	mv	a1,s0
80003e44:	bb1fd0ef          	jal	800019f4 <__ledf2>
80003e48:	20054c63          	bltz	a0,80004060 <_ftoa+0x2f0>
80003e4c:	00048513          	mv	a0,s1
80003e50:	00040593          	mv	a1,s0
80003e54:	00000613          	li	a2,0
80003e58:	00000693          	li	a3,0
80003e5c:	07512223          	sw	s5,100(sp)
80003e60:	05712e23          	sw	s7,92(sp)
80003e64:	b91fd0ef          	jal	800019f4 <__ledf2>
80003e68:	1c054863          	bltz	a0,80004038 <_ftoa+0x2c8>
80003e6c:	00012c23          	sw	zero,24(sp)
80003e70:	400dfa93          	and	s5,s11,1024
80003e74:	3c0a8a63          	beqz	s5,80004248 <_ftoa+0x4d8>
80003e78:	00900793          	li	a5,9
80003e7c:	4d67f063          	bgeu	a5,s6,8000433c <_ftoa+0x5cc>
80003e80:	ff7b0a93          	add	s5,s6,-9
80003e84:	00000693          	li	a3,0
80003e88:	02010b93          	add	s7,sp,32
80003e8c:	03000513          	li	a0,48
80003e90:	02000593          	li	a1,32
80003e94:	00168693          	add	a3,a3,1
80003e98:	00db8633          	add	a2,s7,a3
80003e9c:	fea60fa3          	sb	a0,-1(a2)
80003ea0:	40db0333          	sub	t1,s6,a3
80003ea4:	3eb68c63          	beq	a3,a1,8000429c <_ftoa+0x52c>
80003ea8:	ff5696e3          	bne	a3,s5,80003e94 <_ftoa+0x124>
80003eac:	e78a2783          	lw	a5,-392(s4)
80003eb0:	e7ca2803          	lw	a6,-388(s4)
80003eb4:	00f12023          	sw	a5,0(sp)
80003eb8:	01012223          	sw	a6,4(sp)
80003ebc:	00040593          	mv	a1,s0
80003ec0:	00048513          	mv	a0,s1
80003ec4:	00612a23          	sw	t1,20(sp)
80003ec8:	9a1fe0ef          	jal	80002868 <__fixdfsi>
80003ecc:	00050a13          	mv	s4,a0
80003ed0:	a95fe0ef          	jal	80002964 <__floatsidf>
80003ed4:	00050613          	mv	a2,a0
80003ed8:	00058693          	mv	a3,a1
80003edc:	00048513          	mv	a0,s1
80003ee0:	00040593          	mv	a1,s0
80003ee4:	9dcfe0ef          	jal	800020c0 <__subdf3>
80003ee8:	00012603          	lw	a2,0(sp)
80003eec:	00412683          	lw	a3,4(sp)
80003ef0:	be1fd0ef          	jal	80001ad0 <__muldf3>
80003ef4:	00058b13          	mv	s6,a1
80003ef8:	00a12823          	sw	a0,16(sp)
80003efc:	9edfe0ef          	jal	800028e8 <__fixunsdfsi>
80003f00:	00a12623          	sw	a0,12(sp)
80003f04:	b09fe0ef          	jal	80002a0c <__floatunsidf>
80003f08:	01012783          	lw	a5,16(sp)
80003f0c:	00050613          	mv	a2,a0
80003f10:	00058693          	mv	a3,a1
80003f14:	00078513          	mv	a0,a5
80003f18:	000b0593          	mv	a1,s6
80003f1c:	9a4fe0ef          	jal	800020c0 <__subdf3>
80003f20:	a0001b37          	lui	s6,0xa0001
80003f24:	e28b2603          	lw	a2,-472(s6) # a0000e28 <intpat+0x60>
80003f28:	e2cb2683          	lw	a3,-468(s6)
80003f2c:	00a12823          	sw	a0,16(sp)
80003f30:	00b12e23          	sw	a1,28(sp)
80003f34:	9e5fd0ef          	jal	80001918 <__gedf2>
80003f38:	00c12883          	lw	a7,12(sp)
80003f3c:	01412303          	lw	t1,20(sp)
80003f40:	2ca05863          	blez	a0,80004210 <_ftoa+0x4a0>
80003f44:	00188893          	add	a7,a7,1 # 10001 <__stack_size+0xc001>
80003f48:	00088513          	mv	a0,a7
80003f4c:	00612823          	sw	t1,16(sp)
80003f50:	01112623          	sw	a7,12(sp)
80003f54:	ab9fe0ef          	jal	80002a0c <__floatunsidf>
80003f58:	00012603          	lw	a2,0(sp)
80003f5c:	00412683          	lw	a3,4(sp)
80003f60:	9b9fd0ef          	jal	80001918 <__gedf2>
80003f64:	00c12883          	lw	a7,12(sp)
80003f68:	01012303          	lw	t1,16(sp)
80003f6c:	00054663          	bltz	a0,80003f78 <_ftoa+0x208>
80003f70:	001a0a13          	add	s4,s4,1
80003f74:	00000893          	li	a7,0
80003f78:	14030c63          	beqz	t1,800040d0 <_ftoa+0x360>
80003f7c:	02000513          	li	a0,32
80003f80:	00a00613          	li	a2,10
80003f84:	00900e13          	li	t3,9
80003f88:	30aa8663          	beq	s5,a0,80004294 <_ftoa+0x524>
80003f8c:	02c8f6b3          	remu	a3,a7,a2
80003f90:	001a8a93          	add	s5,s5,1
80003f94:	015b85b3          	add	a1,s7,s5
80003f98:	fff30313          	add	t1,t1,-1
80003f9c:	03068693          	add	a3,a3,48
80003fa0:	fed58fa3          	sb	a3,-1(a1) # c0000fff <__stack_base+0xfff>
80003fa4:	02c8d6b3          	divu	a3,a7,a2
80003fa8:	2d1e7063          	bgeu	t3,a7,80004268 <_ftoa+0x4f8>
80003fac:	00068893          	mv	a7,a3
80003fb0:	fd9ff06f          	j	80003f88 <_ftoa+0x218>
80003fb4:	004df793          	and	a5,s11,4
80003fb8:	06079863          	bnez	a5,80004028 <_ftoa+0x2b8>
80003fbc:	a0000737          	lui	a4,0xa0000
80003fc0:	6ec70713          	add	a4,a4,1772 # a00006ec <__clz_tab+0x6b0>
80003fc4:	00300793          	li	a5,3
80003fc8:	000d8893          	mv	a7,s11
80003fcc:	00090813          	mv	a6,s2
80003fd0:	0180006f          	j	80003fe8 <_ftoa+0x278>
80003fd4:	a0000737          	lui	a4,0xa0000
80003fd8:	000d8893          	mv	a7,s11
80003fdc:	00090813          	mv	a6,s2
80003fe0:	00300793          	li	a5,3
80003fe4:	6f070713          	add	a4,a4,1776 # a00006f0 <__clz_tab+0x6b4>
80003fe8:	07812403          	lw	s0,120(sp)
80003fec:	07c12083          	lw	ra,124(sp)
80003ff0:	07412483          	lw	s1,116(sp)
80003ff4:	07012903          	lw	s2,112(sp)
80003ff8:	06012b03          	lw	s6,96(sp)
80003ffc:	04c12d83          	lw	s11,76(sp)
80004000:	000d0693          	mv	a3,s10
80004004:	000c8613          	mv	a2,s9
80004008:	05012d03          	lw	s10,80(sp)
8000400c:	05412c83          	lw	s9,84(sp)
80004010:	000c0593          	mv	a1,s8
80004014:	00098513          	mv	a0,s3
80004018:	05812c03          	lw	s8,88(sp)
8000401c:	06c12983          	lw	s3,108(sp)
80004020:	08010113          	add	sp,sp,128
80004024:	a70ff06f          	j	80003294 <_out_rev>
80004028:	a0000737          	lui	a4,0xa0000
8000402c:	6e470713          	add	a4,a4,1764 # a00006e4 <__clz_tab+0x6a8>
80004030:	00400793          	li	a5,4
80004034:	f95ff06f          	j	80003fc8 <_ftoa+0x258>
80004038:	00048613          	mv	a2,s1
8000403c:	00040693          	mv	a3,s0
80004040:	00000513          	li	a0,0
80004044:	00000593          	li	a1,0
80004048:	878fe0ef          	jal	800020c0 <__subdf3>
8000404c:	00100793          	li	a5,1
80004050:	00050493          	mv	s1,a0
80004054:	00058413          	mv	s0,a1
80004058:	00f12c23          	sw	a5,24(sp)
8000405c:	e15ff06f          	j	80003e70 <_ftoa+0x100>
80004060:	00040793          	mv	a5,s0
80004064:	07812403          	lw	s0,120(sp)
80004068:	09b12023          	sw	s11,128(sp)
8000406c:	06812a03          	lw	s4,104(sp)
80004070:	07c12083          	lw	ra,124(sp)
80004074:	04c12d83          	lw	s11,76(sp)
80004078:	00048713          	mv	a4,s1
8000407c:	00090893          	mv	a7,s2
80004080:	07412483          	lw	s1,116(sp)
80004084:	07012903          	lw	s2,112(sp)
80004088:	000b0813          	mv	a6,s6
8000408c:	000d0693          	mv	a3,s10
80004090:	06012b03          	lw	s6,96(sp)
80004094:	05012d03          	lw	s10,80(sp)
80004098:	000c8613          	mv	a2,s9
8000409c:	000c0593          	mv	a1,s8
800040a0:	05412c83          	lw	s9,84(sp)
800040a4:	05812c03          	lw	s8,88(sp)
800040a8:	00098513          	mv	a0,s3
800040ac:	06c12983          	lw	s3,108(sp)
800040b0:	08010113          	add	sp,sp,128
800040b4:	e78ff06f          	j	8000372c <_etoa>
800040b8:	a0000737          	lui	a4,0xa0000
800040bc:	000d8893          	mv	a7,s11
800040c0:	00090813          	mv	a6,s2
800040c4:	00400793          	li	a5,4
800040c8:	6f470713          	add	a4,a4,1780 # a00006f4 <__clz_tab+0x6b8>
800040cc:	f1dff06f          	j	80003fe8 <_ftoa+0x278>
800040d0:	000a0513          	mv	a0,s4
800040d4:	891fe0ef          	jal	80002964 <__floatsidf>
800040d8:	00050613          	mv	a2,a0
800040dc:	00058693          	mv	a3,a1
800040e0:	00048513          	mv	a0,s1
800040e4:	00040593          	mv	a1,s0
800040e8:	fd9fd0ef          	jal	800020c0 <__subdf3>
800040ec:	e28b2603          	lw	a2,-472(s6)
800040f0:	e2cb2683          	lw	a3,-468(s6)
800040f4:	901fd0ef          	jal	800019f4 <__ledf2>
800040f8:	00054663          	bltz	a0,80004104 <_ftoa+0x394>
800040fc:	001a7693          	and	a3,s4,1
80004100:	00da0a33          	add	s4,s4,a3
80004104:	02000513          	li	a0,32
80004108:	00a00613          	li	a2,10
8000410c:	0aaa8a63          	beq	s5,a0,800041c0 <_ftoa+0x450>
80004110:	02ca66b3          	rem	a3,s4,a2
80004114:	001a8a93          	add	s5,s5,1
80004118:	015b85b3          	add	a1,s7,s5
8000411c:	02ca4a33          	div	s4,s4,a2
80004120:	03068693          	add	a3,a3,48
80004124:	fed58fa3          	sb	a3,-1(a1)
80004128:	fe0a12e3          	bnez	s4,8000410c <_ftoa+0x39c>
8000412c:	003df693          	and	a3,s11,3
80004130:	00100613          	li	a2,1
80004134:	22c68c63          	beq	a3,a2,8000436c <_ftoa+0x5fc>
80004138:	02000693          	li	a3,32
8000413c:	02da8263          	beq	s5,a3,80004160 <_ftoa+0x3f0>
80004140:	01812783          	lw	a5,24(sp)
80004144:	16078c63          	beqz	a5,800042bc <_ftoa+0x54c>
80004148:	020a8793          	add	a5,s5,32
8000414c:	02010713          	add	a4,sp,32
80004150:	00e786b3          	add	a3,a5,a4
80004154:	02d00613          	li	a2,45
80004158:	fec68023          	sb	a2,-32(a3)
8000415c:	001a8a93          	add	s5,s5,1
80004160:	000d8893          	mv	a7,s11
80004164:	00090813          	mv	a6,s2
80004168:	000a8793          	mv	a5,s5
8000416c:	000b8713          	mv	a4,s7
80004170:	000d0693          	mv	a3,s10
80004174:	000c8613          	mv	a2,s9
80004178:	000c0593          	mv	a1,s8
8000417c:	00098513          	mv	a0,s3
80004180:	914ff0ef          	jal	80003294 <_out_rev>
80004184:	07c12083          	lw	ra,124(sp)
80004188:	07812403          	lw	s0,120(sp)
8000418c:	06812a03          	lw	s4,104(sp)
80004190:	06412a83          	lw	s5,100(sp)
80004194:	05c12b83          	lw	s7,92(sp)
80004198:	07412483          	lw	s1,116(sp)
8000419c:	07012903          	lw	s2,112(sp)
800041a0:	06c12983          	lw	s3,108(sp)
800041a4:	06012b03          	lw	s6,96(sp)
800041a8:	05812c03          	lw	s8,88(sp)
800041ac:	05412c83          	lw	s9,84(sp)
800041b0:	05012d03          	lw	s10,80(sp)
800041b4:	04c12d83          	lw	s11,76(sp)
800041b8:	08010113          	add	sp,sp,128
800041bc:	00008067          	ret
800041c0:	003df693          	and	a3,s11,3
800041c4:	00100613          	li	a2,1
800041c8:	f8c69ce3          	bne	a3,a2,80004160 <_ftoa+0x3f0>
800041cc:	f8090ae3          	beqz	s2,80004160 <_ftoa+0x3f0>
800041d0:	01812783          	lw	a5,24(sp)
800041d4:	14079e63          	bnez	a5,80004330 <_ftoa+0x5c0>
800041d8:	00cdf693          	and	a3,s11,12
800041dc:	14069a63          	bnez	a3,80004330 <_ftoa+0x5c0>
800041e0:	0d2afa63          	bgeu	s5,s2,800042b4 <_ftoa+0x544>
800041e4:	02000693          	li	a3,32
800041e8:	03000613          	li	a2,48
800041ec:	02000593          	li	a1,32
800041f0:	00da8c63          	beq	s5,a3,80004208 <_ftoa+0x498>
800041f4:	001a8a93          	add	s5,s5,1
800041f8:	015b86b3          	add	a3,s7,s5
800041fc:	fec68fa3          	sb	a2,-1(a3)
80004200:	f32a8ce3          	beq	s5,s2,80004138 <_ftoa+0x3c8>
80004204:	feba98e3          	bne	s5,a1,800041f4 <_ftoa+0x484>
80004208:	02000a93          	li	s5,32
8000420c:	f55ff06f          	j	80004160 <_ftoa+0x3f0>
80004210:	a00017b7          	lui	a5,0xa0001
80004214:	01012503          	lw	a0,16(sp)
80004218:	01c12583          	lw	a1,28(sp)
8000421c:	e287a603          	lw	a2,-472(a5) # a0000e28 <intpat+0x60>
80004220:	e2c7a683          	lw	a3,-468(a5)
80004224:	01112623          	sw	a7,12(sp)
80004228:	00612023          	sw	t1,0(sp)
8000422c:	fc8fd0ef          	jal	800019f4 <__ledf2>
80004230:	00012303          	lw	t1,0(sp)
80004234:	00c12883          	lw	a7,12(sp)
80004238:	d40540e3          	bltz	a0,80003f78 <_ftoa+0x208>
8000423c:	0e089263          	bnez	a7,80004320 <_ftoa+0x5b0>
80004240:	00188893          	add	a7,a7,1
80004244:	d35ff06f          	j	80003f78 <_ftoa+0x208>
80004248:	a0001737          	lui	a4,0xa0001
8000424c:	e7072783          	lw	a5,-400(a4) # a0000e70 <intpat+0xa8>
80004250:	e7472803          	lw	a6,-396(a4)
80004254:	00600313          	li	t1,6
80004258:	00f12023          	sw	a5,0(sp)
8000425c:	01012223          	sw	a6,4(sp)
80004260:	02010b93          	add	s7,sp,32
80004264:	c59ff06f          	j	80003ebc <_ftoa+0x14c>
80004268:	02aa8663          	beq	s5,a0,80004294 <_ftoa+0x524>
8000426c:	01530533          	add	a0,t1,s5
80004270:	03000593          	li	a1,48
80004274:	02000613          	li	a2,32
80004278:	00031663          	bnez	t1,80004284 <_ftoa+0x514>
8000427c:	06c0006f          	j	800042e8 <_ftoa+0x578>
80004280:	06aa8463          	beq	s5,a0,800042e8 <_ftoa+0x578>
80004284:	001a8a93          	add	s5,s5,1
80004288:	015b86b3          	add	a3,s7,s5
8000428c:	feb68fa3          	sb	a1,-1(a3)
80004290:	feca98e3          	bne	s5,a2,80004280 <_ftoa+0x510>
80004294:	02000a93          	li	s5,32
80004298:	e6dff06f          	j	80004104 <_ftoa+0x394>
8000429c:	e78a2783          	lw	a5,-392(s4)
800042a0:	e7ca2803          	lw	a6,-388(s4)
800042a4:	02000a93          	li	s5,32
800042a8:	00f12023          	sw	a5,0(sp)
800042ac:	01012223          	sw	a6,4(sp)
800042b0:	c0dff06f          	j	80003ebc <_ftoa+0x14c>
800042b4:	02000693          	li	a3,32
800042b8:	eada84e3          	beq	s5,a3,80004160 <_ftoa+0x3f0>
800042bc:	004df693          	and	a3,s11,4
800042c0:	04069263          	bnez	a3,80004304 <_ftoa+0x594>
800042c4:	008df693          	and	a3,s11,8
800042c8:	e8068ce3          	beqz	a3,80004160 <_ftoa+0x3f0>
800042cc:	020a8793          	add	a5,s5,32
800042d0:	02010713          	add	a4,sp,32
800042d4:	00e786b3          	add	a3,a5,a4
800042d8:	02000613          	li	a2,32
800042dc:	fec68023          	sb	a2,-32(a3)
800042e0:	001a8a93          	add	s5,s5,1
800042e4:	e7dff06f          	j	80004160 <_ftoa+0x3f0>
800042e8:	020a8793          	add	a5,s5,32
800042ec:	02010713          	add	a4,sp,32
800042f0:	00e786b3          	add	a3,a5,a4
800042f4:	02e00613          	li	a2,46
800042f8:	fec68023          	sb	a2,-32(a3)
800042fc:	001a8a93          	add	s5,s5,1
80004300:	e05ff06f          	j	80004104 <_ftoa+0x394>
80004304:	020a8793          	add	a5,s5,32
80004308:	02010713          	add	a4,sp,32
8000430c:	00e786b3          	add	a3,a5,a4
80004310:	02b00613          	li	a2,43
80004314:	fec68023          	sb	a2,-32(a3)
80004318:	001a8a93          	add	s5,s5,1
8000431c:	e45ff06f          	j	80004160 <_ftoa+0x3f0>
80004320:	0018f693          	and	a3,a7,1
80004324:	c4068ae3          	beqz	a3,80003f78 <_ftoa+0x208>
80004328:	00188893          	add	a7,a7,1
8000432c:	c4dff06f          	j	80003f78 <_ftoa+0x208>
80004330:	fff90913          	add	s2,s2,-1
80004334:	eb2ae8e3          	bltu	s5,s2,800041e4 <_ftoa+0x474>
80004338:	e01ff06f          	j	80004138 <_ftoa+0x3c8>
8000433c:	a00017b7          	lui	a5,0xa0001
80004340:	003b1713          	sll	a4,s6,0x3
80004344:	d4878793          	add	a5,a5,-696 # a0000d48 <pow10.0>
80004348:	00e787b3          	add	a5,a5,a4
8000434c:	0047a803          	lw	a6,4(a5)
80004350:	0007a783          	lw	a5,0(a5)
80004354:	000b0313          	mv	t1,s6
80004358:	01012223          	sw	a6,4(sp)
8000435c:	00f12023          	sw	a5,0(sp)
80004360:	00000a93          	li	s5,0
80004364:	02010b93          	add	s7,sp,32
80004368:	b55ff06f          	j	80003ebc <_ftoa+0x14c>
8000436c:	dc0906e3          	beqz	s2,80004138 <_ftoa+0x3c8>
80004370:	e61ff06f          	j	800041d0 <_ftoa+0x460>

80004374 <_vsnprintf>:
80004374:	f6010113          	add	sp,sp,-160
80004378:	09212823          	sw	s2,144(sp)
8000437c:	09612023          	sw	s6,128(sp)
80004380:	07712e23          	sw	s7,124(sp)
80004384:	07912a23          	sw	s9,116(sp)
80004388:	07b12623          	sw	s11,108(sp)
8000438c:	08112e23          	sw	ra,156(sp)
80004390:	08812c23          	sw	s0,152(sp)
80004394:	08912a23          	sw	s1,148(sp)
80004398:	00058d93          	mv	s11,a1
8000439c:	00060b13          	mv	s6,a2
800043a0:	00068913          	mv	s2,a3
800043a4:	00070c93          	mv	s9,a4
800043a8:	00050b93          	mv	s7,a0
800043ac:	50058e63          	beqz	a1,800048c8 <_vsnprintf+0x554>
800043b0:	00094503          	lbu	a0,0(s2)
800043b4:	00000413          	li	s0,0
800043b8:	52050263          	beqz	a0,800048dc <_vsnprintf+0x568>
800043bc:	a00017b7          	lui	a5,0xa0001
800043c0:	09412423          	sw	s4,136(sp)
800043c4:	bf078793          	add	a5,a5,-1040 # a0000bf0 <__clz_tab+0xbb4>
800043c8:	a0001a37          	lui	s4,0xa0001
800043cc:	09312623          	sw	s3,140(sp)
800043d0:	09512223          	sw	s5,132(sp)
800043d4:	01000993          	li	s3,16
800043d8:	baca0a13          	add	s4,s4,-1108 # a0000bac <__clz_tab+0xb70>
800043dc:	00900a93          	li	s5,9
800043e0:	00f12e23          	sw	a5,28(sp)
800043e4:	0200006f          	j	80004404 <_vsnprintf+0x90>
800043e8:	00040613          	mv	a2,s0
800043ec:	000b0693          	mv	a3,s6
800043f0:	000d8593          	mv	a1,s11
800043f4:	00140413          	add	s0,s0,1
800043f8:	000b80e7          	jalr	s7 # 80000000 <__start>
800043fc:	00094503          	lbu	a0,0(s2)
80004400:	18050063          	beqz	a0,80004580 <_vsnprintf+0x20c>
80004404:	02500793          	li	a5,37
80004408:	00190913          	add	s2,s2,1
8000440c:	fcf51ee3          	bne	a0,a5,800043e8 <_vsnprintf+0x74>
80004410:	00000693          	li	a3,0
80004414:	00094503          	lbu	a0,0(s2)
80004418:	00190713          	add	a4,s2,1
8000441c:	fe050793          	add	a5,a0,-32
80004420:	0ff7f793          	zext.b	a5,a5
80004424:	00f9ea63          	bltu	s3,a5,80004438 <_vsnprintf+0xc4>
80004428:	00279793          	sll	a5,a5,0x2
8000442c:	014787b3          	add	a5,a5,s4
80004430:	0007a783          	lw	a5,0(a5)
80004434:	00078067          	jr	a5
80004438:	fd050793          	add	a5,a0,-48
8000443c:	0ff7f793          	zext.b	a5,a5
80004440:	0cfaf263          	bgeu	s5,a5,80004504 <_vsnprintf+0x190>
80004444:	02a00793          	li	a5,42
80004448:	00000893          	li	a7,0
8000444c:	24f50663          	beq	a0,a5,80004698 <_vsnprintf+0x324>
80004450:	02e00793          	li	a5,46
80004454:	00000813          	li	a6,0
80004458:	0ef50c63          	beq	a0,a5,80004550 <_vsnprintf+0x1dc>
8000445c:	f9850793          	add	a5,a0,-104
80004460:	0ff7f793          	zext.b	a5,a5
80004464:	01200613          	li	a2,18
80004468:	06f66063          	bltu	a2,a5,800044c8 <_vsnprintf+0x154>
8000446c:	01c12603          	lw	a2,28(sp)
80004470:	00279793          	sll	a5,a5,0x2
80004474:	00c787b3          	add	a5,a5,a2
80004478:	0007a783          	lw	a5,0(a5)
8000447c:	00078067          	jr	a5
80004480:	0016e693          	or	a3,a3,1
80004484:	00070913          	mv	s2,a4
80004488:	f8dff06f          	j	80004414 <_vsnprintf+0xa0>
8000448c:	0026e693          	or	a3,a3,2
80004490:	00070913          	mv	s2,a4
80004494:	f81ff06f          	j	80004414 <_vsnprintf+0xa0>
80004498:	0046e693          	or	a3,a3,4
8000449c:	00070913          	mv	s2,a4
800044a0:	f75ff06f          	j	80004414 <_vsnprintf+0xa0>
800044a4:	0106e693          	or	a3,a3,16
800044a8:	00070913          	mv	s2,a4
800044ac:	f69ff06f          	j	80004414 <_vsnprintf+0xa0>
800044b0:	0086e693          	or	a3,a3,8
800044b4:	00070913          	mv	s2,a4
800044b8:	f5dff06f          	j	80004414 <_vsnprintf+0xa0>
800044bc:	00194503          	lbu	a0,1(s2)
800044c0:	1006e693          	or	a3,a3,256
800044c4:	00170713          	add	a4,a4,1
800044c8:	06700793          	li	a5,103
800044cc:	00070913          	mv	s2,a4
800044d0:	10a7e463          	bltu	a5,a0,800045d8 <_vsnprintf+0x264>
800044d4:	02400793          	li	a5,36
800044d8:	f0a7f8e3          	bgeu	a5,a0,800043e8 <_vsnprintf+0x74>
800044dc:	fdb50793          	add	a5,a0,-37
800044e0:	0ff7f793          	zext.b	a5,a5
800044e4:	04200713          	li	a4,66
800044e8:	f0f760e3          	bltu	a4,a5,800043e8 <_vsnprintf+0x74>
800044ec:	a0001737          	lui	a4,0xa0001
800044f0:	00279793          	sll	a5,a5,0x2
800044f4:	c3c70713          	add	a4,a4,-964 # a0000c3c <__clz_tab+0xc00>
800044f8:	00e787b3          	add	a5,a5,a4
800044fc:	0007a783          	lw	a5,0(a5)
80004500:	00078067          	jr	a5
80004504:	00000893          	li	a7,0
80004508:	00088613          	mv	a2,a7
8000450c:	0080006f          	j	80004514 <_vsnprintf+0x1a0>
80004510:	00170713          	add	a4,a4,1
80004514:	00261893          	sll	a7,a2,0x2
80004518:	00c888b3          	add	a7,a7,a2
8000451c:	00189893          	sll	a7,a7,0x1
80004520:	00a888b3          	add	a7,a7,a0
80004524:	00074503          	lbu	a0,0(a4)
80004528:	00070913          	mv	s2,a4
8000452c:	fd088613          	add	a2,a7,-48
80004530:	fd050793          	add	a5,a0,-48
80004534:	0ff7f793          	zext.b	a5,a5
80004538:	fcfafce3          	bgeu	s5,a5,80004510 <_vsnprintf+0x19c>
8000453c:	02e00793          	li	a5,46
80004540:	00060893          	mv	a7,a2
80004544:	00170713          	add	a4,a4,1
80004548:	00000813          	li	a6,0
8000454c:	f0f518e3          	bne	a0,a5,8000445c <_vsnprintf+0xe8>
80004550:	00194503          	lbu	a0,1(s2)
80004554:	00900593          	li	a1,9
80004558:	00070613          	mv	a2,a4
8000455c:	fd050793          	add	a5,a0,-48
80004560:	0ff7f793          	zext.b	a5,a5
80004564:	4006e693          	or	a3,a3,1024
80004568:	3af5f463          	bgeu	a1,a5,80004910 <_vsnprintf+0x59c>
8000456c:	02a00793          	li	a5,42
80004570:	3cf50c63          	beq	a0,a5,80004948 <_vsnprintf+0x5d4>
80004574:	00070913          	mv	s2,a4
80004578:	00170713          	add	a4,a4,1
8000457c:	ee1ff06f          	j	8000445c <_vsnprintf+0xe8>
80004580:	08c12983          	lw	s3,140(sp)
80004584:	08812a03          	lw	s4,136(sp)
80004588:	08412a83          	lw	s5,132(sp)
8000458c:	00040493          	mv	s1,s0
80004590:	01646463          	bltu	s0,s6,80004598 <_vsnprintf+0x224>
80004594:	fffb0413          	add	s0,s6,-1
80004598:	000b0693          	mv	a3,s6
8000459c:	00040613          	mv	a2,s0
800045a0:	000d8593          	mv	a1,s11
800045a4:	00000513          	li	a0,0
800045a8:	000b80e7          	jalr	s7
800045ac:	09c12083          	lw	ra,156(sp)
800045b0:	09812403          	lw	s0,152(sp)
800045b4:	09012903          	lw	s2,144(sp)
800045b8:	08012b03          	lw	s6,128(sp)
800045bc:	07c12b83          	lw	s7,124(sp)
800045c0:	07412c83          	lw	s9,116(sp)
800045c4:	06c12d83          	lw	s11,108(sp)
800045c8:	00048513          	mv	a0,s1
800045cc:	09412483          	lw	s1,148(sp)
800045d0:	0a010113          	add	sp,sp,160
800045d4:	00008067          	ret
800045d8:	f9750793          	add	a5,a0,-105
800045dc:	0ff7f793          	zext.b	a5,a5
800045e0:	00f00713          	li	a4,15
800045e4:	e0f762e3          	bltu	a4,a5,800043e8 <_vsnprintf+0x74>
800045e8:	00009737          	lui	a4,0x9
800045ec:	00100493          	li	s1,1
800045f0:	00f494b3          	sll	s1,s1,a5
800045f4:	04170713          	add	a4,a4,65 # 9041 <__stack_size+0x5041>
800045f8:	00e4f4b3          	and	s1,s1,a4
800045fc:	2e049663          	bnez	s1,800048e8 <_vsnprintf+0x574>
80004600:	00a00713          	li	a4,10
80004604:	0ae78863          	beq	a5,a4,800046b4 <_vsnprintf+0x340>
80004608:	00700713          	li	a4,7
8000460c:	dce79ee3          	bne	a5,a4,800043e8 <_vsnprintf+0x74>
80004610:	000ca783          	lw	a5,0(s9)
80004614:	0216e613          	or	a2,a3,33
80004618:	004c8c93          	add	s9,s9,4
8000461c:	34078863          	beqz	a5,8000496c <_vsnprintf+0x5f8>
80004620:	04010713          	add	a4,sp,64
80004624:	00900893          	li	a7,9
80004628:	00f00513          	li	a0,15
8000462c:	02000313          	li	t1,32
80004630:	00c0006f          	j	8000463c <_vsnprintf+0x2c8>
80004634:	02648663          	beq	s1,t1,80004660 <_vsnprintf+0x2ec>
80004638:	00068793          	mv	a5,a3
8000463c:	00f7fe13          	and	t3,a5,15
80004640:	037e0593          	add	a1,t3,55
80004644:	01c8e463          	bltu	a7,t3,8000464c <_vsnprintf+0x2d8>
80004648:	030e0593          	add	a1,t3,48
8000464c:	00148493          	add	s1,s1,1
80004650:	009706b3          	add	a3,a4,s1
80004654:	feb68fa3          	sb	a1,-1(a3)
80004658:	0047d693          	srl	a3,a5,0x4
8000465c:	fcf56ce3          	bltu	a0,a5,80004634 <_vsnprintf+0x2c0>
80004660:	00800793          	li	a5,8
80004664:	00f12223          	sw	a5,4(sp)
80004668:	01012023          	sw	a6,0(sp)
8000466c:	00c12423          	sw	a2,8(sp)
80004670:	01000893          	li	a7,16
80004674:	00000813          	li	a6,0
80004678:	00048793          	mv	a5,s1
8000467c:	00040613          	mv	a2,s0
80004680:	000b0693          	mv	a3,s6
80004684:	000d8593          	mv	a1,s11
80004688:	000b8513          	mv	a0,s7
8000468c:	d41fe0ef          	jal	800033cc <_ntoa_format>
80004690:	00050413          	mv	s0,a0
80004694:	d69ff06f          	j	800043fc <_vsnprintf+0x88>
80004698:	000ca883          	lw	a7,0(s9)
8000469c:	004c8c93          	add	s9,s9,4
800046a0:	0c08c263          	bltz	a7,80004764 <_vsnprintf+0x3f0>
800046a4:	00194503          	lbu	a0,1(s2)
800046a8:	00070913          	mv	s2,a4
800046ac:	00170713          	add	a4,a4,1
800046b0:	da1ff06f          	j	80004450 <_vsnprintf+0xdc>
800046b4:	07a12823          	sw	s10,112(sp)
800046b8:	000cad03          	lw	s10,0(s9)
800046bc:	07812c23          	sw	s8,120(sp)
800046c0:	004c8793          	add	a5,s9,4
800046c4:	000d4603          	lbu	a2,0(s10)
800046c8:	02f12023          	sw	a5,32(sp)
800046cc:	00060513          	mv	a0,a2
800046d0:	2a080a63          	beqz	a6,80004984 <_vsnprintf+0x610>
800046d4:	02060663          	beqz	a2,80004700 <_vsnprintf+0x38c>
800046d8:	fff80713          	add	a4,a6,-1
800046dc:	00170713          	add	a4,a4,1
800046e0:	00ed0733          	add	a4,s10,a4
800046e4:	000d0493          	mv	s1,s10
800046e8:	0080006f          	j	800046f0 <_vsnprintf+0x37c>
800046ec:	00e48863          	beq	s1,a4,800046fc <_vsnprintf+0x388>
800046f0:	0014c783          	lbu	a5,1(s1)
800046f4:	00148493          	add	s1,s1,1
800046f8:	fe079ae3          	bnez	a5,800046ec <_vsnprintf+0x378>
800046fc:	41a484b3          	sub	s1,s1,s10
80004700:	4006fc13          	and	s8,a3,1024
80004704:	000c0663          	beqz	s8,80004710 <_vsnprintf+0x39c>
80004708:	00987463          	bgeu	a6,s1,80004710 <_vsnprintf+0x39c>
8000470c:	00080493          	mv	s1,a6
80004710:	0026f693          	and	a3,a3,2
80004714:	42068c63          	beqz	a3,80004b4c <_vsnprintf+0x7d8>
80004718:	38060863          	beqz	a2,80004aa8 <_vsnprintf+0x734>
8000471c:	320c0c63          	beqz	s8,80004a54 <_vsnprintf+0x6e0>
80004720:	00880cb3          	add	s9,a6,s0
80004724:	02912223          	sw	s1,36(sp)
80004728:	03112423          	sw	a7,40(sp)
8000472c:	00040793          	mv	a5,s0
80004730:	00068c13          	mv	s8,a3
80004734:	3efc8463          	beq	s9,a5,80004b1c <_vsnprintf+0x7a8>
80004738:	000b0693          	mv	a3,s6
8000473c:	00078613          	mv	a2,a5
80004740:	000d8593          	mv	a1,s11
80004744:	00178493          	add	s1,a5,1
80004748:	000b80e7          	jalr	s7
8000474c:	40848733          	sub	a4,s1,s0
80004750:	00ed0733          	add	a4,s10,a4
80004754:	00074503          	lbu	a0,0(a4)
80004758:	3c050e63          	beqz	a0,80004b34 <_vsnprintf+0x7c0>
8000475c:	00048793          	mv	a5,s1
80004760:	fd5ff06f          	j	80004734 <_vsnprintf+0x3c0>
80004764:	00194503          	lbu	a0,1(s2)
80004768:	0026e693          	or	a3,a3,2
8000476c:	00070913          	mv	s2,a4
80004770:	411008b3          	neg	a7,a7
80004774:	00170713          	add	a4,a4,1
80004778:	cd9ff06f          	j	80004450 <_vsnprintf+0xdc>
8000477c:	00194503          	lbu	a0,1(s2)
80004780:	06c00793          	li	a5,108
80004784:	d2f51ee3          	bne	a0,a5,800044c0 <_vsnprintf+0x14c>
80004788:	00294503          	lbu	a0,2(s2)
8000478c:	3006e693          	or	a3,a3,768
80004790:	00390713          	add	a4,s2,3
80004794:	d35ff06f          	j	800044c8 <_vsnprintf+0x154>
80004798:	00194503          	lbu	a0,1(s2)
8000479c:	2006e693          	or	a3,a3,512
800047a0:	00170713          	add	a4,a4,1
800047a4:	d25ff06f          	j	800044c8 <_vsnprintf+0x154>
800047a8:	00194503          	lbu	a0,1(s2)
800047ac:	06800793          	li	a5,104
800047b0:	34f50463          	beq	a0,a5,80004af8 <_vsnprintf+0x784>
800047b4:	0806e693          	or	a3,a3,128
800047b8:	00170713          	add	a4,a4,1
800047bc:	d0dff06f          	j	800044c8 <_vsnprintf+0x154>
800047c0:	06700793          	li	a5,103
800047c4:	1cf50a63          	beq	a0,a5,80004998 <_vsnprintf+0x624>
800047c8:	04700793          	li	a5,71
800047cc:	30f50c63          	beq	a0,a5,80004ae4 <_vsnprintf+0x770>
800047d0:	04500793          	li	a5,69
800047d4:	30f50e63          	beq	a0,a5,80004af0 <_vsnprintf+0x77c>
800047d8:	007c8c93          	add	s9,s9,7
800047dc:	ff8cfc93          	and	s9,s9,-8
800047e0:	000ca703          	lw	a4,0(s9)
800047e4:	004ca783          	lw	a5,4(s9)
800047e8:	00040613          	mv	a2,s0
800047ec:	00d12023          	sw	a3,0(sp)
800047f0:	000d8593          	mv	a1,s11
800047f4:	000b0693          	mv	a3,s6
800047f8:	000b8513          	mv	a0,s7
800047fc:	f31fe0ef          	jal	8000372c <_etoa>
80004800:	008c8c93          	add	s9,s9,8
80004804:	00050413          	mv	s0,a0
80004808:	bf5ff06f          	j	800043fc <_vsnprintf+0x88>
8000480c:	04600793          	li	a5,70
80004810:	18f50063          	beq	a0,a5,80004990 <_vsnprintf+0x61c>
80004814:	007c8c93          	add	s9,s9,7
80004818:	ff8cfc93          	and	s9,s9,-8
8000481c:	000ca703          	lw	a4,0(s9)
80004820:	004ca783          	lw	a5,4(s9)
80004824:	00040613          	mv	a2,s0
80004828:	00d12023          	sw	a3,0(sp)
8000482c:	000d8593          	mv	a1,s11
80004830:	000b0693          	mv	a3,s6
80004834:	000b8513          	mv	a0,s7
80004838:	d38ff0ef          	jal	80003d70 <_ftoa>
8000483c:	008c8c93          	add	s9,s9,8
80004840:	00050413          	mv	s0,a0
80004844:	bb9ff06f          	j	800043fc <_vsnprintf+0x88>
80004848:	00040613          	mv	a2,s0
8000484c:	000b0693          	mv	a3,s6
80004850:	000d8593          	mv	a1,s11
80004854:	02500513          	li	a0,37
80004858:	00140413          	add	s0,s0,1
8000485c:	000b80e7          	jalr	s7
80004860:	b9dff06f          	j	800043fc <_vsnprintf+0x88>
80004864:	07812c23          	sw	s8,120(sp)
80004868:	0026f693          	and	a3,a3,2
8000486c:	004c8c13          	add	s8,s9,4
80004870:	00140493          	add	s1,s0,1
80004874:	32068663          	beqz	a3,80004ba0 <_vsnprintf+0x82c>
80004878:	000cc503          	lbu	a0,0(s9)
8000487c:	03112023          	sw	a7,32(sp)
80004880:	00040613          	mv	a2,s0
80004884:	000b0693          	mv	a3,s6
80004888:	000d8593          	mv	a1,s11
8000488c:	000b80e7          	jalr	s7
80004890:	02012883          	lw	a7,32(sp)
80004894:	00100793          	li	a5,1
80004898:	01140433          	add	s0,s0,a7
8000489c:	3b17f663          	bgeu	a5,a7,80004c48 <_vsnprintf+0x8d4>
800048a0:	00048613          	mv	a2,s1
800048a4:	000b0693          	mv	a3,s6
800048a8:	00148493          	add	s1,s1,1
800048ac:	000d8593          	mv	a1,s11
800048b0:	02000513          	li	a0,32
800048b4:	000b80e7          	jalr	s7
800048b8:	fe8494e3          	bne	s1,s0,800048a0 <_vsnprintf+0x52c>
800048bc:	000c0c93          	mv	s9,s8
800048c0:	07812c03          	lw	s8,120(sp)
800048c4:	b39ff06f          	j	800043fc <_vsnprintf+0x88>
800048c8:	00094503          	lbu	a0,0(s2)
800048cc:	80003337          	lui	t1,0x80003
800048d0:	29030b93          	add	s7,t1,656 # 80003290 <_out_null>
800048d4:	00000413          	li	s0,0
800048d8:	ae0512e3          	bnez	a0,800043bc <_vsnprintf+0x48>
800048dc:	00000493          	li	s1,0
800048e0:	cb646ce3          	bltu	s0,s6,80004598 <_vsnprintf+0x224>
800048e4:	cb1ff06f          	j	80004594 <_vsnprintf+0x220>
800048e8:	06f00793          	li	a5,111
800048ec:	0af50e63          	beq	a0,a5,800049a8 <_vsnprintf+0x634>
800048f0:	42a7fc63          	bgeu	a5,a0,80004d28 <_vsnprintf+0x9b4>
800048f4:	07800793          	li	a5,120
800048f8:	32f50263          	beq	a0,a5,80004c1c <_vsnprintf+0x8a8>
800048fc:	fef6f693          	and	a3,a3,-17
80004900:	00a00613          	li	a2,10
80004904:	00000f13          	li	t5,0
80004908:	00a00e13          	li	t3,10
8000490c:	0a80006f          	j	800049b4 <_vsnprintf+0x640>
80004910:	00900713          	li	a4,9
80004914:	00281793          	sll	a5,a6,0x2
80004918:	010787b3          	add	a5,a5,a6
8000491c:	00160613          	add	a2,a2,1
80004920:	00179793          	sll	a5,a5,0x1
80004924:	00a787b3          	add	a5,a5,a0
80004928:	00064503          	lbu	a0,0(a2)
8000492c:	fd078813          	add	a6,a5,-48
80004930:	fd050793          	add	a5,a0,-48
80004934:	0ff7f793          	zext.b	a5,a5
80004938:	fcf77ee3          	bgeu	a4,a5,80004914 <_vsnprintf+0x5a0>
8000493c:	00060913          	mv	s2,a2
80004940:	00160713          	add	a4,a2,1
80004944:	b19ff06f          	j	8000445c <_vsnprintf+0xe8>
80004948:	000ca803          	lw	a6,0(s9)
8000494c:	00294503          	lbu	a0,2(s2)
80004950:	00290913          	add	s2,s2,2
80004954:	fff84793          	not	a5,a6
80004958:	41f7d793          	sra	a5,a5,0x1f
8000495c:	00f87833          	and	a6,a6,a5
80004960:	004c8c93          	add	s9,s9,4
80004964:	00190713          	add	a4,s2,1
80004968:	af5ff06f          	j	8000445c <_vsnprintf+0xe8>
8000496c:	fef6f613          	and	a2,a3,-17
80004970:	4006f793          	and	a5,a3,1024
80004974:	02166613          	or	a2,a2,33
80004978:	04010713          	add	a4,sp,64
8000497c:	ce0792e3          	bnez	a5,80004660 <_vsnprintf+0x2ec>
80004980:	ca1ff06f          	j	80004620 <_vsnprintf+0x2ac>
80004984:	d6060ee3          	beqz	a2,80004700 <_vsnprintf+0x38c>
80004988:	ffe00713          	li	a4,-2
8000498c:	d51ff06f          	j	800046dc <_vsnprintf+0x368>
80004990:	0206e693          	or	a3,a3,32
80004994:	e81ff06f          	j	80004814 <_vsnprintf+0x4a0>
80004998:	000017b7          	lui	a5,0x1
8000499c:	80078793          	add	a5,a5,-2048 # 800 <__stack_size-0x3800>
800049a0:	00f6e6b3          	or	a3,a3,a5
800049a4:	e35ff06f          	j	800047d8 <_vsnprintf+0x464>
800049a8:	00800613          	li	a2,8
800049ac:	00000f13          	li	t5,0
800049b0:	00800e13          	li	t3,8
800049b4:	4006f513          	and	a0,a3,1024
800049b8:	ff36fe93          	and	t4,a3,-13
800049bc:	00050463          	beqz	a0,800049c4 <_vsnprintf+0x650>
800049c0:	ff26fe93          	and	t4,a3,-14
800049c4:	200ef593          	and	a1,t4,512
800049c8:	28059463          	bnez	a1,80004c50 <_vsnprintf+0x8dc>
800049cc:	100ef793          	and	a5,t4,256
800049d0:	004c8493          	add	s1,s9,4
800049d4:	66079a63          	bnez	a5,80005048 <_vsnprintf+0xcd4>
800049d8:	040ef713          	and	a4,t4,64
800049dc:	24071863          	bnez	a4,80004c2c <_vsnprintf+0x8b8>
800049e0:	080ef713          	and	a4,t4,128
800049e4:	76070263          	beqz	a4,80005148 <_vsnprintf+0xdd4>
800049e8:	000cd603          	lhu	a2,0(s9)
800049ec:	2c061a63          	bnez	a2,80004cc0 <_vsnprintf+0x94c>
800049f0:	fefefe93          	and	t4,t4,-17
800049f4:	2c050663          	beqz	a0,80004cc0 <_vsnprintf+0x94c>
800049f8:	00000793          	li	a5,0
800049fc:	04010713          	add	a4,sp,64
80004a00:	01112223          	sw	a7,4(sp)
80004a04:	01012023          	sw	a6,0(sp)
80004a08:	01d12423          	sw	t4,8(sp)
80004a0c:	000e0893          	mv	a7,t3
80004a10:	00000813          	li	a6,0
80004a14:	00040613          	mv	a2,s0
80004a18:	000b0693          	mv	a3,s6
80004a1c:	000d8593          	mv	a1,s11
80004a20:	000b8513          	mv	a0,s7
80004a24:	9a9fe0ef          	jal	800033cc <_ntoa_format>
80004a28:	00050413          	mv	s0,a0
80004a2c:	00048c93          	mv	s9,s1
80004a30:	9cdff06f          	j	800043fc <_vsnprintf+0x88>
80004a34:	05800793          	li	a5,88
80004a38:	0cf50863          	beq	a0,a5,80004b08 <_vsnprintf+0x794>
80004a3c:	06200793          	li	a5,98
80004a40:	6af51063          	bne	a0,a5,800050e0 <_vsnprintf+0xd6c>
80004a44:	00200613          	li	a2,2
80004a48:	00000f13          	li	t5,0
80004a4c:	00200e13          	li	t3,2
80004a50:	f65ff06f          	j	800049b4 <_vsnprintf+0x640>
80004a54:	02912223          	sw	s1,36(sp)
80004a58:	00090c13          	mv	s8,s2
80004a5c:	00068c93          	mv	s9,a3
80004a60:	00040493          	mv	s1,s0
80004a64:	00088913          	mv	s2,a7
80004a68:	00048613          	mv	a2,s1
80004a6c:	000b0693          	mv	a3,s6
80004a70:	000d8593          	mv	a1,s11
80004a74:	000b80e7          	jalr	s7
80004a78:	00148493          	add	s1,s1,1
80004a7c:	40848733          	sub	a4,s1,s0
80004a80:	00ed0733          	add	a4,s10,a4
80004a84:	00074503          	lbu	a0,0(a4)
80004a88:	fe0510e3          	bnez	a0,80004a68 <_vsnprintf+0x6f4>
80004a8c:	00090893          	mv	a7,s2
80004a90:	000c0913          	mv	s2,s8
80004a94:	00048c13          	mv	s8,s1
80004a98:	02412483          	lw	s1,36(sp)
80004a9c:	000c8693          	mv	a3,s9
80004aa0:	000c0413          	mv	s0,s8
80004aa4:	02068863          	beqz	a3,80004ad4 <_vsnprintf+0x760>
80004aa8:	00040c13          	mv	s8,s0
80004aac:	0314f463          	bgeu	s1,a7,80004ad4 <_vsnprintf+0x760>
80004ab0:	008888b3          	add	a7,a7,s0
80004ab4:	40988433          	sub	s0,a7,s1
80004ab8:	000c0613          	mv	a2,s8
80004abc:	000b0693          	mv	a3,s6
80004ac0:	001c0c13          	add	s8,s8,1
80004ac4:	000d8593          	mv	a1,s11
80004ac8:	02000513          	li	a0,32
80004acc:	000b80e7          	jalr	s7
80004ad0:	fe8c14e3          	bne	s8,s0,80004ab8 <_vsnprintf+0x744>
80004ad4:	02012c83          	lw	s9,32(sp)
80004ad8:	07812c03          	lw	s8,120(sp)
80004adc:	07012d03          	lw	s10,112(sp)
80004ae0:	91dff06f          	j	800043fc <_vsnprintf+0x88>
80004ae4:	000017b7          	lui	a5,0x1
80004ae8:	80078793          	add	a5,a5,-2048 # 800 <__stack_size-0x3800>
80004aec:	00f6e6b3          	or	a3,a3,a5
80004af0:	0206e693          	or	a3,a3,32
80004af4:	ce5ff06f          	j	800047d8 <_vsnprintf+0x464>
80004af8:	00294503          	lbu	a0,2(s2)
80004afc:	0c06e693          	or	a3,a3,192
80004b00:	00390713          	add	a4,s2,3
80004b04:	9c5ff06f          	j	800044c8 <_vsnprintf+0x154>
80004b08:	0206e693          	or	a3,a3,32
80004b0c:	01000613          	li	a2,16
80004b10:	00000f13          	li	t5,0
80004b14:	01000e13          	li	t3,16
80004b18:	e9dff06f          	j	800049b4 <_vsnprintf+0x640>
80004b1c:	000c0693          	mv	a3,s8
80004b20:	02412483          	lw	s1,36(sp)
80004b24:	02812883          	lw	a7,40(sp)
80004b28:	000c8413          	mv	s0,s9
80004b2c:	fa0684e3          	beqz	a3,80004ad4 <_vsnprintf+0x760>
80004b30:	f79ff06f          	j	80004aa8 <_vsnprintf+0x734>
80004b34:	000c0693          	mv	a3,s8
80004b38:	00048c13          	mv	s8,s1
80004b3c:	02812883          	lw	a7,40(sp)
80004b40:	02412483          	lw	s1,36(sp)
80004b44:	000c0413          	mv	s0,s8
80004b48:	f5dff06f          	j	80004aa4 <_vsnprintf+0x730>
80004b4c:	6114f863          	bgeu	s1,a7,8000515c <_vsnprintf+0xde8>
80004b50:	011407b3          	add	a5,s0,a7
80004b54:	409784b3          	sub	s1,a5,s1
80004b58:	00068c93          	mv	s9,a3
80004b5c:	03112223          	sw	a7,36(sp)
80004b60:	03012423          	sw	a6,40(sp)
80004b64:	00040613          	mv	a2,s0
80004b68:	000b0693          	mv	a3,s6
80004b6c:	00140413          	add	s0,s0,1
80004b70:	000d8593          	mv	a1,s11
80004b74:	02000513          	li	a0,32
80004b78:	000b80e7          	jalr	s7
80004b7c:	fe9414e3          	bne	s0,s1,80004b64 <_vsnprintf+0x7f0>
80004b80:	02412883          	lw	a7,36(sp)
80004b84:	02812803          	lw	a6,40(sp)
80004b88:	000d4603          	lbu	a2,0(s10)
80004b8c:	000c8693          	mv	a3,s9
80004b90:	00188493          	add	s1,a7,1
80004b94:	00060513          	mv	a0,a2
80004b98:	b80612e3          	bnez	a2,8000471c <_vsnprintf+0x3a8>
80004b9c:	f39ff06f          	j	80004ad4 <_vsnprintf+0x760>
80004ba0:	00100793          	li	a5,1
80004ba4:	0917f863          	bgeu	a5,a7,80004c34 <_vsnprintf+0x8c0>
80004ba8:	fff40493          	add	s1,s0,-1
80004bac:	07a12823          	sw	s10,112(sp)
80004bb0:	011484b3          	add	s1,s1,a7
80004bb4:	000c8d13          	mv	s10,s9
80004bb8:	02812023          	sw	s0,32(sp)
80004bbc:	00090c93          	mv	s9,s2
80004bc0:	00088913          	mv	s2,a7
80004bc4:	00040613          	mv	a2,s0
80004bc8:	000b0693          	mv	a3,s6
80004bcc:	00140413          	add	s0,s0,1
80004bd0:	000d8593          	mv	a1,s11
80004bd4:	02000513          	li	a0,32
80004bd8:	000b80e7          	jalr	s7
80004bdc:	fe9414e3          	bne	s0,s1,80004bc4 <_vsnprintf+0x850>
80004be0:	00090893          	mv	a7,s2
80004be4:	000c8913          	mv	s2,s9
80004be8:	000d0c93          	mv	s9,s10
80004bec:	000cc503          	lbu	a0,0(s9)
80004bf0:	00040d13          	mv	s10,s0
80004bf4:	02012403          	lw	s0,32(sp)
80004bf8:	000d0613          	mv	a2,s10
80004bfc:	000b0693          	mv	a3,s6
80004c00:	000d8593          	mv	a1,s11
80004c04:	01140433          	add	s0,s0,a7
80004c08:	000c0c93          	mv	s9,s8
80004c0c:	000b80e7          	jalr	s7
80004c10:	07012d03          	lw	s10,112(sp)
80004c14:	07812c03          	lw	s8,120(sp)
80004c18:	fe4ff06f          	j	800043fc <_vsnprintf+0x88>
80004c1c:	01000613          	li	a2,16
80004c20:	00000f13          	li	t5,0
80004c24:	01000e13          	li	t3,16
80004c28:	d8dff06f          	j	800049b4 <_vsnprintf+0x640>
80004c2c:	000cc603          	lbu	a2,0(s9)
80004c30:	dbdff06f          	j	800049ec <_vsnprintf+0x678>
80004c34:	000cc503          	lbu	a0,0(s9)
80004c38:	000b0693          	mv	a3,s6
80004c3c:	00040613          	mv	a2,s0
80004c40:	000d8593          	mv	a1,s11
80004c44:	000b80e7          	jalr	s7
80004c48:	00048413          	mv	s0,s1
80004c4c:	c71ff06f          	j	800048bc <_vsnprintf+0x548>
80004c50:	007c8c93          	add	s9,s9,7
80004c54:	ff8cfc93          	and	s9,s9,-8
80004c58:	004ca483          	lw	s1,4(s9)
80004c5c:	07812c23          	sw	s8,120(sp)
80004c60:	000cac03          	lw	s8,0(s9)
80004c64:	07a12823          	sw	s10,112(sp)
80004c68:	008c8c93          	add	s9,s9,8
80004c6c:	009c67b3          	or	a5,s8,s1
80004c70:	2e079e63          	bnez	a5,80004f6c <_vsnprintf+0xbf8>
80004c74:	fefefe93          	and	t4,t4,-17
80004c78:	2e050a63          	beqz	a0,80004f6c <_vsnprintf+0xbf8>
80004c7c:	00000d13          	li	s10,0
80004c80:	04010713          	add	a4,sp,64
80004c84:	01112223          	sw	a7,4(sp)
80004c88:	01012023          	sw	a6,0(sp)
80004c8c:	000d0793          	mv	a5,s10
80004c90:	00040613          	mv	a2,s0
80004c94:	01d12423          	sw	t4,8(sp)
80004c98:	000e0893          	mv	a7,t3
80004c9c:	00000813          	li	a6,0
80004ca0:	000b0693          	mv	a3,s6
80004ca4:	000d8593          	mv	a1,s11
80004ca8:	000b8513          	mv	a0,s7
80004cac:	f20fe0ef          	jal	800033cc <_ntoa_format>
80004cb0:	00050413          	mv	s0,a0
80004cb4:	07812c03          	lw	s8,120(sp)
80004cb8:	07012d03          	lw	s10,112(sp)
80004cbc:	f40ff06f          	j	800043fc <_vsnprintf+0x88>
80004cc0:	005ed693          	srl	a3,t4,0x5
80004cc4:	0016f693          	and	a3,a3,1
80004cc8:	06100713          	li	a4,97
80004ccc:	00068463          	beqz	a3,80004cd4 <_vsnprintf+0x960>
80004cd0:	04100713          	li	a4,65
80004cd4:	0ff77f13          	zext.b	t5,a4
80004cd8:	00900513          	li	a0,9
80004cdc:	04010713          	add	a4,sp,64
80004ce0:	ff6f0f13          	add	t5,t5,-10
80004ce4:	02000313          	li	t1,32
80004ce8:	0280006f          	j	80004d10 <_vsnprintf+0x99c>
80004cec:	03068693          	add	a3,a3,48
80004cf0:	0ff6f693          	zext.b	a3,a3
80004cf4:	00178793          	add	a5,a5,1
80004cf8:	00f705b3          	add	a1,a4,a5
80004cfc:	fed58fa3          	sb	a3,-1(a1)
80004d00:	03c656b3          	divu	a3,a2,t3
80004d04:	cfc66ee3          	bltu	a2,t3,80004a00 <_vsnprintf+0x68c>
80004d08:	ce678ce3          	beq	a5,t1,80004a00 <_vsnprintf+0x68c>
80004d0c:	00068613          	mv	a2,a3
80004d10:	03c675b3          	remu	a1,a2,t3
80004d14:	0ff5f693          	zext.b	a3,a1
80004d18:	fcb57ae3          	bgeu	a0,a1,80004cec <_vsnprintf+0x978>
80004d1c:	01e686b3          	add	a3,a3,t5
80004d20:	0ff6f693          	zext.b	a3,a3
80004d24:	fd1ff06f          	j	80004cf4 <_vsnprintf+0x980>
80004d28:	06900793          	li	a5,105
80004d2c:	fef6fe13          	and	t3,a3,-17
80004d30:	42f51a63          	bne	a0,a5,80005164 <_vsnprintf+0xdf0>
80004d34:	4006f513          	and	a0,a3,1024
80004d38:	00050663          	beqz	a0,80004d44 <_vsnprintf+0x9d0>
80004d3c:	fee6fe13          	and	t3,a3,-18
80004d40:	40000513          	li	a0,1024
80004d44:	200e7693          	and	a3,t3,512
80004d48:	06069e63          	bnez	a3,80004dc4 <_vsnprintf+0xa50>
80004d4c:	100e7793          	and	a5,t3,256
80004d50:	004c8493          	add	s1,s9,4
80004d54:	1a079063          	bnez	a5,80004ef4 <_vsnprintf+0xb80>
80004d58:	040e7713          	and	a4,t3,64
80004d5c:	16070a63          	beqz	a4,80004ed0 <_vsnprintf+0xb5c>
80004d60:	000cc703          	lbu	a4,0(s9)
80004d64:	00070693          	mv	a3,a4
80004d68:	01f75593          	srl	a1,a4,0x1f
80004d6c:	1e070a63          	beqz	a4,80004f60 <_vsnprintf+0xbec>
80004d70:	00068513          	mv	a0,a3
80004d74:	04010713          	add	a4,sp,64
80004d78:	00a00613          	li	a2,10
80004d7c:	00900e93          	li	t4,9
80004d80:	02000f13          	li	t5,32
80004d84:	0080006f          	j	80004d8c <_vsnprintf+0xa18>
80004d88:	03e78263          	beq	a5,t5,80004dac <_vsnprintf+0xa38>
80004d8c:	02c576b3          	remu	a3,a0,a2
80004d90:	00178793          	add	a5,a5,1
80004d94:	00f70fb3          	add	t6,a4,a5
80004d98:	00050313          	mv	t1,a0
80004d9c:	03068693          	add	a3,a3,48
80004da0:	fedf8fa3          	sb	a3,-1(t6)
80004da4:	02c55533          	divu	a0,a0,a2
80004da8:	fe6ee0e3          	bltu	t4,t1,80004d88 <_vsnprintf+0xa14>
80004dac:	01112223          	sw	a7,4(sp)
80004db0:	01012023          	sw	a6,0(sp)
80004db4:	01c12423          	sw	t3,8(sp)
80004db8:	00a00893          	li	a7,10
80004dbc:	00058813          	mv	a6,a1
80004dc0:	c55ff06f          	j	80004a14 <_vsnprintf+0x6a0>
80004dc4:	007c8c93          	add	s9,s9,7
80004dc8:	ff8cfc93          	and	s9,s9,-8
80004dcc:	004ca583          	lw	a1,4(s9)
80004dd0:	000ca603          	lw	a2,0(s9)
80004dd4:	008c8c93          	add	s9,s9,8
80004dd8:	01f5df93          	srl	t6,a1,0x1f
80004ddc:	00b667b3          	or	a5,a2,a1
80004de0:	24078a63          	beqz	a5,80005034 <_vsnprintf+0xcc0>
80004de4:	41f5d793          	sra	a5,a1,0x1f
80004de8:	00c7c633          	xor	a2,a5,a2
80004dec:	40f60733          	sub	a4,a2,a5
80004df0:	00b7c5b3          	xor	a1,a5,a1
80004df4:	00e636b3          	sltu	a3,a2,a4
80004df8:	40f587b3          	sub	a5,a1,a5
80004dfc:	07812c23          	sw	s8,120(sp)
80004e00:	00070613          	mv	a2,a4
80004e04:	40d785b3          	sub	a1,a5,a3
80004e08:	ccccd537          	lui	a0,0xccccd
80004e0c:	ccccdeb7          	lui	t4,0xccccd
80004e10:	00000793          	li	a5,0
80004e14:	04010713          	add	a4,sp,64
80004e18:	00500f13          	li	t5,5
80004e1c:	ccd50513          	add	a0,a0,-819 # cccccccd <__stack_base+0xccccccd>
80004e20:	ccce8e93          	add	t4,t4,-820 # cccccccc <__stack_base+0xccccccc>
80004e24:	02000293          	li	t0,32
80004e28:	00058493          	mv	s1,a1
80004e2c:	009606b3          	add	a3,a2,s1
80004e30:	00c6b5b3          	sltu	a1,a3,a2
80004e34:	00b686b3          	add	a3,a3,a1
80004e38:	03e6f6b3          	remu	a3,a3,t5
80004e3c:	00048313          	mv	t1,s1
80004e40:	00178793          	add	a5,a5,1
80004e44:	00060093          	mv	ra,a2
80004e48:	00f703b3          	add	t2,a4,a5
80004e4c:	40d606b3          	sub	a3,a2,a3
80004e50:	00d635b3          	sltu	a1,a2,a3
80004e54:	40b485b3          	sub	a1,s1,a1
80004e58:	03d68c33          	mul	s8,a3,t4
80004e5c:	02a585b3          	mul	a1,a1,a0
80004e60:	02a6b4b3          	mulhu	s1,a3,a0
80004e64:	018585b3          	add	a1,a1,s8
80004e68:	02a686b3          	mul	a3,a3,a0
80004e6c:	009585b3          	add	a1,a1,s1
80004e70:	01f59c13          	sll	s8,a1,0x1f
80004e74:	0015d493          	srl	s1,a1,0x1
80004e78:	0016d693          	srl	a3,a3,0x1
80004e7c:	00dc66b3          	or	a3,s8,a3
80004e80:	00269593          	sll	a1,a3,0x2
80004e84:	00d585b3          	add	a1,a1,a3
80004e88:	00159593          	sll	a1,a1,0x1
80004e8c:	40b60633          	sub	a2,a2,a1
80004e90:	03060613          	add	a2,a2,48
80004e94:	fec38fa3          	sb	a2,-1(t2)
80004e98:	00068613          	mv	a2,a3
80004e9c:	02030263          	beqz	t1,80004ec0 <_vsnprintf+0xb4c>
80004ea0:	f85796e3          	bne	a5,t0,80004e2c <_vsnprintf+0xab8>
80004ea4:	07812c03          	lw	s8,120(sp)
80004ea8:	01112223          	sw	a7,4(sp)
80004eac:	01012023          	sw	a6,0(sp)
80004eb0:	01c12423          	sw	t3,8(sp)
80004eb4:	00a00893          	li	a7,10
80004eb8:	000f8813          	mv	a6,t6
80004ebc:	fc0ff06f          	j	8000467c <_vsnprintf+0x308>
80004ec0:	00900693          	li	a3,9
80004ec4:	fe16f0e3          	bgeu	a3,ra,80004ea4 <_vsnprintf+0xb30>
80004ec8:	f65792e3          	bne	a5,t0,80004e2c <_vsnprintf+0xab8>
80004ecc:	fd9ff06f          	j	80004ea4 <_vsnprintf+0xb30>
80004ed0:	080e7713          	and	a4,t3,128
80004ed4:	20070e63          	beqz	a4,800050f0 <_vsnprintf+0xd7c>
80004ed8:	000c9703          	lh	a4,0(s9)
80004edc:	40f75613          	sra	a2,a4,0xf
80004ee0:	00c746b3          	xor	a3,a4,a2
80004ee4:	40c686b3          	sub	a3,a3,a2
80004ee8:	01069693          	sll	a3,a3,0x10
80004eec:	0106d693          	srl	a3,a3,0x10
80004ef0:	e79ff06f          	j	80004d68 <_vsnprintf+0x9f4>
80004ef4:	000ca783          	lw	a5,0(s9)
80004ef8:	01f7d593          	srl	a1,a5,0x1f
80004efc:	24078063          	beqz	a5,8000513c <_vsnprintf+0xdc8>
80004f00:	41f7d713          	sra	a4,a5,0x1f
80004f04:	00f74533          	xor	a0,a4,a5
80004f08:	40e50533          	sub	a0,a0,a4
80004f0c:	04010713          	add	a4,sp,64
80004f10:	00a00613          	li	a2,10
80004f14:	00900e93          	li	t4,9
80004f18:	02000f13          	li	t5,32
80004f1c:	0080006f          	j	80004f24 <_vsnprintf+0xbb0>
80004f20:	03e68263          	beq	a3,t5,80004f44 <_vsnprintf+0xbd0>
80004f24:	02c577b3          	remu	a5,a0,a2
80004f28:	00168693          	add	a3,a3,1
80004f2c:	00d70fb3          	add	t6,a4,a3
80004f30:	00050313          	mv	t1,a0
80004f34:	03078793          	add	a5,a5,48
80004f38:	feff8fa3          	sb	a5,-1(t6)
80004f3c:	02c55533          	divu	a0,a0,a2
80004f40:	fe6ee0e3          	bltu	t4,t1,80004f20 <_vsnprintf+0xbac>
80004f44:	01112223          	sw	a7,4(sp)
80004f48:	01012023          	sw	a6,0(sp)
80004f4c:	01c12423          	sw	t3,8(sp)
80004f50:	00a00893          	li	a7,10
80004f54:	00058813          	mv	a6,a1
80004f58:	00068793          	mv	a5,a3
80004f5c:	ab9ff06f          	j	80004a14 <_vsnprintf+0x6a0>
80004f60:	04010713          	add	a4,sp,64
80004f64:	e40514e3          	bnez	a0,80004dac <_vsnprintf+0xa38>
80004f68:	e0dff06f          	j	80004d74 <_vsnprintf+0xa00>
80004f6c:	005ed713          	srl	a4,t4,0x5
80004f70:	00177713          	and	a4,a4,1
80004f74:	06100793          	li	a5,97
80004f78:	00070463          	beqz	a4,80004f80 <_vsnprintf+0xc0c>
80004f7c:	04100793          	li	a5,65
80004f80:	00000d13          	li	s10,0
80004f84:	04010713          	add	a4,sp,64
80004f88:	ff678793          	add	a5,a5,-10
80004f8c:	02812023          	sw	s0,32(sp)
80004f90:	03712a23          	sw	s7,52(sp)
80004f94:	03b12c23          	sw	s11,56(sp)
80004f98:	03612e23          	sw	s6,60(sp)
80004f9c:	03112223          	sw	a7,36(sp)
80004fa0:	000d0b13          	mv	s6,s10
80004fa4:	03012423          	sw	a6,40(sp)
80004fa8:	000c8d13          	mv	s10,s9
80004fac:	03d12623          	sw	t4,44(sp)
80004fb0:	00090c93          	mv	s9,s2
80004fb4:	03c12823          	sw	t3,48(sp)
80004fb8:	00060413          	mv	s0,a2
80004fbc:	000f0b93          	mv	s7,t5
80004fc0:	00070d93          	mv	s11,a4
80004fc4:	00078913          	mv	s2,a5
80004fc8:	0400006f          	j	80005008 <_vsnprintf+0xc94>
80004fcc:	03050793          	add	a5,a0,48
80004fd0:	0ff7f793          	zext.b	a5,a5
80004fd4:	001b0b13          	add	s6,s6,1
80004fd8:	016d8833          	add	a6,s11,s6
80004fdc:	00040613          	mv	a2,s0
80004fe0:	00000693          	li	a3,0
80004fe4:	000c0513          	mv	a0,s8
80004fe8:	00048593          	mv	a1,s1
80004fec:	fef80fa3          	sb	a5,-1(a6)
80004ff0:	a18fb0ef          	jal	80000208 <__udivdi3>
80004ff4:	109b8863          	beq	s7,s1,80005104 <_vsnprintf+0xd90>
80004ff8:	02000793          	li	a5,32
80004ffc:	10fb0663          	beq	s6,a5,80005108 <_vsnprintf+0xd94>
80005000:	00050c13          	mv	s8,a0
80005004:	00058493          	mv	s1,a1
80005008:	00040613          	mv	a2,s0
8000500c:	00000693          	li	a3,0
80005010:	000c0513          	mv	a0,s8
80005014:	00048593          	mv	a1,s1
80005018:	e20fb0ef          	jal	80000638 <__umoddi3>
8000501c:	0ff57513          	zext.b	a0,a0
80005020:	00900793          	li	a5,9
80005024:	faa7f4e3          	bgeu	a5,a0,80004fcc <_vsnprintf+0xc58>
80005028:	012507b3          	add	a5,a0,s2
8000502c:	0ff7f793          	zext.b	a5,a5
80005030:	fa5ff06f          	j	80004fd4 <_vsnprintf+0xc60>
80005034:	10051e63          	bnez	a0,80005150 <_vsnprintf+0xddc>
80005038:	07812c23          	sw	s8,120(sp)
8000503c:	00000613          	li	a2,0
80005040:	00000593          	li	a1,0
80005044:	dc5ff06f          	j	80004e08 <_vsnprintf+0xa94>
80005048:	000ca783          	lw	a5,0(s9)
8000504c:	00079863          	bnez	a5,8000505c <_vsnprintf+0xce8>
80005050:	fefefe93          	and	t4,t4,-17
80005054:	04010713          	add	a4,sp,64
80005058:	06051663          	bnez	a0,800050c4 <_vsnprintf+0xd50>
8000505c:	005ed693          	srl	a3,t4,0x5
80005060:	0016f693          	and	a3,a3,1
80005064:	06100713          	li	a4,97
80005068:	00068463          	beqz	a3,80005070 <_vsnprintf+0xcfc>
8000506c:	04100713          	li	a4,65
80005070:	0ff77f13          	zext.b	t5,a4
80005074:	00900313          	li	t1,9
80005078:	04010713          	add	a4,sp,64
8000507c:	ff6f0f13          	add	t5,t5,-10
80005080:	02000513          	li	a0,32
80005084:	0280006f          	j	800050ac <_vsnprintf+0xd38>
80005088:	03068693          	add	a3,a3,48
8000508c:	0ff6f693          	zext.b	a3,a3
80005090:	00158593          	add	a1,a1,1
80005094:	00b70633          	add	a2,a4,a1
80005098:	fed60fa3          	sb	a3,-1(a2)
8000509c:	03c7d6b3          	divu	a3,a5,t3
800050a0:	03c7e263          	bltu	a5,t3,800050c4 <_vsnprintf+0xd50>
800050a4:	02a58063          	beq	a1,a0,800050c4 <_vsnprintf+0xd50>
800050a8:	00068793          	mv	a5,a3
800050ac:	03c7f633          	remu	a2,a5,t3
800050b0:	0ff67693          	zext.b	a3,a2
800050b4:	fcc37ae3          	bgeu	t1,a2,80005088 <_vsnprintf+0xd14>
800050b8:	01e686b3          	add	a3,a3,t5
800050bc:	0ff6f693          	zext.b	a3,a3
800050c0:	fd1ff06f          	j	80005090 <_vsnprintf+0xd1c>
800050c4:	01112223          	sw	a7,4(sp)
800050c8:	01012023          	sw	a6,0(sp)
800050cc:	01d12423          	sw	t4,8(sp)
800050d0:	000e0893          	mv	a7,t3
800050d4:	00000813          	li	a6,0
800050d8:	00058793          	mv	a5,a1
800050dc:	939ff06f          	j	80004a14 <_vsnprintf+0x6a0>
800050e0:	4006f513          	and	a0,a3,1024
800050e4:	fef6fe13          	and	t3,a3,-17
800050e8:	c4050ee3          	beqz	a0,80004d44 <_vsnprintf+0x9d0>
800050ec:	c51ff06f          	j	80004d3c <_vsnprintf+0x9c8>
800050f0:	000ca703          	lw	a4,0(s9)
800050f4:	41f75613          	sra	a2,a4,0x1f
800050f8:	00e646b3          	xor	a3,a2,a4
800050fc:	40c686b3          	sub	a3,a3,a2
80005100:	c69ff06f          	j	80004d68 <_vsnprintf+0x9f4>
80005104:	ee8c7ae3          	bgeu	s8,s0,80004ff8 <_vsnprintf+0xc84>
80005108:	000c8913          	mv	s2,s9
8000510c:	000d8713          	mv	a4,s11
80005110:	000d0c93          	mv	s9,s10
80005114:	02012403          	lw	s0,32(sp)
80005118:	000b0d13          	mv	s10,s6
8000511c:	02412883          	lw	a7,36(sp)
80005120:	02812803          	lw	a6,40(sp)
80005124:	02c12e83          	lw	t4,44(sp)
80005128:	03012e03          	lw	t3,48(sp)
8000512c:	03412b83          	lw	s7,52(sp)
80005130:	03c12b03          	lw	s6,60(sp)
80005134:	03812d83          	lw	s11,56(sp)
80005138:	b4dff06f          	j	80004c84 <_vsnprintf+0x910>
8000513c:	04010713          	add	a4,sp,64
80005140:	e00512e3          	bnez	a0,80004f44 <_vsnprintf+0xbd0>
80005144:	dc9ff06f          	j	80004f0c <_vsnprintf+0xb98>
80005148:	000ca603          	lw	a2,0(s9)
8000514c:	8a1ff06f          	j	800049ec <_vsnprintf+0x678>
80005150:	00000793          	li	a5,0
80005154:	04010713          	add	a4,sp,64
80005158:	d51ff06f          	j	80004ea8 <_vsnprintf+0xb34>
8000515c:	00148493          	add	s1,s1,1
80005160:	a35ff06f          	j	80004b94 <_vsnprintf+0x820>
80005164:	000e0693          	mv	a3,t3
80005168:	00a00613          	li	a2,10
8000516c:	00000f13          	li	t5,0
80005170:	00a00e13          	li	t3,10
80005174:	841ff06f          	j	800049b4 <_vsnprintf+0x640>

80005178 <printf_>:
80005178:	fc010113          	add	sp,sp,-64
8000517c:	02410313          	add	t1,sp,36
80005180:	02d12623          	sw	a3,44(sp)
80005184:	00050693          	mv	a3,a0
80005188:	80003537          	lui	a0,0x80003
8000518c:	02b12223          	sw	a1,36(sp)
80005190:	02c12423          	sw	a2,40(sp)
80005194:	02e12823          	sw	a4,48(sp)
80005198:	00810593          	add	a1,sp,8
8000519c:	00030713          	mv	a4,t1
800051a0:	fff00613          	li	a2,-1
800051a4:	72050513          	add	a0,a0,1824 # 80003720 <_out_char>
800051a8:	00112e23          	sw	ra,28(sp)
800051ac:	02f12a23          	sw	a5,52(sp)
800051b0:	03012c23          	sw	a6,56(sp)
800051b4:	03112e23          	sw	a7,60(sp)
800051b8:	00612623          	sw	t1,12(sp)
800051bc:	9b8ff0ef          	jal	80004374 <_vsnprintf>
800051c0:	01c12083          	lw	ra,28(sp)
800051c4:	04010113          	add	sp,sp,64
800051c8:	00008067          	ret

800051cc <cmp_complex>:
800051cc:	fe010113          	add	sp,sp,-32
800051d0:	00912a23          	sw	s1,20(sp)
800051d4:	00051483          	lh	s1,0(a0)
800051d8:	00812c23          	sw	s0,24(sp)
800051dc:	01212823          	sw	s2,16(sp)
800051e0:	4074d793          	sra	a5,s1,0x7
800051e4:	01412423          	sw	s4,8(sp)
800051e8:	00112e23          	sw	ra,28(sp)
800051ec:	01312623          	sw	s3,12(sp)
800051f0:	0017f793          	and	a5,a5,1
800051f4:	00058913          	mv	s2,a1
800051f8:	00060413          	mv	s0,a2
800051fc:	07f4fa13          	and	s4,s1,127
80005200:	06079a63          	bnez	a5,80005274 <cmp_complex+0xa8>
80005204:	4034d713          	sra	a4,s1,0x3
80005208:	00f77713          	and	a4,a4,15
8000520c:	00471693          	sll	a3,a4,0x4
80005210:	00d705b3          	add	a1,a4,a3
80005214:	0074f613          	and	a2,s1,7
80005218:	03845783          	lhu	a5,56(s0)
8000521c:	00050993          	mv	s3,a0
80005220:	00058713          	mv	a4,a1
80005224:	14060863          	beqz	a2,80005374 <cmp_complex+0x1a8>
80005228:	00100693          	li	a3,1
8000522c:	0ed61663          	bne	a2,a3,80005318 <cmp_complex+0x14c>
80005230:	00078613          	mv	a2,a5
80005234:	02840513          	add	a0,s0,40
80005238:	241010ef          	jal	80006c78 <core_bench_matrix>
8000523c:	03c45783          	lhu	a5,60(s0)
80005240:	01051a13          	sll	s4,a0,0x10
80005244:	410a5a13          	sra	s4,s4,0x10
80005248:	16079463          	bnez	a5,800053b0 <cmp_complex+0x1e4>
8000524c:	03845783          	lhu	a5,56(s0)
80005250:	02a41e23          	sh	a0,60(s0)
80005254:	00078593          	mv	a1,a5
80005258:	07fa7a13          	and	s4,s4,127
8000525c:	f004f493          	and	s1,s1,-256
80005260:	344020ef          	jal	800075a4 <crcu16>
80005264:	009a64b3          	or	s1,s4,s1
80005268:	02a41c23          	sh	a0,56(s0)
8000526c:	0804e493          	or	s1,s1,128
80005270:	00999023          	sh	s1,0(s3)
80005274:	00091483          	lh	s1,0(s2)
80005278:	4074d793          	sra	a5,s1,0x7
8000527c:	0017f793          	and	a5,a5,1
80005280:	07f4f993          	and	s3,s1,127
80005284:	06079863          	bnez	a5,800052f4 <cmp_complex+0x128>
80005288:	4034d713          	sra	a4,s1,0x3
8000528c:	00f77713          	and	a4,a4,15
80005290:	00471693          	sll	a3,a4,0x4
80005294:	00d705b3          	add	a1,a4,a3
80005298:	0074f613          	and	a2,s1,7
8000529c:	03845783          	lhu	a5,56(s0)
800052a0:	00058713          	mv	a4,a1
800052a4:	08060a63          	beqz	a2,80005338 <cmp_complex+0x16c>
800052a8:	00100693          	li	a3,1
800052ac:	06d61e63          	bne	a2,a3,80005328 <cmp_complex+0x15c>
800052b0:	00078613          	mv	a2,a5
800052b4:	02840513          	add	a0,s0,40
800052b8:	1c1010ef          	jal	80006c78 <core_bench_matrix>
800052bc:	03c45783          	lhu	a5,60(s0)
800052c0:	01051993          	sll	s3,a0,0x10
800052c4:	4109d993          	sra	s3,s3,0x10
800052c8:	0e079863          	bnez	a5,800053b8 <cmp_complex+0x1ec>
800052cc:	03845783          	lhu	a5,56(s0)
800052d0:	02a41e23          	sh	a0,60(s0)
800052d4:	00078593          	mv	a1,a5
800052d8:	07f9f993          	and	s3,s3,127
800052dc:	f004f493          	and	s1,s1,-256
800052e0:	2c4020ef          	jal	800075a4 <crcu16>
800052e4:	0099e4b3          	or	s1,s3,s1
800052e8:	02a41c23          	sh	a0,56(s0)
800052ec:	0804e493          	or	s1,s1,128
800052f0:	00991023          	sh	s1,0(s2)
800052f4:	01c12083          	lw	ra,28(sp)
800052f8:	01812403          	lw	s0,24(sp)
800052fc:	413a0533          	sub	a0,s4,s3
80005300:	01412483          	lw	s1,20(sp)
80005304:	01012903          	lw	s2,16(sp)
80005308:	00c12983          	lw	s3,12(sp)
8000530c:	00812a03          	lw	s4,8(sp)
80005310:	02010113          	add	sp,sp,32
80005314:	00008067          	ret
80005318:	01049513          	sll	a0,s1,0x10
8000531c:	01055513          	srl	a0,a0,0x10
80005320:	00048a13          	mv	s4,s1
80005324:	f31ff06f          	j	80005254 <cmp_complex+0x88>
80005328:	01049513          	sll	a0,s1,0x10
8000532c:	01055513          	srl	a0,a0,0x10
80005330:	00048993          	mv	s3,s1
80005334:	fa1ff06f          	j	800052d4 <cmp_complex+0x108>
80005338:	02100693          	li	a3,33
8000533c:	00b6e463          	bltu	a3,a1,80005344 <cmp_complex+0x178>
80005340:	02200713          	li	a4,34
80005344:	00241683          	lh	a3,2(s0)
80005348:	00041603          	lh	a2,0(s0)
8000534c:	01442583          	lw	a1,20(s0)
80005350:	01842503          	lw	a0,24(s0)
80005354:	7c5010ef          	jal	80007318 <core_bench_state>
80005358:	03e45783          	lhu	a5,62(s0)
8000535c:	01051993          	sll	s3,a0,0x10
80005360:	4109d993          	sra	s3,s3,0x10
80005364:	04079a63          	bnez	a5,800053b8 <cmp_complex+0x1ec>
80005368:	03845783          	lhu	a5,56(s0)
8000536c:	02a41f23          	sh	a0,62(s0)
80005370:	f65ff06f          	j	800052d4 <cmp_complex+0x108>
80005374:	02100693          	li	a3,33
80005378:	00b6e463          	bltu	a3,a1,80005380 <cmp_complex+0x1b4>
8000537c:	02200713          	li	a4,34
80005380:	00241683          	lh	a3,2(s0)
80005384:	00041603          	lh	a2,0(s0)
80005388:	01442583          	lw	a1,20(s0)
8000538c:	01842503          	lw	a0,24(s0)
80005390:	789010ef          	jal	80007318 <core_bench_state>
80005394:	03e45783          	lhu	a5,62(s0)
80005398:	01051a13          	sll	s4,a0,0x10
8000539c:	410a5a13          	sra	s4,s4,0x10
800053a0:	00079863          	bnez	a5,800053b0 <cmp_complex+0x1e4>
800053a4:	03845783          	lhu	a5,56(s0)
800053a8:	02a41f23          	sh	a0,62(s0)
800053ac:	ea9ff06f          	j	80005254 <cmp_complex+0x88>
800053b0:	03845783          	lhu	a5,56(s0)
800053b4:	ea1ff06f          	j	80005254 <cmp_complex+0x88>
800053b8:	03845783          	lhu	a5,56(s0)
800053bc:	f19ff06f          	j	800052d4 <cmp_complex+0x108>

800053c0 <core_bench_list>:
800053c0:	00451883          	lh	a7,4(a0)
800053c4:	fc010113          	add	sp,sp,-64
800053c8:	02812c23          	sw	s0,56(sp)
800053cc:	03612023          	sw	s6,32(sp)
800053d0:	01712e23          	sw	s7,28(sp)
800053d4:	02112e23          	sw	ra,60(sp)
800053d8:	02912a23          	sw	s1,52(sp)
800053dc:	03212823          	sw	s2,48(sp)
800053e0:	03312623          	sw	s3,44(sp)
800053e4:	03412423          	sw	s4,40(sp)
800053e8:	03512223          	sw	s5,36(sp)
800053ec:	01812c23          	sw	s8,24(sp)
800053f0:	01912a23          	sw	s9,20(sp)
800053f4:	01a12823          	sw	s10,16(sp)
800053f8:	01b12623          	sw	s11,12(sp)
800053fc:	02452403          	lw	s0,36(a0)
80005400:	00050b13          	mv	s6,a0
80005404:	00058b93          	mv	s7,a1
80005408:	00058513          	mv	a0,a1
8000540c:	43105e63          	blez	a7,80005848 <core_bench_list+0x488>
80005410:	00000613          	li	a2,0
80005414:	00000813          	li	a6,0
80005418:	00000593          	li	a1,0
8000541c:	00000493          	li	s1,0
80005420:	0ff67c93          	zext.b	s9,a2
80005424:	260bca63          	bltz	s7,80005698 <core_bench_list+0x2d8>
80005428:	42040663          	beqz	s0,80005854 <core_bench_list+0x494>
8000542c:	00040793          	mv	a5,s0
80005430:	00c0006f          	j	8000543c <core_bench_list+0x7c>
80005434:	0007a783          	lw	a5,0(a5)
80005438:	00078863          	beqz	a5,80005448 <core_bench_list+0x88>
8000543c:	0047a703          	lw	a4,4(a5)
80005440:	00271703          	lh	a4,2(a4)
80005444:	ff7718e3          	bne	a4,s7,80005434 <core_bench_list+0x74>
80005448:	00000693          	li	a3,0
8000544c:	0080006f          	j	80005454 <core_bench_list+0x94>
80005450:	00070413          	mv	s0,a4
80005454:	00042703          	lw	a4,0(s0)
80005458:	00d42023          	sw	a3,0(s0)
8000545c:	00040693          	mv	a3,s0
80005460:	fe0718e3          	bnez	a4,80005450 <core_bench_list+0x90>
80005464:	24078c63          	beqz	a5,800056bc <core_bench_list+0x2fc>
80005468:	0047a703          	lw	a4,4(a5)
8000546c:	00071703          	lh	a4,0(a4)
80005470:	00177693          	and	a3,a4,1
80005474:	00068c63          	beqz	a3,8000548c <core_bench_list+0xcc>
80005478:	40975713          	sra	a4,a4,0x9
8000547c:	00177713          	and	a4,a4,1
80005480:	00e48733          	add	a4,s1,a4
80005484:	01071493          	sll	s1,a4,0x10
80005488:	0104d493          	srl	s1,s1,0x10
8000548c:	0007a703          	lw	a4,0(a5)
80005490:	00070c63          	beqz	a4,800054a8 <core_bench_list+0xe8>
80005494:	00072683          	lw	a3,0(a4)
80005498:	00d7a023          	sw	a3,0(a5)
8000549c:	00042783          	lw	a5,0(s0)
800054a0:	00f72023          	sw	a5,0(a4)
800054a4:	00e42023          	sw	a4,0(s0)
800054a8:	00158793          	add	a5,a1,1
800054ac:	01079593          	sll	a1,a5,0x10
800054b0:	0105d593          	srl	a1,a1,0x10
800054b4:	000bc863          	bltz	s7,800054c4 <core_bench_list+0x104>
800054b8:	001b8b93          	add	s7,s7,1
800054bc:	010b9b93          	sll	s7,s7,0x10
800054c0:	410bdb93          	sra	s7,s7,0x10
800054c4:	00160613          	add	a2,a2,1
800054c8:	01061613          	sll	a2,a2,0x10
800054cc:	41065613          	sra	a2,a2,0x10
800054d0:	f4c898e3          	bne	a7,a2,80005420 <core_bench_list+0x60>
800054d4:	00259793          	sll	a5,a1,0x2
800054d8:	410787b3          	sub	a5,a5,a6
800054dc:	00f484b3          	add	s1,s1,a5
800054e0:	01049493          	sll	s1,s1,0x10
800054e4:	0104d493          	srl	s1,s1,0x10
800054e8:	26a04263          	bgtz	a0,8000574c <core_bench_list+0x38c>
800054ec:	00042783          	lw	a5,0(s0)
800054f0:	00040913          	mv	s2,s0
800054f4:	0007a983          	lw	s3,0(a5)
800054f8:	0047a703          	lw	a4,4(a5)
800054fc:	0049a603          	lw	a2,4(s3)
80005500:	0009a683          	lw	a3,0(s3)
80005504:	00c7a223          	sw	a2,4(a5)
80005508:	00e9a223          	sw	a4,4(s3)
8000550c:	00d7a023          	sw	a3,0(a5)
80005510:	0009a023          	sw	zero,0(s3)
80005514:	0e0bca63          	bltz	s7,80005608 <core_bench_list+0x248>
80005518:	00492783          	lw	a5,4(s2)
8000551c:	00279783          	lh	a5,2(a5)
80005520:	01778c63          	beq	a5,s7,80005538 <core_bench_list+0x178>
80005524:	00092903          	lw	s2,0(s2)
80005528:	2e090863          	beqz	s2,80005818 <core_bench_list+0x458>
8000552c:	00492783          	lw	a5,4(s2)
80005530:	00279783          	lh	a5,2(a5)
80005534:	ff7798e3          	bne	a5,s7,80005524 <core_bench_list+0x164>
80005538:	00442783          	lw	a5,4(s0)
8000553c:	00048593          	mv	a1,s1
80005540:	00079503          	lh	a0,0(a5)
80005544:	744020ef          	jal	80007c88 <crc16>
80005548:	00092903          	lw	s2,0(s2)
8000554c:	00050493          	mv	s1,a0
80005550:	fe0914e3          	bnez	s2,80005538 <core_bench_list+0x178>
80005554:	00042903          	lw	s2,0(s0)
80005558:	0049a703          	lw	a4,4(s3)
8000555c:	00492683          	lw	a3,4(s2)
80005560:	00092783          	lw	a5,0(s2)
80005564:	00100e93          	li	t4,1
80005568:	00d9a223          	sw	a3,4(s3)
8000556c:	00e92223          	sw	a4,4(s2)
80005570:	00f9a023          	sw	a5,0(s3)
80005574:	01392023          	sw	s3,0(s2)
80005578:	00100f93          	li	t6,1
8000557c:	10040a63          	beqz	s0,80005690 <core_bench_list+0x2d0>
80005580:	00000693          	li	a3,0
80005584:	00000913          	li	s2,0
80005588:	00000f13          	li	t5,0
8000558c:	001f0f13          	add	t5,t5,1
80005590:	00040713          	mv	a4,s0
80005594:	00000793          	li	a5,0
80005598:	01d7d863          	bge	a5,t4,800055a8 <core_bench_list+0x1e8>
8000559c:	00072703          	lw	a4,0(a4)
800055a0:	00178793          	add	a5,a5,1
800055a4:	fe071ae3          	bnez	a4,80005598 <core_bench_list+0x1d8>
800055a8:	00040613          	mv	a2,s0
800055ac:	000e8593          	mv	a1,t4
800055b0:	00070413          	mv	s0,a4
800055b4:	02f05263          	blez	a5,800055d8 <core_bench_list+0x218>
800055b8:	06059063          	bnez	a1,80005618 <core_bench_list+0x258>
800055bc:	00060713          	mv	a4,a2
800055c0:	00062603          	lw	a2,0(a2)
800055c4:	fff78793          	add	a5,a5,-1
800055c8:	02068663          	beqz	a3,800055f4 <core_bench_list+0x234>
800055cc:	00e6a023          	sw	a4,0(a3)
800055d0:	00070693          	mv	a3,a4
800055d4:	fef042e3          	bgtz	a5,800055b8 <core_bench_list+0x1f8>
800055d8:	0ab05063          	blez	a1,80005678 <core_bench_list+0x2b8>
800055dc:	0a040063          	beqz	s0,8000567c <core_bench_list+0x2bc>
800055e0:	02079e63          	bnez	a5,8000561c <core_bench_list+0x25c>
800055e4:	00040713          	mv	a4,s0
800055e8:	fff58593          	add	a1,a1,-1
800055ec:	00042403          	lw	s0,0(s0)
800055f0:	fc069ee3          	bnez	a3,800055cc <core_bench_list+0x20c>
800055f4:	00070913          	mv	s2,a4
800055f8:	00070693          	mv	a3,a4
800055fc:	fd9ff06f          	j	800055d4 <core_bench_list+0x214>
80005600:	00092903          	lw	s2,0(s2)
80005604:	20090a63          	beqz	s2,80005818 <core_bench_list+0x458>
80005608:	00492783          	lw	a5,4(s2)
8000560c:	0007c783          	lbu	a5,0(a5)
80005610:	fefc98e3          	bne	s9,a5,80005600 <core_bench_list+0x240>
80005614:	f25ff06f          	j	80005538 <core_bench_list+0x178>
80005618:	fa0402e3          	beqz	s0,800055bc <core_bench_list+0x1fc>
8000561c:	00462803          	lw	a6,4(a2)
80005620:	00442503          	lw	a0,4(s0)
80005624:	00081703          	lh	a4,0(a6)
80005628:	00251303          	lh	t1,2(a0)
8000562c:	00281e03          	lh	t3,2(a6)
80005630:	01071893          	sll	a7,a4,0x10
80005634:	0108d893          	srl	a7,a7,0x10
80005638:	f0077713          	and	a4,a4,-256
8000563c:	0088d893          	srl	a7,a7,0x8
80005640:	01176733          	or	a4,a4,a7
80005644:	00e81023          	sh	a4,0(a6)
80005648:	00051703          	lh	a4,0(a0)
8000564c:	01071813          	sll	a6,a4,0x10
80005650:	01085813          	srl	a6,a6,0x10
80005654:	f0077713          	and	a4,a4,-256
80005658:	00885813          	srl	a6,a6,0x8
8000565c:	01076733          	or	a4,a4,a6
80005660:	00e51023          	sh	a4,0(a0)
80005664:	f5c35ce3          	bge	t1,t3,800055bc <core_bench_list+0x1fc>
80005668:	00040713          	mv	a4,s0
8000566c:	fff58593          	add	a1,a1,-1
80005670:	00042403          	lw	s0,0(s0)
80005674:	f55ff06f          	j	800055c8 <core_bench_list+0x208>
80005678:	f0041ae3          	bnez	s0,8000558c <core_bench_list+0x1cc>
8000567c:	0006a023          	sw	zero,0(a3)
80005680:	07ff0463          	beq	t5,t6,800056e8 <core_bench_list+0x328>
80005684:	00090413          	mv	s0,s2
80005688:	001e9e93          	sll	t4,t4,0x1
8000568c:	ee041ae3          	bnez	s0,80005580 <core_bench_list+0x1c0>
80005690:	00002023          	sw	zero,0(zero) # 0 <__stack_size-0x4000>
80005694:	00100073          	ebreak
80005698:	1a040e63          	beqz	s0,80005854 <core_bench_list+0x494>
8000569c:	00040793          	mv	a5,s0
800056a0:	00c0006f          	j	800056ac <core_bench_list+0x2ec>
800056a4:	0007a783          	lw	a5,0(a5)
800056a8:	da0780e3          	beqz	a5,80005448 <core_bench_list+0x88>
800056ac:	0047a703          	lw	a4,4(a5)
800056b0:	00074703          	lbu	a4,0(a4)
800056b4:	feec98e3          	bne	s9,a4,800056a4 <core_bench_list+0x2e4>
800056b8:	d91ff06f          	j	80005448 <core_bench_list+0x88>
800056bc:	00042783          	lw	a5,0(s0)
800056c0:	00180813          	add	a6,a6,1
800056c4:	01081813          	sll	a6,a6,0x10
800056c8:	0047a783          	lw	a5,4(a5)
800056cc:	01085813          	srl	a6,a6,0x10
800056d0:	00178783          	lb	a5,1(a5)
800056d4:	0017f793          	and	a5,a5,1
800056d8:	00f487b3          	add	a5,s1,a5
800056dc:	01079493          	sll	s1,a5,0x10
800056e0:	0104d493          	srl	s1,s1,0x10
800056e4:	dd1ff06f          	j	800054b4 <core_bench_list+0xf4>
800056e8:	00092403          	lw	s0,0(s2)
800056ec:	02040063          	beqz	s0,8000570c <core_bench_list+0x34c>
800056f0:	00492783          	lw	a5,4(s2)
800056f4:	00048593          	mv	a1,s1
800056f8:	00079503          	lh	a0,0(a5)
800056fc:	58c020ef          	jal	80007c88 <crc16>
80005700:	00042403          	lw	s0,0(s0)
80005704:	00050493          	mv	s1,a0
80005708:	fe0414e3          	bnez	s0,800056f0 <core_bench_list+0x330>
8000570c:	03c12083          	lw	ra,60(sp)
80005710:	03812403          	lw	s0,56(sp)
80005714:	03012903          	lw	s2,48(sp)
80005718:	02c12983          	lw	s3,44(sp)
8000571c:	02812a03          	lw	s4,40(sp)
80005720:	02412a83          	lw	s5,36(sp)
80005724:	02012b03          	lw	s6,32(sp)
80005728:	01c12b83          	lw	s7,28(sp)
8000572c:	01812c03          	lw	s8,24(sp)
80005730:	01412c83          	lw	s9,20(sp)
80005734:	01012d03          	lw	s10,16(sp)
80005738:	00c12d83          	lw	s11,12(sp)
8000573c:	00048513          	mv	a0,s1
80005740:	03412483          	lw	s1,52(sp)
80005744:	04010113          	add	sp,sp,64
80005748:	00008067          	ret
8000574c:	00100a13          	li	s4,1
80005750:	f40400e3          	beqz	s0,80005690 <core_bench_list+0x2d0>
80005754:	00000993          	li	s3,0
80005758:	00000a93          	li	s5,0
8000575c:	00000c13          	li	s8,0
80005760:	001c0c13          	add	s8,s8,1
80005764:	00040793          	mv	a5,s0
80005768:	00000913          	li	s2,0
8000576c:	01495863          	bge	s2,s4,8000577c <core_bench_list+0x3bc>
80005770:	0007a783          	lw	a5,0(a5)
80005774:	00190913          	add	s2,s2,1
80005778:	fe079ae3          	bnez	a5,8000576c <core_bench_list+0x3ac>
8000577c:	00040d93          	mv	s11,s0
80005780:	000a0d13          	mv	s10,s4
80005784:	00078413          	mv	s0,a5
80005788:	03205263          	blez	s2,800057ac <core_bench_list+0x3ec>
8000578c:	040d1463          	bnez	s10,800057d4 <core_bench_list+0x414>
80005790:	000d8793          	mv	a5,s11
80005794:	000dad83          	lw	s11,0(s11)
80005798:	fff90913          	add	s2,s2,-1
8000579c:	02098663          	beqz	s3,800057c8 <core_bench_list+0x408>
800057a0:	00f9a023          	sw	a5,0(s3)
800057a4:	00078993          	mv	s3,a5
800057a8:	ff2042e3          	bgtz	s2,8000578c <core_bench_list+0x3cc>
800057ac:	05a05863          	blez	s10,800057fc <core_bench_list+0x43c>
800057b0:	04040863          	beqz	s0,80005800 <core_bench_list+0x440>
800057b4:	02091263          	bnez	s2,800057d8 <core_bench_list+0x418>
800057b8:	00040793          	mv	a5,s0
800057bc:	fffd0d13          	add	s10,s10,-1
800057c0:	00042403          	lw	s0,0(s0)
800057c4:	fc099ee3          	bnez	s3,800057a0 <core_bench_list+0x3e0>
800057c8:	00078a93          	mv	s5,a5
800057cc:	00078993          	mv	s3,a5
800057d0:	fd9ff06f          	j	800057a8 <core_bench_list+0x3e8>
800057d4:	fa040ee3          	beqz	s0,80005790 <core_bench_list+0x3d0>
800057d8:	00442583          	lw	a1,4(s0)
800057dc:	004da503          	lw	a0,4(s11)
800057e0:	000b0613          	mv	a2,s6
800057e4:	9e9ff0ef          	jal	800051cc <cmp_complex>
800057e8:	faa054e3          	blez	a0,80005790 <core_bench_list+0x3d0>
800057ec:	00040793          	mv	a5,s0
800057f0:	fffd0d13          	add	s10,s10,-1
800057f4:	00042403          	lw	s0,0(s0)
800057f8:	fa5ff06f          	j	8000579c <core_bench_list+0x3dc>
800057fc:	f60412e3          	bnez	s0,80005760 <core_bench_list+0x3a0>
80005800:	0009a023          	sw	zero,0(s3)
80005804:	00100793          	li	a5,1
80005808:	02fc0c63          	beq	s8,a5,80005840 <core_bench_list+0x480>
8000580c:	001a1a13          	sll	s4,s4,0x1
80005810:	000a8413          	mv	s0,s5
80005814:	f3dff06f          	j	80005750 <core_bench_list+0x390>
80005818:	00042903          	lw	s2,0(s0)
8000581c:	d40900e3          	beqz	s2,8000555c <core_bench_list+0x19c>
80005820:	00442783          	lw	a5,4(s0)
80005824:	00048593          	mv	a1,s1
80005828:	00079503          	lh	a0,0(a5)
8000582c:	45c020ef          	jal	80007c88 <crc16>
80005830:	00092903          	lw	s2,0(s2)
80005834:	00050493          	mv	s1,a0
80005838:	d00910e3          	bnez	s2,80005538 <core_bench_list+0x178>
8000583c:	d19ff06f          	j	80005554 <core_bench_list+0x194>
80005840:	000a8413          	mv	s0,s5
80005844:	ca9ff06f          	j	800054ec <core_bench_list+0x12c>
80005848:	00000493          	li	s1,0
8000584c:	00000c93          	li	s9,0
80005850:	c99ff06f          	j	800054e8 <core_bench_list+0x128>
80005854:	00002783          	lw	a5,0(zero) # 0 <__stack_size-0x4000>
80005858:	00100073          	ebreak

8000585c <core_list_init>:
8000585c:	01400793          	li	a5,20
80005860:	02f55533          	divu	a0,a0,a5
80005864:	ffff87b7          	lui	a5,0xffff8
80005868:	0005a023          	sw	zero,0(a1)
8000586c:	08078793          	add	a5,a5,128 # ffff8080 <__stack_base+0x3fff8080>
80005870:	01058813          	add	a6,a1,16
80005874:	00058713          	mv	a4,a1
80005878:	00858693          	add	a3,a1,8
8000587c:	00060f13          	mv	t5,a2
80005880:	ffe50513          	add	a0,a0,-2
80005884:	00351893          	sll	a7,a0,0x3
80005888:	011588b3          	add	a7,a1,a7
8000588c:	0115a223          	sw	a7,4(a1)
80005890:	00251f93          	sll	t6,a0,0x2
80005894:	00089123          	sh	zero,2(a7)
80005898:	00f89023          	sh	a5,0(a7)
8000589c:	01f88fb3          	add	t6,a7,t6
800058a0:	00488593          	add	a1,a7,4
800058a4:	25187e63          	bgeu	a6,a7,80005b00 <core_list_init+0x2a4>
800058a8:	00888313          	add	t1,a7,8
800058ac:	25f37a63          	bgeu	t1,t6,80005b00 <core_list_init+0x2a4>
800058b0:	ffff87b7          	lui	a5,0xffff8
800058b4:	00d72023          	sw	a3,0(a4)
800058b8:	00b72623          	sw	a1,12(a4)
800058bc:	00072423          	sw	zero,8(a4)
800058c0:	00068613          	mv	a2,a3
800058c4:	fff7c793          	not	a5,a5
800058c8:	fff00693          	li	a3,-1
800058cc:	00d89223          	sh	a3,4(a7)
800058d0:	00f89323          	sh	a5,6(a7)
800058d4:	00030593          	mv	a1,t1
800058d8:	00080693          	mv	a3,a6
800058dc:	06050e63          	beqz	a0,80005958 <core_list_init+0xfc>
800058e0:	010f1393          	sll	t2,t5,0x10
800058e4:	ffff82b7          	lui	t0,0xffff8
800058e8:	00868e13          	add	t3,a3,8
800058ec:	0103d393          	srl	t2,t2,0x10
800058f0:	00000813          	li	a6,0
800058f4:	fff2c293          	not	t0,t0
800058f8:	071e7063          	bgeu	t3,a7,80005958 <core_list_init+0xfc>
800058fc:	00458e93          	add	t4,a1,4
80005900:	21fef463          	bgeu	t4,t6,80005b08 <core_list_init+0x2ac>
80005904:	01081313          	sll	t1,a6,0x10
80005908:	01035313          	srl	t1,t1,0x10
8000590c:	007347b3          	xor	a5,t1,t2
80005910:	00379793          	sll	a5,a5,0x3
80005914:	0787f793          	and	a5,a5,120
80005918:	00737313          	and	t1,t1,7
8000591c:	00c6a023          	sw	a2,0(a3)
80005920:	0067e7b3          	or	a5,a5,t1
80005924:	00d72023          	sw	a3,0(a4)
80005928:	00879613          	sll	a2,a5,0x8
8000592c:	00b6a223          	sw	a1,4(a3)
80005930:	00c787b3          	add	a5,a5,a2
80005934:	00f59023          	sh	a5,0(a1)
80005938:	00559123          	sh	t0,2(a1)
8000593c:	00180813          	add	a6,a6,1
80005940:	1b050c63          	beq	a0,a6,80005af8 <core_list_init+0x29c>
80005944:	00068613          	mv	a2,a3
80005948:	000e0693          	mv	a3,t3
8000594c:	00868e13          	add	t3,a3,8
80005950:	000e8593          	mv	a1,t4
80005954:	fb1e64e3          	bltu	t3,a7,800058fc <core_list_init+0xa0>
80005958:	00062583          	lw	a1,0(a2)
8000595c:	06058c63          	beqz	a1,800059d4 <core_list_init+0x178>
80005960:	00500793          	li	a5,5
80005964:	00004337          	lui	t1,0x4
80005968:	02f55533          	divu	a0,a0,a5
8000596c:	00100693          	li	a3,1
80005970:	20000793          	li	a5,512
80005974:	fff30313          	add	t1,t1,-1 # 3fff <__stack_size-0x1>
80005978:	0280006f          	j	800059a0 <core_list_init+0x144>
8000597c:	0005a803          	lw	a6,0(a1)
80005980:	10078793          	add	a5,a5,256 # ffff8100 <__stack_base+0x3fff8100>
80005984:	00d89123          	sh	a3,2(a7)
80005988:	01079793          	sll	a5,a5,0x10
8000598c:	00168693          	add	a3,a3,1
80005990:	0107d793          	srl	a5,a5,0x10
80005994:	04080063          	beqz	a6,800059d4 <core_list_init+0x178>
80005998:	00058613          	mv	a2,a1
8000599c:	00080593          	mv	a1,a6
800059a0:	00462883          	lw	a7,4(a2)
800059a4:	fca6ece3          	bltu	a3,a0,8000597c <core_list_init+0x120>
800059a8:	00df4833          	xor	a6,t5,a3
800059ac:	7007f613          	and	a2,a5,1792
800059b0:	01066633          	or	a2,a2,a6
800059b4:	0005a803          	lw	a6,0(a1)
800059b8:	00667633          	and	a2,a2,t1
800059bc:	10078793          	add	a5,a5,256
800059c0:	01079793          	sll	a5,a5,0x10
800059c4:	00c89123          	sh	a2,2(a7)
800059c8:	00168693          	add	a3,a3,1
800059cc:	0107d793          	srl	a5,a5,0x10
800059d0:	fc0814e3          	bnez	a6,80005998 <core_list_init+0x13c>
800059d4:	00100f93          	li	t6,1
800059d8:	00000813          	li	a6,0
800059dc:	00000513          	li	a0,0
800059e0:	00000293          	li	t0,0
800059e4:	00100393          	li	t2,1
800059e8:	00128293          	add	t0,t0,1 # ffff8001 <__stack_base+0x3fff8001>
800059ec:	00070793          	mv	a5,a4
800059f0:	00000693          	li	a3,0
800059f4:	01f6d863          	bge	a3,t6,80005a04 <core_list_init+0x1a8>
800059f8:	0007a783          	lw	a5,0(a5)
800059fc:	00168693          	add	a3,a3,1
80005a00:	fe079ae3          	bnez	a5,800059f4 <core_list_init+0x198>
80005a04:	000f8593          	mv	a1,t6
80005a08:	02d05263          	blez	a3,80005a2c <core_list_init+0x1d0>
80005a0c:	04059463          	bnez	a1,80005a54 <core_list_init+0x1f8>
80005a10:	00072603          	lw	a2,0(a4)
80005a14:	fff68693          	add	a3,a3,-1
80005a18:	02080a63          	beqz	a6,80005a4c <core_list_init+0x1f0>
80005a1c:	00e82023          	sw	a4,0(a6)
80005a20:	00070813          	mv	a6,a4
80005a24:	00060713          	mv	a4,a2
80005a28:	fed042e3          	bgtz	a3,80005a0c <core_list_init+0x1b0>
80005a2c:	08b05663          	blez	a1,80005ab8 <core_list_init+0x25c>
80005a30:	08078a63          	beqz	a5,80005ac4 <core_list_init+0x268>
80005a34:	02069263          	bnez	a3,80005a58 <core_list_init+0x1fc>
80005a38:	00070613          	mv	a2,a4
80005a3c:	fff58593          	add	a1,a1,-1
80005a40:	00078713          	mv	a4,a5
80005a44:	0007a783          	lw	a5,0(a5)
80005a48:	fc081ae3          	bnez	a6,80005a1c <core_list_init+0x1c0>
80005a4c:	00070513          	mv	a0,a4
80005a50:	fd1ff06f          	j	80005a20 <core_list_init+0x1c4>
80005a54:	fa078ee3          	beqz	a5,80005a10 <core_list_init+0x1b4>
80005a58:	00472303          	lw	t1,4(a4)
80005a5c:	0047a883          	lw	a7,4(a5)
80005a60:	00031603          	lh	a2,0(t1)
80005a64:	00289e83          	lh	t4,2(a7)
80005a68:	00231f03          	lh	t5,2(t1)
80005a6c:	01061e13          	sll	t3,a2,0x10
80005a70:	010e5e13          	srl	t3,t3,0x10
80005a74:	f0067613          	and	a2,a2,-256
80005a78:	008e5e13          	srl	t3,t3,0x8
80005a7c:	01c66633          	or	a2,a2,t3
80005a80:	00c31023          	sh	a2,0(t1)
80005a84:	00089603          	lh	a2,0(a7)
80005a88:	01061313          	sll	t1,a2,0x10
80005a8c:	01035313          	srl	t1,t1,0x10
80005a90:	f0067613          	and	a2,a2,-256
80005a94:	00835313          	srl	t1,t1,0x8
80005a98:	00666633          	or	a2,a2,t1
80005a9c:	00c89023          	sh	a2,0(a7)
80005aa0:	f7eed8e3          	bge	t4,t5,80005a10 <core_list_init+0x1b4>
80005aa4:	00070613          	mv	a2,a4
80005aa8:	fff58593          	add	a1,a1,-1
80005aac:	00078713          	mv	a4,a5
80005ab0:	0007a783          	lw	a5,0(a5)
80005ab4:	f65ff06f          	j	80005a18 <core_list_init+0x1bc>
80005ab8:	00078663          	beqz	a5,80005ac4 <core_list_init+0x268>
80005abc:	00078713          	mv	a4,a5
80005ac0:	f29ff06f          	j	800059e8 <core_list_init+0x18c>
80005ac4:	00082023          	sw	zero,0(a6)
80005ac8:	02728263          	beq	t0,t2,80005aec <core_list_init+0x290>
80005acc:	001f9f93          	sll	t6,t6,0x1
80005ad0:	02050063          	beqz	a0,80005af0 <core_list_init+0x294>
80005ad4:	00050793          	mv	a5,a0
80005ad8:	00000813          	li	a6,0
80005adc:	00000513          	li	a0,0
80005ae0:	00000293          	li	t0,0
80005ae4:	00078713          	mv	a4,a5
80005ae8:	f01ff06f          	j	800059e8 <core_list_init+0x18c>
80005aec:	00008067          	ret
80005af0:	00002023          	sw	zero,0(zero) # 0 <__stack_size-0x4000>
80005af4:	00100073          	ebreak
80005af8:	00068613          	mv	a2,a3
80005afc:	e5dff06f          	j	80005958 <core_list_init+0xfc>
80005b00:	00000613          	li	a2,0
80005b04:	dd9ff06f          	j	800058dc <core_list_init+0x80>
80005b08:	00180813          	add	a6,a6,1
80005b0c:	e50506e3          	beq	a0,a6,80005958 <core_list_init+0xfc>
80005b10:	00068e13          	mv	t3,a3
80005b14:	00058e93          	mv	t4,a1
80005b18:	00060693          	mv	a3,a2
80005b1c:	e29ff06f          	j	80005944 <core_list_init+0xe8>

80005b20 <iterate>:
80005b20:	ff010113          	add	sp,sp,-16
80005b24:	01212023          	sw	s2,0(sp)
80005b28:	01c52903          	lw	s2,28(a0)
80005b2c:	00112623          	sw	ra,12(sp)
80005b30:	02052c23          	sw	zero,56(a0)
80005b34:	02052e23          	sw	zero,60(a0)
80005b38:	04090c63          	beqz	s2,80005b90 <iterate+0x70>
80005b3c:	00812423          	sw	s0,8(sp)
80005b40:	00912223          	sw	s1,4(sp)
80005b44:	00050413          	mv	s0,a0
80005b48:	00000493          	li	s1,0
80005b4c:	00100593          	li	a1,1
80005b50:	00040513          	mv	a0,s0
80005b54:	86dff0ef          	jal	800053c0 <core_bench_list>
80005b58:	03845583          	lhu	a1,56(s0)
80005b5c:	249010ef          	jal	800075a4 <crcu16>
80005b60:	02a41c23          	sh	a0,56(s0)
80005b64:	fff00593          	li	a1,-1
80005b68:	00040513          	mv	a0,s0
80005b6c:	855ff0ef          	jal	800053c0 <core_bench_list>
80005b70:	03845583          	lhu	a1,56(s0)
80005b74:	231010ef          	jal	800075a4 <crcu16>
80005b78:	02a41c23          	sh	a0,56(s0)
80005b7c:	02048463          	beqz	s1,80005ba4 <iterate+0x84>
80005b80:	00148493          	add	s1,s1,1
80005b84:	fc9914e3          	bne	s2,s1,80005b4c <iterate+0x2c>
80005b88:	00812403          	lw	s0,8(sp)
80005b8c:	00412483          	lw	s1,4(sp)
80005b90:	00c12083          	lw	ra,12(sp)
80005b94:	00012903          	lw	s2,0(sp)
80005b98:	00000513          	li	a0,0
80005b9c:	01010113          	add	sp,sp,16
80005ba0:	00008067          	ret
80005ba4:	02a41d23          	sh	a0,58(s0)
80005ba8:	00100793          	li	a5,1
80005bac:	fcf90ee3          	beq	s2,a5,80005b88 <iterate+0x68>
80005bb0:	00100493          	li	s1,1
80005bb4:	f99ff06f          	j	80005b4c <iterate+0x2c>

80005bb8 <main>:
80005bb8:	81010113          	add	sp,sp,-2032
80005bbc:	00001737          	lui	a4,0x1
80005bc0:	7e112623          	sw	ra,2028(sp)
80005bc4:	7e812423          	sw	s0,2024(sp)
80005bc8:	7e912223          	sw	s1,2020(sp)
80005bcc:	7f212023          	sw	s2,2016(sp)
80005bd0:	7d312e23          	sw	s3,2012(sp)
80005bd4:	7d412c23          	sw	s4,2008(sp)
80005bd8:	7d512a23          	sw	s5,2004(sp)
80005bdc:	7d612823          	sw	s6,2000(sp)
80005be0:	7d712623          	sw	s7,1996(sp)
80005be4:	7d812423          	sw	s8,1992(sp)
80005be8:	7d912223          	sw	s9,1988(sp)
80005bec:	7da12023          	sw	s10,1984(sp)
80005bf0:	7bb12e23          	sw	s11,1980(sp)
80005bf4:	82070693          	add	a3,a4,-2016 # 820 <__stack_size-0x37e0>
80005bf8:	f7010113          	add	sp,sp,-144
80005bfc:	fffff7b7          	lui	a5,0xfffff
80005c00:	00f686b3          	add	a3,a3,a5
80005c04:	02010793          	add	a5,sp,32
80005c08:	00f687b3          	add	a5,a3,a5
80005c0c:	fffff637          	lui	a2,0xfffff
80005c10:	00f12623          	sw	a5,12(sp)
80005c14:	7e860613          	add	a2,a2,2024 # fffff7e8 <__stack_base+0x3ffff7e8>
80005c18:	82070793          	add	a5,a4,-2016
80005c1c:	02010693          	add	a3,sp,32
80005c20:	00c787b3          	add	a5,a5,a2
80005c24:	fffff5b7          	lui	a1,0xfffff
80005c28:	00d78633          	add	a2,a5,a3
80005c2c:	7e458593          	add	a1,a1,2020 # fffff7e4 <__stack_base+0x3ffff7e4>
80005c30:	82070793          	add	a5,a4,-2016
80005c34:	00b787b3          	add	a5,a5,a1
80005c38:	00d785b3          	add	a1,a5,a3
80005c3c:	00c12783          	lw	a5,12(sp)
80005c40:	06e10513          	add	a0,sp,110
80005c44:	7e07a223          	sw	zero,2020(a5) # fffff7e4 <__stack_base+0x3ffff7e4>
80005c48:	340020ef          	jal	80007f88 <portable_init>
80005c4c:	00100513          	li	a0,1
80005c50:	0f1010ef          	jal	80007540 <get_seed_32>
80005c54:	00c12703          	lw	a4,12(sp)
80005c58:	00050793          	mv	a5,a0
80005c5c:	00200513          	li	a0,2
80005c60:	7ef71623          	sh	a5,2028(a4)
80005c64:	0dd010ef          	jal	80007540 <get_seed_32>
80005c68:	00c12703          	lw	a4,12(sp)
80005c6c:	00050793          	mv	a5,a0
80005c70:	00300513          	li	a0,3
80005c74:	7ef71723          	sh	a5,2030(a4)
80005c78:	0c9010ef          	jal	80007540 <get_seed_32>
80005c7c:	00c12703          	lw	a4,12(sp)
80005c80:	00050793          	mv	a5,a0
80005c84:	00400513          	li	a0,4
80005c88:	7ef71823          	sh	a5,2032(a4)
80005c8c:	0b5010ef          	jal	80007540 <get_seed_32>
80005c90:	00050793          	mv	a5,a0
80005c94:	00500513          	li	a0,5
80005c98:	04f12423          	sw	a5,72(sp)
80005c9c:	0a5010ef          	jal	80007540 <get_seed_32>
80005ca0:	00051463          	bnez	a0,80005ca8 <main+0xf0>
80005ca4:	00700513          	li	a0,7
80005ca8:	00001737          	lui	a4,0x1
80005cac:	fffff7b7          	lui	a5,0xfffff
80005cb0:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
80005cb4:	00f70733          	add	a4,a4,a5
80005cb8:	02010793          	add	a5,sp,32
80005cbc:	00f707b3          	add	a5,a4,a5
80005cc0:	00f12623          	sw	a5,12(sp)
80005cc4:	7ec7a783          	lw	a5,2028(a5) # fffff7ec <__stack_base+0x3ffff7ec>
80005cc8:	04a12623          	sw	a0,76(sp)
80005ccc:	34079e63          	bnez	a5,80006028 <main+0x470>
80005cd0:	00c12783          	lw	a5,12(sp)
80005cd4:	7f079783          	lh	a5,2032(a5)
80005cd8:	54078063          	beqz	a5,80006218 <main+0x660>
80005cdc:	000015b7          	lui	a1,0x1
80005ce0:	fffff637          	lui	a2,0xfffff
80005ce4:	82058593          	add	a1,a1,-2016 # 820 <__stack_size-0x37e0>
80005ce8:	00c585b3          	add	a1,a1,a2
80005cec:	02010613          	add	a2,sp,32
80005cf0:	00c58633          	add	a2,a1,a2
80005cf4:	00257693          	and	a3,a0,2
80005cf8:	07010593          	add	a1,sp,112
80005cfc:	00157713          	and	a4,a0,1
80005d00:	00d037b3          	snez	a5,a3
80005d04:	00c12623          	sw	a2,12(sp)
80005d08:	7eb62a23          	sw	a1,2036(a2) # fffff7f4 <__stack_base+0x3ffff7f4>
80005d0c:	06011623          	sh	zero,108(sp)
80005d10:	00457613          	and	a2,a0,4
80005d14:	00f707b3          	add	a5,a4,a5
80005d18:	2e061263          	bnez	a2,80005ffc <main+0x444>
80005d1c:	7d000593          	li	a1,2000
80005d20:	02f5d5b3          	divu	a1,a1,a5
80005d24:	fffff837          	lui	a6,0xfffff
80005d28:	04b12223          	sw	a1,68(sp)
80005d2c:	52071263          	bnez	a4,80006250 <main+0x698>
80005d30:	4e069c63          	bnez	a3,80006228 <main+0x670>
80005d34:	000016b7          	lui	a3,0x1
80005d38:	fffff737          	lui	a4,0xfffff
80005d3c:	04c12783          	lw	a5,76(sp)
80005d40:	82068693          	add	a3,a3,-2016 # 820 <__stack_size-0x37e0>
80005d44:	00e686b3          	add	a3,a3,a4
80005d48:	02010713          	add	a4,sp,32
80005d4c:	00e68733          	add	a4,a3,a4
80005d50:	00e12623          	sw	a4,12(sp)
80005d54:	0017f713          	and	a4,a5,1
80005d58:	02070063          	beqz	a4,80005d78 <main+0x1c0>
80005d5c:	00c12783          	lw	a5,12(sp)
80005d60:	04412503          	lw	a0,68(sp)
80005d64:	7ec79603          	lh	a2,2028(a5)
80005d68:	7f87a583          	lw	a1,2040(a5)
80005d6c:	af1ff0ef          	jal	8000585c <core_list_init>
80005d70:	04c12783          	lw	a5,76(sp)
80005d74:	04a12823          	sw	a0,80(sp)
80005d78:	0027f713          	and	a4,a5,2
80005d7c:	22071863          	bnez	a4,80005fac <main+0x3f4>
80005d80:	0047f793          	and	a5,a5,4
80005d84:	02078863          	beqz	a5,80005db4 <main+0x1fc>
80005d88:	00001737          	lui	a4,0x1
80005d8c:	fffff7b7          	lui	a5,0xfffff
80005d90:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
80005d94:	00f70733          	add	a4,a4,a5
80005d98:	02010793          	add	a5,sp,32
80005d9c:	00f707b3          	add	a5,a4,a5
80005da0:	04012603          	lw	a2,64(sp)
80005da4:	7ec79583          	lh	a1,2028(a5) # fffff7ec <__stack_base+0x3ffff7ec>
80005da8:	04412503          	lw	a0,68(sp)
80005dac:	00f12623          	sw	a5,12(sp)
80005db0:	058010ef          	jal	80006e08 <core_init_state>
80005db4:	04812783          	lw	a5,72(sp)
80005db8:	0e079663          	bnez	a5,80005ea4 <main+0x2ec>
80005dbc:	a00017b7          	lui	a5,0xa0001
80005dc0:	e607a903          	lw	s2,-416(a5) # a0000e60 <intpat+0x98>
80005dc4:	e647a983          	lw	s3,-412(a5)
80005dc8:	00100793          	li	a5,1
80005dcc:	fffff4b7          	lui	s1,0xfffff
80005dd0:	04f12423          	sw	a5,72(sp)
80005dd4:	000017b7          	lui	a5,0x1
80005dd8:	7ec48493          	add	s1,s1,2028 # fffff7ec <__stack_base+0x3ffff7ec>
80005ddc:	82078793          	add	a5,a5,-2016 # 820 <__stack_size-0x37e0>
80005de0:	009787b3          	add	a5,a5,s1
80005de4:	02010713          	add	a4,sp,32
80005de8:	00e784b3          	add	s1,a5,a4
80005dec:	04812703          	lw	a4,72(sp)
80005df0:	00000413          	li	s0,0
80005df4:	00271793          	sll	a5,a4,0x2
80005df8:	00e787b3          	add	a5,a5,a4
80005dfc:	00179793          	sll	a5,a5,0x1
80005e00:	04f12423          	sw	a5,72(sp)
80005e04:	0e0020ef          	jal	80007ee4 <start_time>
80005e08:	04812a03          	lw	s4,72(sp)
80005e0c:	06012223          	sw	zero,100(sp)
80005e10:	06012423          	sw	zero,104(sp)
80005e14:	040a0263          	beqz	s4,80005e58 <main+0x2a0>
80005e18:	00100593          	li	a1,1
80005e1c:	00048513          	mv	a0,s1
80005e20:	da0ff0ef          	jal	800053c0 <core_bench_list>
80005e24:	06415583          	lhu	a1,100(sp)
80005e28:	77c010ef          	jal	800075a4 <crcu16>
80005e2c:	00050793          	mv	a5,a0
80005e30:	fff00593          	li	a1,-1
80005e34:	00048513          	mv	a0,s1
80005e38:	06f11223          	sh	a5,100(sp)
80005e3c:	d84ff0ef          	jal	800053c0 <core_bench_list>
80005e40:	06415583          	lhu	a1,100(sp)
80005e44:	760010ef          	jal	800075a4 <crcu16>
80005e48:	06a11223          	sh	a0,100(sp)
80005e4c:	14040663          	beqz	s0,80005f98 <main+0x3e0>
80005e50:	00140413          	add	s0,s0,1
80005e54:	fc8a12e3          	bne	s4,s0,80005e18 <main+0x260>
80005e58:	0b4020ef          	jal	80007f0c <stop_time>
80005e5c:	0d8020ef          	jal	80007f34 <get_time>
80005e60:	100020ef          	jal	80007f60 <time_in_secs>
80005e64:	00090613          	mv	a2,s2
80005e68:	00098693          	mv	a3,s3
80005e6c:	00050a13          	mv	s4,a0
80005e70:	00058413          	mv	s0,a1
80005e74:	b81fb0ef          	jal	800019f4 <__ledf2>
80005e78:	f6054ae3          	bltz	a0,80005dec <main+0x234>
80005e7c:	000a0513          	mv	a0,s4
80005e80:	00040593          	mv	a1,s0
80005e84:	a65fc0ef          	jal	800028e8 <__fixunsdfsi>
80005e88:	38050463          	beqz	a0,80006210 <main+0x658>
80005e8c:	00a00793          	li	a5,10
80005e90:	02a7d7b3          	divu	a5,a5,a0
80005e94:	04812703          	lw	a4,72(sp)
80005e98:	00178793          	add	a5,a5,1
80005e9c:	02e787b3          	mul	a5,a5,a4
80005ea0:	04f12423          	sw	a5,72(sp)
80005ea4:	040020ef          	jal	80007ee4 <start_time>
80005ea8:	00001437          	lui	s0,0x1
80005eac:	fffff537          	lui	a0,0xfffff
80005eb0:	7ec50513          	add	a0,a0,2028 # fffff7ec <__stack_base+0x3ffff7ec>
80005eb4:	82040793          	add	a5,s0,-2016 # 820 <__stack_size-0x37e0>
80005eb8:	00a787b3          	add	a5,a5,a0
80005ebc:	02010713          	add	a4,sp,32
80005ec0:	00e78533          	add	a0,a5,a4
80005ec4:	c5dff0ef          	jal	80005b20 <iterate>
80005ec8:	044020ef          	jal	80007f0c <stop_time>
80005ecc:	068020ef          	jal	80007f34 <get_time>
80005ed0:	fffff7b7          	lui	a5,0xfffff
80005ed4:	82040713          	add	a4,s0,-2016
80005ed8:	00f70733          	add	a4,a4,a5
80005edc:	02010793          	add	a5,sp,32
80005ee0:	00f707b3          	add	a5,a4,a5
80005ee4:	00050493          	mv	s1,a0
80005ee8:	7ec79503          	lh	a0,2028(a5) # fffff7ec <__stack_base+0x3ffff7ec>
80005eec:	00058913          	mv	s2,a1
80005ef0:	00000593          	li	a1,0
80005ef4:	00f12623          	sw	a5,12(sp)
80005ef8:	00912a23          	sw	s1,20(sp)
80005efc:	01212c23          	sw	s2,24(sp)
80005f00:	589010ef          	jal	80007c88 <crc16>
80005f04:	00c12783          	lw	a5,12(sp)
80005f08:	00050593          	mv	a1,a0
80005f0c:	7ee79503          	lh	a0,2030(a5)
80005f10:	579010ef          	jal	80007c88 <crc16>
80005f14:	00c12783          	lw	a5,12(sp)
80005f18:	00050593          	mv	a1,a0
80005f1c:	7f079503          	lh	a0,2032(a5)
80005f20:	569010ef          	jal	80007c88 <crc16>
80005f24:	00050593          	mv	a1,a0
80005f28:	04411503          	lh	a0,68(sp)
80005f2c:	55d010ef          	jal	80007c88 <crc16>
80005f30:	000087b7          	lui	a5,0x8
80005f34:	b0578793          	add	a5,a5,-1275 # 7b05 <__stack_size+0x3b05>
80005f38:	00050413          	mv	s0,a0
80005f3c:	74f50c63          	beq	a0,a5,80006694 <main+0xadc>
80005f40:	10a7fc63          	bgeu	a5,a0,80006058 <main+0x4a0>
80005f44:	000097b7          	lui	a5,0x9
80005f48:	a0278793          	add	a5,a5,-1534 # 8a02 <__stack_size+0x4a02>
80005f4c:	7af50e63          	beq	a0,a5,80006708 <main+0xb50>
80005f50:	0000f7b7          	lui	a5,0xf
80005f54:	9f578793          	add	a5,a5,-1547 # e9f5 <__stack_size+0xa9f5>
80005f58:	32f51463          	bne	a0,a5,80006280 <main+0x6c8>
80005f5c:	a0000537          	lui	a0,0xa0000
80005f60:	78c50513          	add	a0,a0,1932 # a000078c <__clz_tab+0x750>
80005f64:	a14ff0ef          	jal	80005178 <printf_>
80005f68:	00009a37          	lui	s4,0x9
80005f6c:	00002ab7          	lui	s5,0x2
80005f70:	0000e9b7          	lui	s3,0xe
80005f74:	e3aa0a13          	add	s4,s4,-454 # 8e3a <__stack_size+0x4e3a>
80005f78:	fd7a8a93          	add	s5,s5,-41 # 1fd7 <__stack_size-0x2029>
80005f7c:	71498993          	add	s3,s3,1812 # e714 <__stack_size+0xa714>
80005f80:	00300793          	li	a5,3
80005f84:	000a0c13          	mv	s8,s4
80005f88:	000a8b93          	mv	s7,s5
80005f8c:	00098b13          	mv	s6,s3
80005f90:	00f12e23          	sw	a5,28(sp)
80005f94:	1140006f          	j	800060a8 <main+0x4f0>
80005f98:	06a11323          	sh	a0,102(sp)
80005f9c:	00100793          	li	a5,1
80005fa0:	eafa0ce3          	beq	s4,a5,80005e58 <main+0x2a0>
80005fa4:	00100413          	li	s0,1
80005fa8:	e71ff06f          	j	80005e18 <main+0x260>
80005fac:	00001737          	lui	a4,0x1
80005fb0:	fffff7b7          	lui	a5,0xfffff
80005fb4:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
80005fb8:	00f70733          	add	a4,a4,a5
80005fbc:	02010793          	add	a5,sp,32
80005fc0:	00f707b3          	add	a5,a4,a5
80005fc4:	00f12623          	sw	a5,12(sp)
80005fc8:	00c12703          	lw	a4,12(sp)
80005fcc:	7ee79783          	lh	a5,2030(a5) # fffff7ee <__stack_base+0x3ffff7ee>
80005fd0:	04412503          	lw	a0,68(sp)
80005fd4:	7ec71603          	lh	a2,2028(a4)
80005fd8:	7fc72583          	lw	a1,2044(a4)
80005fdc:	01079793          	sll	a5,a5,0x10
80005fe0:	00c7e633          	or	a2,a5,a2
80005fe4:	05410693          	add	a3,sp,84
80005fe8:	4cd000ef          	jal	80006cb4 <core_init_matrix>
80005fec:	04c12783          	lw	a5,76(sp)
80005ff0:	0047f793          	and	a5,a5,4
80005ff4:	d8079ae3          	bnez	a5,80005d88 <main+0x1d0>
80005ff8:	dbdff06f          	j	80005db4 <main+0x1fc>
80005ffc:	00178813          	add	a6,a5,1
80006000:	7d000593          	li	a1,2000
80006004:	0305d5b3          	divu	a1,a1,a6
80006008:	04b12223          	sw	a1,68(sp)
8000600c:	24071263          	bnez	a4,80006250 <main+0x698>
80006010:	74069263          	bnez	a3,80006754 <main+0xb9c>
80006014:	02b787b3          	mul	a5,a5,a1
80006018:	07010713          	add	a4,sp,112
8000601c:	00f707b3          	add	a5,a4,a5
80006020:	04f12023          	sw	a5,64(sp)
80006024:	d11ff06f          	j	80005d34 <main+0x17c>
80006028:	00100713          	li	a4,1
8000602c:	cae798e3          	bne	a5,a4,80005cdc <main+0x124>
80006030:	00c12783          	lw	a5,12(sp)
80006034:	7f079783          	lh	a5,2032(a5)
80006038:	ca0792e3          	bnez	a5,80005cdc <main+0x124>
8000603c:	00c12703          	lw	a4,12(sp)
80006040:	341537b7          	lui	a5,0x34153
80006044:	41578793          	add	a5,a5,1045 # 34153415 <__stack_size+0x3414f415>
80006048:	7ef72623          	sw	a5,2028(a4)
8000604c:	06600793          	li	a5,102
80006050:	7ef71823          	sh	a5,2032(a4)
80006054:	c89ff06f          	j	80005cdc <main+0x124>
80006058:	000027b7          	lui	a5,0x2
8000605c:	8f278793          	add	a5,a5,-1806 # 18f2 <__stack_size-0x270e>
80006060:	66f50863          	beq	a0,a5,800066d0 <main+0xb18>
80006064:	000057b7          	lui	a5,0x5
80006068:	eaf78793          	add	a5,a5,-337 # 4eaf <__stack_size+0xeaf>
8000606c:	20f51a63          	bne	a0,a5,80006280 <main+0x6c8>
80006070:	a0000537          	lui	a0,0xa0000
80006074:	75850513          	add	a0,a0,1880 # a0000758 <__clz_tab+0x71c>
80006078:	900ff0ef          	jal	80005178 <printf_>
8000607c:	0000ea37          	lui	s4,0xe
80006080:	00005ab7          	lui	s5,0x5
80006084:	000079b7          	lui	s3,0x7
80006088:	5a4a0a13          	add	s4,s4,1444 # e5a4 <__stack_size+0xa5a4>
8000608c:	608a8a93          	add	s5,s5,1544 # 5608 <__stack_size+0x1608>
80006090:	a7998993          	add	s3,s3,-1415 # 6a79 <__stack_size+0x2a79>
80006094:	00200793          	li	a5,2
80006098:	000a0c13          	mv	s8,s4
8000609c:	000a8b93          	mv	s7,s5
800060a0:	00098b13          	mv	s6,s3
800060a4:	00f12e23          	sw	a5,28(sp)
800060a8:	a0001cb7          	lui	s9,0xa0001
800060ac:	e8cca783          	lw	a5,-372(s9) # a0000e8c <default_num_contexts>
800060b0:	68078863          	beqz	a5,80006740 <main+0xb88>
800060b4:	00001737          	lui	a4,0x1
800060b8:	fffff7b7          	lui	a5,0xfffff
800060bc:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
800060c0:	00f70733          	add	a4,a4,a5
800060c4:	02010793          	add	a5,sp,32
800060c8:	00f707b3          	add	a5,a4,a5
800060cc:	00000913          	li	s2,0
800060d0:	00000d93          	li	s11,0
800060d4:	00f12623          	sw	a5,12(sp)
800060d8:	00001d37          	lui	s10,0x1
800060dc:	0640006f          	j	80006140 <main+0x588>
800060e0:	82a7d603          	lhu	a2,-2006(a5) # ffffe82a <__stack_base+0x3fffe82a>
800060e4:	13860263          	beq	a2,s8,80006208 <main+0x650>
800060e8:	00f12823          	sw	a5,16(sp)
800060ec:	a00017b7          	lui	a5,0xa0001
800060f0:	84c78513          	add	a0,a5,-1972 # a000084c <__clz_tab+0x810>
800060f4:	000a0693          	mv	a3,s4
800060f8:	000d8593          	mv	a1,s11
800060fc:	87cff0ef          	jal	80005178 <printf_>
80006100:	01012783          	lw	a5,16(sp)
80006104:	82c7d703          	lhu	a4,-2004(a5)
80006108:	00170713          	add	a4,a4,1
8000610c:	01071713          	sll	a4,a4,0x10
80006110:	01075713          	srl	a4,a4,0x10
80006114:	82e79623          	sh	a4,-2004(a5)
80006118:	001d8593          	add	a1,s11,1
8000611c:	e8cca683          	lw	a3,-372(s9)
80006120:	012707b3          	add	a5,a4,s2
80006124:	01059d93          	sll	s11,a1,0x10
80006128:	01079713          	sll	a4,a5,0x10
8000612c:	01079913          	sll	s2,a5,0x10
80006130:	010ddd93          	srl	s11,s11,0x10
80006134:	01075713          	srl	a4,a4,0x10
80006138:	41095913          	sra	s2,s2,0x10
8000613c:	14ddfc63          	bgeu	s11,a3,80006294 <main+0x6dc>
80006140:	00c12783          	lw	a5,12(sp)
80006144:	004d9493          	sll	s1,s11,0x4
80006148:	01b48733          	add	a4,s1,s11
8000614c:	00271713          	sll	a4,a4,0x2
80006150:	00e78733          	add	a4,a5,a4
80006154:	00ed0733          	add	a4,s10,a4
80006158:	80c72683          	lw	a3,-2036(a4)
8000615c:	82071623          	sh	zero,-2004(a4)
80006160:	0016f613          	and	a2,a3,1
80006164:	02060c63          	beqz	a2,8000619c <main+0x5e4>
80006168:	82675603          	lhu	a2,-2010(a4)
8000616c:	00e12823          	sw	a4,16(sp)
80006170:	03660663          	beq	a2,s6,8000619c <main+0x5e4>
80006174:	a00007b7          	lui	a5,0xa0000
80006178:	00098693          	mv	a3,s3
8000617c:	000d8593          	mv	a1,s11
80006180:	7e878513          	add	a0,a5,2024 # a00007e8 <__clz_tab+0x7ac>
80006184:	ff5fe0ef          	jal	80005178 <printf_>
80006188:	01012703          	lw	a4,16(sp)
8000618c:	82c75603          	lhu	a2,-2004(a4)
80006190:	80c72683          	lw	a3,-2036(a4)
80006194:	00160613          	add	a2,a2,1
80006198:	82c71623          	sh	a2,-2004(a4)
8000619c:	0026f713          	and	a4,a3,2
800061a0:	04070663          	beqz	a4,800061ec <main+0x634>
800061a4:	00c12783          	lw	a5,12(sp)
800061a8:	01b48733          	add	a4,s1,s11
800061ac:	00271713          	sll	a4,a4,0x2
800061b0:	00e78733          	add	a4,a5,a4
800061b4:	00ed0733          	add	a4,s10,a4
800061b8:	82875603          	lhu	a2,-2008(a4)
800061bc:	00e12823          	sw	a4,16(sp)
800061c0:	03760663          	beq	a2,s7,800061ec <main+0x634>
800061c4:	a00017b7          	lui	a5,0xa0001
800061c8:	000a8693          	mv	a3,s5
800061cc:	000d8593          	mv	a1,s11
800061d0:	81878513          	add	a0,a5,-2024 # a0000818 <__clz_tab+0x7dc>
800061d4:	fa5fe0ef          	jal	80005178 <printf_>
800061d8:	01012703          	lw	a4,16(sp)
800061dc:	82c75603          	lhu	a2,-2004(a4)
800061e0:	80c72683          	lw	a3,-2036(a4)
800061e4:	00160613          	add	a2,a2,1
800061e8:	82c71623          	sh	a2,-2004(a4)
800061ec:	00c12703          	lw	a4,12(sp)
800061f0:	01b487b3          	add	a5,s1,s11
800061f4:	00279793          	sll	a5,a5,0x2
800061f8:	00f707b3          	add	a5,a4,a5
800061fc:	0046f693          	and	a3,a3,4
80006200:	00fd07b3          	add	a5,s10,a5
80006204:	ec069ee3          	bnez	a3,800060e0 <main+0x528>
80006208:	82c7d703          	lhu	a4,-2004(a5)
8000620c:	f0dff06f          	j	80006118 <main+0x560>
80006210:	00100513          	li	a0,1
80006214:	c79ff06f          	j	80005e8c <main+0x2d4>
80006218:	00c12703          	lw	a4,12(sp)
8000621c:	06600793          	li	a5,102
80006220:	7ef71823          	sh	a5,2032(a4)
80006224:	ab9ff06f          	j	80005cdc <main+0x124>
80006228:	02b707b3          	mul	a5,a4,a1
8000622c:	07010713          	add	a4,sp,112
80006230:	02010693          	add	a3,sp,32
80006234:	00f707b3          	add	a5,a4,a5
80006238:	00001737          	lui	a4,0x1
8000623c:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
80006240:	01070733          	add	a4,a4,a6
80006244:	00d70733          	add	a4,a4,a3
80006248:	7ef72e23          	sw	a5,2044(a4)
8000624c:	ae9ff06f          	j	80005d34 <main+0x17c>
80006250:	00001837          	lui	a6,0x1
80006254:	fffff537          	lui	a0,0xfffff
80006258:	82080813          	add	a6,a6,-2016 # 820 <__stack_size-0x37e0>
8000625c:	00a80833          	add	a6,a6,a0
80006260:	02010513          	add	a0,sp,32
80006264:	00a80533          	add	a0,a6,a0
80006268:	07010813          	add	a6,sp,112
8000626c:	00a12623          	sw	a0,12(sp)
80006270:	7f052c23          	sw	a6,2040(a0) # fffff7f8 <__stack_base+0x3ffff7f8>
80006274:	4e069063          	bnez	a3,80006754 <main+0xb9c>
80006278:	d8061ee3          	bnez	a2,80006014 <main+0x45c>
8000627c:	ab9ff06f          	j	80005d34 <main+0x17c>
80006280:	00010737          	lui	a4,0x10
80006284:	fff00793          	li	a5,-1
80006288:	fff70713          	add	a4,a4,-1 # ffff <__stack_size+0xbfff>
8000628c:	00f12e23          	sw	a5,28(sp)
80006290:	a0001cb7          	lui	s9,0xa0001
80006294:	00e12623          	sw	a4,12(sp)
80006298:	445010ef          	jal	80007edc <check_data_types>
8000629c:	00c12703          	lw	a4,12(sp)
800062a0:	04412583          	lw	a1,68(sp)
800062a4:	00e509b3          	add	s3,a0,a4
800062a8:	a0001537          	lui	a0,0xa0001
800062ac:	87c50513          	add	a0,a0,-1924 # a000087c <__clz_tab+0x840>
800062b0:	ec9fe0ef          	jal	80005178 <printf_>
800062b4:	01412483          	lw	s1,20(sp)
800062b8:	a0001537          	lui	a0,0xa0001
800062bc:	89450513          	add	a0,a0,-1900 # a0000894 <__clz_tab+0x858>
800062c0:	00048593          	mv	a1,s1
800062c4:	eb5fe0ef          	jal	80005178 <printf_>
800062c8:	01812903          	lw	s2,24(sp)
800062cc:	00048513          	mv	a0,s1
800062d0:	01099993          	sll	s3,s3,0x10
800062d4:	00090593          	mv	a1,s2
800062d8:	489010ef          	jal	80007f60 <time_in_secs>
800062dc:	00050613          	mv	a2,a0
800062e0:	a0001537          	lui	a0,0xa0001
800062e4:	00058693          	mv	a3,a1
800062e8:	8ac50513          	add	a0,a0,-1876 # a00008ac <__clz_tab+0x870>
800062ec:	e8dfe0ef          	jal	80005178 <printf_>
800062f0:	00048513          	mv	a0,s1
800062f4:	00090593          	mv	a1,s2
800062f8:	469010ef          	jal	80007f60 <time_in_secs>
800062fc:	00000613          	li	a2,0
80006300:	00000693          	li	a3,0
80006304:	4109d993          	sra	s3,s3,0x10
80006308:	e10fb0ef          	jal	80001918 <__gedf2>
8000630c:	04a05863          	blez	a0,8000635c <main+0x7a4>
80006310:	e8cca783          	lw	a5,-372(s9) # a0000e8c <default_num_contexts>
80006314:	04812503          	lw	a0,72(sp)
80006318:	02f50533          	mul	a0,a0,a5
8000631c:	ef0fc0ef          	jal	80002a0c <__floatunsidf>
80006320:	00050a93          	mv	s5,a0
80006324:	00058a13          	mv	s4,a1
80006328:	00048513          	mv	a0,s1
8000632c:	00090593          	mv	a1,s2
80006330:	431010ef          	jal	80007f60 <time_in_secs>
80006334:	00050613          	mv	a2,a0
80006338:	00058693          	mv	a3,a1
8000633c:	000a8513          	mv	a0,s5
80006340:	000a0593          	mv	a1,s4
80006344:	e6dfa0ef          	jal	800011b0 <__divdf3>
80006348:	00050613          	mv	a2,a0
8000634c:	a0001537          	lui	a0,0xa0001
80006350:	00058693          	mv	a3,a1
80006354:	8c450513          	add	a0,a0,-1852 # a00008c4 <__clz_tab+0x888>
80006358:	e21fe0ef          	jal	80005178 <printf_>
8000635c:	e8cca783          	lw	a5,-372(s9)
80006360:	04812583          	lw	a1,72(sp)
80006364:	a0001537          	lui	a0,0xa0001
80006368:	8dc50513          	add	a0,a0,-1828 # a00008dc <__clz_tab+0x8a0>
8000636c:	02f585b3          	mul	a1,a1,a5
80006370:	a0001a37          	lui	s4,0xa0001
80006374:	a0001ab7          	lui	s5,0xa0001
80006378:	a0001b37          	lui	s6,0xa0001
8000637c:	dfdfe0ef          	jal	80005178 <printf_>
80006380:	a0001537          	lui	a0,0xa0001
80006384:	8f4a0593          	add	a1,s4,-1804 # a00008f4 <__clz_tab+0x8b8>
80006388:	90050513          	add	a0,a0,-1792 # a0000900 <__clz_tab+0x8c4>
8000638c:	dedfe0ef          	jal	80005178 <printf_>
80006390:	a0001537          	lui	a0,0xa0001
80006394:	918a8593          	add	a1,s5,-1768 # a0000918 <__clz_tab+0x8dc>
80006398:	91c50513          	add	a0,a0,-1764 # a000091c <__clz_tab+0x8e0>
8000639c:	dddfe0ef          	jal	80005178 <printf_>
800063a0:	a0001537          	lui	a0,0xa0001
800063a4:	934b0593          	add	a1,s6,-1740 # a0000934 <__clz_tab+0x8f8>
800063a8:	93c50513          	add	a0,a0,-1732 # a000093c <__clz_tab+0x900>
800063ac:	dcdfe0ef          	jal	80005178 <printf_>
800063b0:	a0001537          	lui	a0,0xa0001
800063b4:	00040593          	mv	a1,s0
800063b8:	95450513          	add	a0,a0,-1708 # a0000954 <__clz_tab+0x918>
800063bc:	dbdfe0ef          	jal	80005178 <printf_>
800063c0:	04c12783          	lw	a5,76(sp)
800063c4:	0017f713          	and	a4,a5,1
800063c8:	06070a63          	beqz	a4,8000643c <main+0x884>
800063cc:	e8cca703          	lw	a4,-372(s9)
800063d0:	06070663          	beqz	a4,8000643c <main+0x884>
800063d4:	00001737          	lui	a4,0x1
800063d8:	fffff7b7          	lui	a5,0xfffff
800063dc:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
800063e0:	00f70733          	add	a4,a4,a5
800063e4:	02010793          	add	a5,sp,32
800063e8:	00f707b3          	add	a5,a4,a5
800063ec:	00000c13          	li	s8,0
800063f0:	a0001bb7          	lui	s7,0xa0001
800063f4:	00f12623          	sw	a5,12(sp)
800063f8:	00001437          	lui	s0,0x1
800063fc:	00c12703          	lw	a4,12(sp)
80006400:	004c1793          	sll	a5,s8,0x4
80006404:	018787b3          	add	a5,a5,s8
80006408:	00279793          	sll	a5,a5,0x2
8000640c:	00f707b3          	add	a5,a4,a5
80006410:	00f407b3          	add	a5,s0,a5
80006414:	8267d603          	lhu	a2,-2010(a5) # ffffe826 <__stack_base+0x3fffe826>
80006418:	000c0593          	mv	a1,s8
8000641c:	970b8513          	add	a0,s7,-1680 # a0000970 <__clz_tab+0x934>
80006420:	d59fe0ef          	jal	80005178 <printf_>
80006424:	001c0c13          	add	s8,s8,1
80006428:	e8cca783          	lw	a5,-372(s9)
8000642c:	010c1c13          	sll	s8,s8,0x10
80006430:	010c5c13          	srl	s8,s8,0x10
80006434:	fcfc64e3          	bltu	s8,a5,800063fc <main+0x844>
80006438:	04c12783          	lw	a5,76(sp)
8000643c:	0027f713          	and	a4,a5,2
80006440:	06070a63          	beqz	a4,800064b4 <main+0x8fc>
80006444:	e8cca703          	lw	a4,-372(s9)
80006448:	30070063          	beqz	a4,80006748 <main+0xb90>
8000644c:	00001737          	lui	a4,0x1
80006450:	fffff7b7          	lui	a5,0xfffff
80006454:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
80006458:	00f70733          	add	a4,a4,a5
8000645c:	02010793          	add	a5,sp,32
80006460:	00f707b3          	add	a5,a4,a5
80006464:	00000c13          	li	s8,0
80006468:	a0001bb7          	lui	s7,0xa0001
8000646c:	00f12623          	sw	a5,12(sp)
80006470:	00001437          	lui	s0,0x1
80006474:	00c12703          	lw	a4,12(sp)
80006478:	004c1793          	sll	a5,s8,0x4
8000647c:	018787b3          	add	a5,a5,s8
80006480:	00279793          	sll	a5,a5,0x2
80006484:	00f707b3          	add	a5,a4,a5
80006488:	00f407b3          	add	a5,s0,a5
8000648c:	8287d603          	lhu	a2,-2008(a5) # ffffe828 <__stack_base+0x3fffe828>
80006490:	000c0593          	mv	a1,s8
80006494:	98cb8513          	add	a0,s7,-1652 # a000098c <__clz_tab+0x950>
80006498:	ce1fe0ef          	jal	80005178 <printf_>
8000649c:	001c0c13          	add	s8,s8,1
800064a0:	e8cca783          	lw	a5,-372(s9)
800064a4:	010c1c13          	sll	s8,s8,0x10
800064a8:	010c5c13          	srl	s8,s8,0x10
800064ac:	fcfc64e3          	bltu	s8,a5,80006474 <main+0x8bc>
800064b0:	04c12783          	lw	a5,76(sp)
800064b4:	0047f793          	and	a5,a5,4
800064b8:	e8cca703          	lw	a4,-372(s9)
800064bc:	06078663          	beqz	a5,80006528 <main+0x970>
800064c0:	0c070a63          	beqz	a4,80006594 <main+0x9dc>
800064c4:	00001737          	lui	a4,0x1
800064c8:	fffff7b7          	lui	a5,0xfffff
800064cc:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
800064d0:	00f70733          	add	a4,a4,a5
800064d4:	02010793          	add	a5,sp,32
800064d8:	00f707b3          	add	a5,a4,a5
800064dc:	00000c13          	li	s8,0
800064e0:	a0001bb7          	lui	s7,0xa0001
800064e4:	00f12623          	sw	a5,12(sp)
800064e8:	00001437          	lui	s0,0x1
800064ec:	00c12703          	lw	a4,12(sp)
800064f0:	004c1793          	sll	a5,s8,0x4
800064f4:	018787b3          	add	a5,a5,s8
800064f8:	00279793          	sll	a5,a5,0x2
800064fc:	00f707b3          	add	a5,a4,a5
80006500:	00f407b3          	add	a5,s0,a5
80006504:	82a7d603          	lhu	a2,-2006(a5) # ffffe82a <__stack_base+0x3fffe82a>
80006508:	000c0593          	mv	a1,s8
8000650c:	9a8b8513          	add	a0,s7,-1624 # a00009a8 <__clz_tab+0x96c>
80006510:	c69fe0ef          	jal	80005178 <printf_>
80006514:	001c0c13          	add	s8,s8,1
80006518:	e8cca783          	lw	a5,-372(s9)
8000651c:	010c1c13          	sll	s8,s8,0x10
80006520:	010c5c13          	srl	s8,s8,0x10
80006524:	fcfc64e3          	bltu	s8,a5,800064ec <main+0x934>
80006528:	e8cca783          	lw	a5,-372(s9)
8000652c:	06078463          	beqz	a5,80006594 <main+0x9dc>
80006530:	00001737          	lui	a4,0x1
80006534:	fffff7b7          	lui	a5,0xfffff
80006538:	82070713          	add	a4,a4,-2016 # 820 <__stack_size-0x37e0>
8000653c:	00f70733          	add	a4,a4,a5
80006540:	02010793          	add	a5,sp,32
80006544:	00f707b3          	add	a5,a4,a5
80006548:	00000c13          	li	s8,0
8000654c:	a0001bb7          	lui	s7,0xa0001
80006550:	00f12623          	sw	a5,12(sp)
80006554:	00001437          	lui	s0,0x1
80006558:	00c12703          	lw	a4,12(sp)
8000655c:	004c1793          	sll	a5,s8,0x4
80006560:	018787b3          	add	a5,a5,s8
80006564:	00279793          	sll	a5,a5,0x2
80006568:	00f707b3          	add	a5,a4,a5
8000656c:	00f407b3          	add	a5,s0,a5
80006570:	8247d603          	lhu	a2,-2012(a5) # ffffe824 <__stack_base+0x3fffe824>
80006574:	000c0593          	mv	a1,s8
80006578:	9c4b8513          	add	a0,s7,-1596 # a00009c4 <__clz_tab+0x988>
8000657c:	bfdfe0ef          	jal	80005178 <printf_>
80006580:	001c0c13          	add	s8,s8,1
80006584:	e8cca783          	lw	a5,-372(s9)
80006588:	010c1c13          	sll	s8,s8,0x10
8000658c:	010c5c13          	srl	s8,s8,0x10
80006590:	fcfc64e3          	bltu	s8,a5,80006558 <main+0x9a0>
80006594:	06098863          	beqz	s3,80006604 <main+0xa4c>
80006598:	05304e63          	bgtz	s3,800065f4 <main+0xa3c>
8000659c:	a0001537          	lui	a0,0xa0001
800065a0:	a5450513          	add	a0,a0,-1452 # a0000a54 <__clz_tab+0xa18>
800065a4:	bd5fe0ef          	jal	80005178 <printf_>
800065a8:	06e10513          	add	a0,sp,110
800065ac:	1e9010ef          	jal	80007f94 <portable_fini>
800065b0:	09010113          	add	sp,sp,144
800065b4:	7ec12083          	lw	ra,2028(sp)
800065b8:	7e812403          	lw	s0,2024(sp)
800065bc:	7e412483          	lw	s1,2020(sp)
800065c0:	7e012903          	lw	s2,2016(sp)
800065c4:	7dc12983          	lw	s3,2012(sp)
800065c8:	7d812a03          	lw	s4,2008(sp)
800065cc:	7d412a83          	lw	s5,2004(sp)
800065d0:	7d012b03          	lw	s6,2000(sp)
800065d4:	7cc12b83          	lw	s7,1996(sp)
800065d8:	7c812c03          	lw	s8,1992(sp)
800065dc:	7c412c83          	lw	s9,1988(sp)
800065e0:	7c012d03          	lw	s10,1984(sp)
800065e4:	7bc12d83          	lw	s11,1980(sp)
800065e8:	00000513          	li	a0,0
800065ec:	7f010113          	add	sp,sp,2032
800065f0:	00008067          	ret
800065f4:	a0001537          	lui	a0,0xa0001
800065f8:	ab850513          	add	a0,a0,-1352 # a0000ab8 <__clz_tab+0xa7c>
800065fc:	b7dfe0ef          	jal	80005178 <printf_>
80006600:	fa9ff06f          	j	800065a8 <main+0x9f0>
80006604:	a0001537          	lui	a0,0xa0001
80006608:	9e050513          	add	a0,a0,-1568 # a00009e0 <__clz_tab+0x9a4>
8000660c:	b6dfe0ef          	jal	80005178 <printf_>
80006610:	01c12703          	lw	a4,28(sp)
80006614:	00300793          	li	a5,3
80006618:	f8f718e3          	bne	a4,a5,800065a8 <main+0x9f0>
8000661c:	e8cca783          	lw	a5,-372(s9)
80006620:	04812503          	lw	a0,72(sp)
80006624:	02f50533          	mul	a0,a0,a5
80006628:	be4fc0ef          	jal	80002a0c <__floatunsidf>
8000662c:	00050793          	mv	a5,a0
80006630:	00058413          	mv	s0,a1
80006634:	01412503          	lw	a0,20(sp)
80006638:	01812583          	lw	a1,24(sp)
8000663c:	00078493          	mv	s1,a5
80006640:	121010ef          	jal	80007f60 <time_in_secs>
80006644:	00050613          	mv	a2,a0
80006648:	00058693          	mv	a3,a1
8000664c:	00048513          	mv	a0,s1
80006650:	00040593          	mv	a1,s0
80006654:	b5dfa0ef          	jal	800011b0 <__divdf3>
80006658:	00050613          	mv	a2,a0
8000665c:	a0001537          	lui	a0,0xa0001
80006660:	00058693          	mv	a3,a1
80006664:	918a8793          	add	a5,s5,-1768
80006668:	8f4a0713          	add	a4,s4,-1804
8000666c:	a2c50513          	add	a0,a0,-1492 # a0000a2c <__clz_tab+0x9f0>
80006670:	b09fe0ef          	jal	80005178 <printf_>
80006674:	a0001537          	lui	a0,0xa0001
80006678:	934b0593          	add	a1,s6,-1740
8000667c:	a4850513          	add	a0,a0,-1464 # a0000a48 <__clz_tab+0xa0c>
80006680:	af9fe0ef          	jal	80005178 <printf_>
80006684:	a0001537          	lui	a0,0xa0001
80006688:	a5050513          	add	a0,a0,-1456 # a0000a50 <__clz_tab+0xa14>
8000668c:	aedfe0ef          	jal	80005178 <printf_>
80006690:	f19ff06f          	j	800065a8 <main+0x9f0>
80006694:	a0000537          	lui	a0,0xa0000
80006698:	72c50513          	add	a0,a0,1836 # a000072c <__clz_tab+0x6f0>
8000669c:	addfe0ef          	jal	80005178 <printf_>
800066a0:	00004a37          	lui	s4,0x4
800066a4:	00001ab7          	lui	s5,0x1
800066a8:	000039b7          	lui	s3,0x3
800066ac:	9bfa0a13          	add	s4,s4,-1601 # 39bf <__stack_size-0x641>
800066b0:	199a8a93          	add	s5,s5,409 # 1199 <__stack_size-0x2e67>
800066b4:	34098993          	add	s3,s3,832 # 3340 <__stack_size-0xcc0>
800066b8:	00100793          	li	a5,1
800066bc:	000a0c13          	mv	s8,s4
800066c0:	000a8b93          	mv	s7,s5
800066c4:	00098b13          	mv	s6,s3
800066c8:	00f12e23          	sw	a5,28(sp)
800066cc:	9ddff06f          	j	800060a8 <main+0x4f0>
800066d0:	a0000537          	lui	a0,0xa0000
800066d4:	7bc50513          	add	a0,a0,1980 # a00007bc <__clz_tab+0x780>
800066d8:	aa1fe0ef          	jal	80005178 <printf_>
800066dc:	00009a37          	lui	s4,0x9
800066e0:	0000e9b7          	lui	s3,0xe
800066e4:	d84a0a13          	add	s4,s4,-636 # 8d84 <__stack_size+0x4d84>
800066e8:	3c198993          	add	s3,s3,961 # e3c1 <__stack_size+0xa3c1>
800066ec:	00400793          	li	a5,4
800066f0:	000a0c13          	mv	s8,s4
800066f4:	74700a93          	li	s5,1863
800066f8:	74700b93          	li	s7,1863
800066fc:	00098b13          	mv	s6,s3
80006700:	00f12e23          	sw	a5,28(sp)
80006704:	9a5ff06f          	j	800060a8 <main+0x4f0>
80006708:	a0000537          	lui	a0,0xa0000
8000670c:	00006a37          	lui	s4,0x6
80006710:	0000cab7          	lui	s5,0xc
80006714:	0000d9b7          	lui	s3,0xd
80006718:	6fc50513          	add	a0,a0,1788 # a00006fc <__clz_tab+0x6c0>
8000671c:	e47a0a13          	add	s4,s4,-441 # 5e47 <__stack_size+0x1e47>
80006720:	e52a8a93          	add	s5,s5,-430 # be52 <__stack_size+0x7e52>
80006724:	4b098993          	add	s3,s3,1200 # d4b0 <__stack_size+0x94b0>
80006728:	a51fe0ef          	jal	80005178 <printf_>
8000672c:	000a0c13          	mv	s8,s4
80006730:	000a8b93          	mv	s7,s5
80006734:	00098b13          	mv	s6,s3
80006738:	00012e23          	sw	zero,28(sp)
8000673c:	96dff06f          	j	800060a8 <main+0x4f0>
80006740:	00000713          	li	a4,0
80006744:	b51ff06f          	j	80006294 <main+0x6dc>
80006748:	0047f793          	and	a5,a5,4
8000674c:	dc078ee3          	beqz	a5,80006528 <main+0x970>
80006750:	e45ff06f          	j	80006594 <main+0x9dc>
80006754:	02b70733          	mul	a4,a4,a1
80006758:	07010513          	add	a0,sp,112
8000675c:	fffff6b7          	lui	a3,0xfffff
80006760:	00e50733          	add	a4,a0,a4
80006764:	00001537          	lui	a0,0x1
80006768:	82050513          	add	a0,a0,-2016 # 820 <__stack_size-0x37e0>
8000676c:	00d50533          	add	a0,a0,a3
80006770:	02010693          	add	a3,sp,32
80006774:	00d506b3          	add	a3,a0,a3
80006778:	00d12623          	sw	a3,12(sp)
8000677c:	7ee6ae23          	sw	a4,2044(a3) # fffff7fc <__stack_base+0x3ffff7fc>
80006780:	88061ae3          	bnez	a2,80006014 <main+0x45c>
80006784:	db0ff06f          	j	80005d34 <main+0x17c>

80006788 <matrix_test>:
80006788:	fd010113          	add	sp,sp,-48
8000678c:	02112623          	sw	ra,44(sp)
80006790:	4a050463          	beqz	a0,80006c38 <matrix_test+0x4b0>
80006794:	02912223          	sw	s1,36(sp)
80006798:	00151493          	sll	s1,a0,0x1
8000679c:	01312e23          	sw	s3,28(sp)
800067a0:	01412c23          	sw	s4,24(sp)
800067a4:	01712623          	sw	s7,12(sp)
800067a8:	40a00a33          	neg	s4,a0
800067ac:	00060b93          	mv	s7,a2
800067b0:	01071993          	sll	s3,a4,0x10
800067b4:	00960633          	add	a2,a2,s1
800067b8:	03212023          	sw	s2,32(sp)
800067bc:	01512a23          	sw	s5,20(sp)
800067c0:	01612823          	sw	s6,16(sp)
800067c4:	02812423          	sw	s0,40(sp)
800067c8:	00068b13          	mv	s6,a3
800067cc:	01812423          	sw	s8,8(sp)
800067d0:	00050893          	mv	a7,a0
800067d4:	00058a93          	mv	s5,a1
800067d8:	00070913          	mv	s2,a4
800067dc:	0109d993          	srl	s3,s3,0x10
800067e0:	00060693          	mv	a3,a2
800067e4:	00000813          	li	a6,0
800067e8:	002a1a13          	sll	s4,s4,0x2
800067ec:	409685b3          	sub	a1,a3,s1
800067f0:	00058793          	mv	a5,a1
800067f4:	0007d703          	lhu	a4,0(a5)
800067f8:	00278793          	add	a5,a5,2
800067fc:	00e98733          	add	a4,s3,a4
80006800:	fee79f23          	sh	a4,-2(a5)
80006804:	fed798e3          	bne	a5,a3,800067f4 <matrix_test+0x6c>
80006808:	00180413          	add	s0,a6,1
8000680c:	414586b3          	sub	a3,a1,s4
80006810:	00888663          	beq	a7,s0,8000681c <matrix_test+0x94>
80006814:	00040813          	mv	a6,s0
80006818:	fd5ff06f          	j	800067ec <matrix_test+0x64>
8000681c:	00000593          	li	a1,0
80006820:	00000893          	li	a7,0
80006824:	40960533          	sub	a0,a2,s1
80006828:	00259693          	sll	a3,a1,0x2
8000682c:	015686b3          	add	a3,a3,s5
80006830:	00050793          	mv	a5,a0
80006834:	00079703          	lh	a4,0(a5)
80006838:	00468693          	add	a3,a3,4
8000683c:	00278793          	add	a5,a5,2
80006840:	03270733          	mul	a4,a4,s2
80006844:	fee6ae23          	sw	a4,-4(a3)
80006848:	fef616e3          	bne	a2,a5,80006834 <matrix_test+0xac>
8000684c:	00188793          	add	a5,a7,1
80006850:	008585b3          	add	a1,a1,s0
80006854:	41450633          	sub	a2,a0,s4
80006858:	01088663          	beq	a7,a6,80006864 <matrix_test+0xdc>
8000685c:	00078893          	mv	a7,a5
80006860:	fc5ff06f          	j	80006824 <matrix_test+0x9c>
80006864:	414a8c33          	sub	s8,s5,s4
80006868:	40800eb3          	neg	t4,s0
8000686c:	fffff7b7          	lui	a5,0xfffff
80006870:	00f96933          	or	s2,s2,a5
80006874:	000c0893          	mv	a7,s8
80006878:	00000513          	li	a0,0
8000687c:	00000713          	li	a4,0
80006880:	00000613          	li	a2,0
80006884:	00000e13          	li	t3,0
80006888:	003e9e93          	sll	t4,t4,0x3
8000688c:	01488333          	add	t1,a7,s4
80006890:	00030793          	mv	a5,t1
80006894:	0140006f          	j	800068a8 <matrix_test+0x120>
80006898:	01051513          	sll	a0,a0,0x10
8000689c:	00478793          	add	a5,a5,4 # fffff004 <__stack_base+0x3ffff004>
800068a0:	41055513          	sra	a0,a0,0x10
800068a4:	02f88e63          	beq	a7,a5,800068e0 <matrix_test+0x158>
800068a8:	00070693          	mv	a3,a4
800068ac:	0007a703          	lw	a4,0(a5)
800068b0:	01051513          	sll	a0,a0,0x10
800068b4:	01055513          	srl	a0,a0,0x10
800068b8:	00e6a6b3          	slt	a3,a3,a4
800068bc:	00e60633          	add	a2,a2,a4
800068c0:	00a50593          	add	a1,a0,10
800068c4:	00d50533          	add	a0,a0,a3
800068c8:	fcc958e3          	bge	s2,a2,80006898 <matrix_test+0x110>
800068cc:	01059513          	sll	a0,a1,0x10
800068d0:	00478793          	add	a5,a5,4
800068d4:	41055513          	sra	a0,a0,0x10
800068d8:	00000613          	li	a2,0
800068dc:	fcf896e3          	bne	a7,a5,800068a8 <matrix_test+0x120>
800068e0:	001e0793          	add	a5,t3,1
800068e4:	41d308b3          	sub	a7,t1,t4
800068e8:	01c80663          	beq	a6,t3,800068f4 <matrix_test+0x16c>
800068ec:	00078e13          	mv	t3,a5
800068f0:	f9dff06f          	j	8000688c <matrix_test+0x104>
800068f4:	00000593          	li	a1,0
800068f8:	390010ef          	jal	80007c88 <crc16>
800068fc:	00050593          	mv	a1,a0
80006900:	009b0833          	add	a6,s6,s1
80006904:	000a8893          	mv	a7,s5
80006908:	00000313          	li	t1,0
8000690c:	00131693          	sll	a3,t1,0x1
80006910:	00db86b3          	add	a3,s7,a3
80006914:	000b0793          	mv	a5,s6
80006918:	00000613          	li	a2,0
8000691c:	00069703          	lh	a4,0(a3)
80006920:	00079503          	lh	a0,0(a5)
80006924:	00278793          	add	a5,a5,2
80006928:	00268693          	add	a3,a3,2
8000692c:	02a70733          	mul	a4,a4,a0
80006930:	00e60633          	add	a2,a2,a4
80006934:	ff0794e3          	bne	a5,a6,8000691c <matrix_test+0x194>
80006938:	00c8a023          	sw	a2,0(a7)
8000693c:	00488893          	add	a7,a7,4
80006940:	00830333          	add	t1,t1,s0
80006944:	fd8894e3          	bne	a7,s8,8000690c <matrix_test+0x184>
80006948:	00000313          	li	t1,0
8000694c:	00000513          	li	a0,0
80006950:	00000793          	li	a5,0
80006954:	00000693          	li	a3,0
80006958:	00000e13          	li	t3,0
8000695c:	00231613          	sll	a2,t1,0x2
80006960:	00ca8633          	add	a2,s5,a2
80006964:	00000813          	li	a6,0
80006968:	0180006f          	j	80006980 <matrix_test+0x1f8>
8000696c:	01051513          	sll	a0,a0,0x10
80006970:	00180813          	add	a6,a6,1
80006974:	41055513          	sra	a0,a0,0x10
80006978:	00460613          	add	a2,a2,4
8000697c:	04887063          	bgeu	a6,s0,800069bc <matrix_test+0x234>
80006980:	00078713          	mv	a4,a5
80006984:	00062783          	lw	a5,0(a2)
80006988:	01051513          	sll	a0,a0,0x10
8000698c:	01055513          	srl	a0,a0,0x10
80006990:	00f72733          	slt	a4,a4,a5
80006994:	00f686b3          	add	a3,a3,a5
80006998:	00a50893          	add	a7,a0,10
8000699c:	00e50533          	add	a0,a0,a4
800069a0:	fcd956e3          	bge	s2,a3,8000696c <matrix_test+0x1e4>
800069a4:	01089513          	sll	a0,a7,0x10
800069a8:	00180813          	add	a6,a6,1
800069ac:	41055513          	sra	a0,a0,0x10
800069b0:	00000693          	li	a3,0
800069b4:	00460613          	add	a2,a2,4
800069b8:	fc8864e3          	bltu	a6,s0,80006980 <matrix_test+0x1f8>
800069bc:	001e0e13          	add	t3,t3,1
800069c0:	00830333          	add	t1,t1,s0
800069c4:	f88e6ce3          	bltu	t3,s0,8000695c <matrix_test+0x1d4>
800069c8:	2c0010ef          	jal	80007c88 <crc16>
800069cc:	00050593          	mv	a1,a0
800069d0:	000a8f13          	mv	t5,s5
800069d4:	000b8e93          	mv	t4,s7
800069d8:	00000f93          	li	t6,0
800069dc:	000b0893          	mv	a7,s6
800069e0:	000f0e13          	mv	t3,t5
800069e4:	00000313          	li	t1,0
800069e8:	00088613          	mv	a2,a7
800069ec:	000e8693          	mv	a3,t4
800069f0:	00000513          	li	a0,0
800069f4:	00000713          	li	a4,0
800069f8:	00069783          	lh	a5,0(a3)
800069fc:	00061803          	lh	a6,0(a2)
80006a00:	00170713          	add	a4,a4,1
80006a04:	00268693          	add	a3,a3,2
80006a08:	030787b3          	mul	a5,a5,a6
80006a0c:	00960633          	add	a2,a2,s1
80006a10:	00f50533          	add	a0,a0,a5
80006a14:	fe8762e3          	bltu	a4,s0,800069f8 <matrix_test+0x270>
80006a18:	00ae2023          	sw	a0,0(t3)
80006a1c:	00130313          	add	t1,t1,1
80006a20:	004e0e13          	add	t3,t3,4
80006a24:	00288893          	add	a7,a7,2
80006a28:	fc8360e3          	bltu	t1,s0,800069e8 <matrix_test+0x260>
80006a2c:	001f8f93          	add	t6,t6,1
80006a30:	009e8eb3          	add	t4,t4,s1
80006a34:	414f0f33          	sub	t5,t5,s4
80006a38:	fa8fe2e3          	bltu	t6,s0,800069dc <matrix_test+0x254>
80006a3c:	00000313          	li	t1,0
80006a40:	00000513          	li	a0,0
80006a44:	00000793          	li	a5,0
80006a48:	00000693          	li	a3,0
80006a4c:	00000e13          	li	t3,0
80006a50:	00231613          	sll	a2,t1,0x2
80006a54:	00ca8633          	add	a2,s5,a2
80006a58:	00000813          	li	a6,0
80006a5c:	0180006f          	j	80006a74 <matrix_test+0x2ec>
80006a60:	01051513          	sll	a0,a0,0x10
80006a64:	00180813          	add	a6,a6,1
80006a68:	41055513          	sra	a0,a0,0x10
80006a6c:	00460613          	add	a2,a2,4
80006a70:	04887063          	bgeu	a6,s0,80006ab0 <matrix_test+0x328>
80006a74:	00078713          	mv	a4,a5
80006a78:	00062783          	lw	a5,0(a2)
80006a7c:	01051513          	sll	a0,a0,0x10
80006a80:	01055513          	srl	a0,a0,0x10
80006a84:	00f72733          	slt	a4,a4,a5
80006a88:	00f686b3          	add	a3,a3,a5
80006a8c:	00a50893          	add	a7,a0,10
80006a90:	00e50533          	add	a0,a0,a4
80006a94:	fcd956e3          	bge	s2,a3,80006a60 <matrix_test+0x2d8>
80006a98:	01089513          	sll	a0,a7,0x10
80006a9c:	00180813          	add	a6,a6,1
80006aa0:	41055513          	sra	a0,a0,0x10
80006aa4:	00000693          	li	a3,0
80006aa8:	00460613          	add	a2,a2,4
80006aac:	fc8864e3          	bltu	a6,s0,80006a74 <matrix_test+0x2ec>
80006ab0:	001e0e13          	add	t3,t3,1
80006ab4:	00830333          	add	t1,t1,s0
80006ab8:	f88e6ce3          	bltu	t3,s0,80006a50 <matrix_test+0x2c8>
80006abc:	1cc010ef          	jal	80007c88 <crc16>
80006ac0:	00050593          	mv	a1,a0
80006ac4:	000a8f13          	mv	t5,s5
80006ac8:	000b8e93          	mv	t4,s7
80006acc:	00000f93          	li	t6,0
80006ad0:	000b0893          	mv	a7,s6
80006ad4:	000f0e13          	mv	t3,t5
80006ad8:	00000313          	li	t1,0
80006adc:	00088513          	mv	a0,a7
80006ae0:	000e8613          	mv	a2,t4
80006ae4:	00000813          	li	a6,0
80006ae8:	00000693          	li	a3,0
80006aec:	00051703          	lh	a4,0(a0)
80006af0:	00061783          	lh	a5,0(a2)
80006af4:	00168693          	add	a3,a3,1
80006af8:	00260613          	add	a2,a2,2
80006afc:	02e787b3          	mul	a5,a5,a4
80006b00:	00950533          	add	a0,a0,s1
80006b04:	4027d713          	sra	a4,a5,0x2
80006b08:	4057d793          	sra	a5,a5,0x5
80006b0c:	00f77713          	and	a4,a4,15
80006b10:	07f7f793          	and	a5,a5,127
80006b14:	02f707b3          	mul	a5,a4,a5
80006b18:	00f80833          	add	a6,a6,a5
80006b1c:	fc86e8e3          	bltu	a3,s0,80006aec <matrix_test+0x364>
80006b20:	010e2023          	sw	a6,0(t3)
80006b24:	00130313          	add	t1,t1,1
80006b28:	004e0e13          	add	t3,t3,4
80006b2c:	00288893          	add	a7,a7,2
80006b30:	fa8366e3          	bltu	t1,s0,80006adc <matrix_test+0x354>
80006b34:	001f8f93          	add	t6,t6,1
80006b38:	009e8eb3          	add	t4,t4,s1
80006b3c:	414f0f33          	sub	t5,t5,s4
80006b40:	f88fe8e3          	bltu	t6,s0,80006ad0 <matrix_test+0x348>
80006b44:	00000313          	li	t1,0
80006b48:	00000513          	li	a0,0
80006b4c:	00000793          	li	a5,0
80006b50:	00000693          	li	a3,0
80006b54:	00000e13          	li	t3,0
80006b58:	00231613          	sll	a2,t1,0x2
80006b5c:	00ca8633          	add	a2,s5,a2
80006b60:	00000813          	li	a6,0
80006b64:	0180006f          	j	80006b7c <matrix_test+0x3f4>
80006b68:	01051513          	sll	a0,a0,0x10
80006b6c:	00180813          	add	a6,a6,1
80006b70:	41055513          	sra	a0,a0,0x10
80006b74:	00460613          	add	a2,a2,4
80006b78:	04887063          	bgeu	a6,s0,80006bb8 <matrix_test+0x430>
80006b7c:	00078713          	mv	a4,a5
80006b80:	00062783          	lw	a5,0(a2)
80006b84:	01051513          	sll	a0,a0,0x10
80006b88:	01055513          	srl	a0,a0,0x10
80006b8c:	00f72733          	slt	a4,a4,a5
80006b90:	00f686b3          	add	a3,a3,a5
80006b94:	00a50893          	add	a7,a0,10
80006b98:	00e50533          	add	a0,a0,a4
80006b9c:	fcd956e3          	bge	s2,a3,80006b68 <matrix_test+0x3e0>
80006ba0:	01089513          	sll	a0,a7,0x10
80006ba4:	00180813          	add	a6,a6,1
80006ba8:	41055513          	sra	a0,a0,0x10
80006bac:	00000693          	li	a3,0
80006bb0:	00460613          	add	a2,a2,4
80006bb4:	fc8864e3          	bltu	a6,s0,80006b7c <matrix_test+0x3f4>
80006bb8:	001e0e13          	add	t3,t3,1
80006bbc:	00830333          	add	t1,t1,s0
80006bc0:	f88e6ce3          	bltu	t3,s0,80006b58 <matrix_test+0x3d0>
80006bc4:	0c4010ef          	jal	80007c88 <crc16>
80006bc8:	00000613          	li	a2,0
80006bcc:	00000593          	li	a1,0
80006bd0:	00161793          	sll	a5,a2,0x1
80006bd4:	00fb87b3          	add	a5,s7,a5
80006bd8:	00000693          	li	a3,0
80006bdc:	0007d703          	lhu	a4,0(a5)
80006be0:	00278793          	add	a5,a5,2
80006be4:	00168693          	add	a3,a3,1
80006be8:	41370733          	sub	a4,a4,s3
80006bec:	fee79f23          	sh	a4,-2(a5)
80006bf0:	fe86e6e3          	bltu	a3,s0,80006bdc <matrix_test+0x454>
80006bf4:	00158593          	add	a1,a1,1
80006bf8:	00860633          	add	a2,a2,s0
80006bfc:	fc85eae3          	bltu	a1,s0,80006bd0 <matrix_test+0x448>
80006c00:	02812403          	lw	s0,40(sp)
80006c04:	02c12083          	lw	ra,44(sp)
80006c08:	01051513          	sll	a0,a0,0x10
80006c0c:	02412483          	lw	s1,36(sp)
80006c10:	02012903          	lw	s2,32(sp)
80006c14:	01c12983          	lw	s3,28(sp)
80006c18:	01812a03          	lw	s4,24(sp)
80006c1c:	01412a83          	lw	s5,20(sp)
80006c20:	01012b03          	lw	s6,16(sp)
80006c24:	00c12b83          	lw	s7,12(sp)
80006c28:	00812c03          	lw	s8,8(sp)
80006c2c:	41055513          	sra	a0,a0,0x10
80006c30:	03010113          	add	sp,sp,48
80006c34:	00008067          	ret
80006c38:	00000593          	li	a1,0
80006c3c:	04c010ef          	jal	80007c88 <crc16>
80006c40:	00050593          	mv	a1,a0
80006c44:	00000513          	li	a0,0
80006c48:	040010ef          	jal	80007c88 <crc16>
80006c4c:	00050593          	mv	a1,a0
80006c50:	00000513          	li	a0,0
80006c54:	034010ef          	jal	80007c88 <crc16>
80006c58:	00050593          	mv	a1,a0
80006c5c:	00000513          	li	a0,0
80006c60:	028010ef          	jal	80007c88 <crc16>
80006c64:	02c12083          	lw	ra,44(sp)
80006c68:	01051513          	sll	a0,a0,0x10
80006c6c:	41055513          	sra	a0,a0,0x10
80006c70:	03010113          	add	sp,sp,48
80006c74:	00008067          	ret

80006c78 <core_bench_matrix>:
80006c78:	ff010113          	add	sp,sp,-16
80006c7c:	00812423          	sw	s0,8(sp)
80006c80:	00852683          	lw	a3,8(a0)
80006c84:	00060413          	mv	s0,a2
80006c88:	00058713          	mv	a4,a1
80006c8c:	00452603          	lw	a2,4(a0)
80006c90:	00c52583          	lw	a1,12(a0)
80006c94:	00052503          	lw	a0,0(a0)
80006c98:	00112623          	sw	ra,12(sp)
80006c9c:	aedff0ef          	jal	80006788 <matrix_test>
80006ca0:	00040593          	mv	a1,s0
80006ca4:	00812403          	lw	s0,8(sp)
80006ca8:	00c12083          	lw	ra,12(sp)
80006cac:	01010113          	add	sp,sp,16
80006cb0:	7d90006f          	j	80007c88 <crc16>

80006cb4 <core_init_matrix>:
80006cb4:	ff010113          	add	sp,sp,-16
80006cb8:	00912423          	sw	s1,8(sp)
80006cbc:	01212223          	sw	s2,4(sp)
80006cc0:	00050813          	mv	a6,a0
80006cc4:	00061463          	bnez	a2,80006ccc <core_init_matrix+0x18>
80006cc8:	00100613          	li	a2,1
80006ccc:	00000793          	li	a5,0
80006cd0:	10080663          	beqz	a6,80006ddc <core_init_matrix+0x128>
80006cd4:	00078513          	mv	a0,a5
80006cd8:	00178793          	add	a5,a5,1
80006cdc:	02f78733          	mul	a4,a5,a5
80006ce0:	00371713          	sll	a4,a4,0x3
80006ce4:	ff0768e3          	bltu	a4,a6,80006cd4 <core_init_matrix+0x20>
80006ce8:	02a502b3          	mul	t0,a0,a0
80006cec:	fff58593          	add	a1,a1,-1
80006cf0:	ffc5f793          	and	a5,a1,-4
80006cf4:	00478493          	add	s1,a5,4
80006cf8:	00050913          	mv	s2,a0
80006cfc:	00048e13          	mv	t3,s1
80006d00:	00129293          	sll	t0,t0,0x1
80006d04:	005483b3          	add	t2,s1,t0
80006d08:	0c050663          	beqz	a0,80006dd4 <core_init_matrix+0x120>
80006d0c:	00812623          	sw	s0,12(sp)
80006d10:	01312023          	sw	s3,0(sp)
80006d14:	00010eb7          	lui	t4,0x10
80006d18:	00150313          	add	t1,a0,1
80006d1c:	00151413          	sll	s0,a0,0x1
80006d20:	00038f13          	mv	t5,t2
80006d24:	00000f93          	li	t6,0
80006d28:	00100713          	li	a4,1
80006d2c:	407e0e33          	sub	t3,t3,t2
80006d30:	fffe8e93          	add	t4,t4,-1 # ffff <__stack_size+0xbfff>
80006d34:	00070993          	mv	s3,a4
80006d38:	000f0813          	mv	a6,t5
80006d3c:	02e60633          	mul	a2,a2,a4
80006d40:	01071793          	sll	a5,a4,0x10
80006d44:	0107d793          	srl	a5,a5,0x10
80006d48:	010e08b3          	add	a7,t3,a6
80006d4c:	00280813          	add	a6,a6,2
80006d50:	00170713          	add	a4,a4,1
80006d54:	41f65593          	sra	a1,a2,0x1f
80006d58:	0105d593          	srl	a1,a1,0x10
80006d5c:	00b60633          	add	a2,a2,a1
80006d60:	01d67633          	and	a2,a2,t4
80006d64:	40b60633          	sub	a2,a2,a1
80006d68:	00c785b3          	add	a1,a5,a2
80006d6c:	01059593          	sll	a1,a1,0x10
80006d70:	0105d593          	srl	a1,a1,0x10
80006d74:	00f587b3          	add	a5,a1,a5
80006d78:	feb81f23          	sh	a1,-2(a6)
80006d7c:	0ff7f793          	zext.b	a5,a5
80006d80:	00f89023          	sh	a5,0(a7)
80006d84:	fa671ce3          	bne	a4,t1,80006d3c <core_init_matrix+0x88>
80006d88:	001f8f93          	add	t6,t6,1
80006d8c:	01350733          	add	a4,a0,s3
80006d90:	00a30333          	add	t1,t1,a0
80006d94:	008f0f33          	add	t5,t5,s0
80006d98:	f9f51ee3          	bne	a0,t6,80006d34 <core_init_matrix+0x80>
80006d9c:	00c12403          	lw	s0,12(sp)
80006da0:	00012983          	lw	s3,0(sp)
80006da4:	005387b3          	add	a5,t2,t0
80006da8:	fff78793          	add	a5,a5,-1
80006dac:	ffc7f793          	and	a5,a5,-4
80006db0:	00478793          	add	a5,a5,4
80006db4:	0096a223          	sw	s1,4(a3)
80006db8:	0126a023          	sw	s2,0(a3)
80006dbc:	0076a423          	sw	t2,8(a3)
80006dc0:	00f6a623          	sw	a5,12(a3)
80006dc4:	00812483          	lw	s1,8(sp)
80006dc8:	00412903          	lw	s2,4(sp)
80006dcc:	01010113          	add	sp,sp,16
80006dd0:	00008067          	ret
80006dd4:	00000293          	li	t0,0
80006dd8:	fcdff06f          	j	80006da4 <core_init_matrix+0xf0>
80006ddc:	fff58593          	add	a1,a1,-1
80006de0:	ffc5f393          	and	t2,a1,-4
80006de4:	00438e13          	add	t3,t2,4
80006de8:	00812623          	sw	s0,12(sp)
80006dec:	01312023          	sw	s3,0(sp)
80006df0:	000e0493          	mv	s1,t3
80006df4:	00638393          	add	t2,t2,6
80006df8:	fff00913          	li	s2,-1
80006dfc:	00200293          	li	t0,2
80006e00:	fff00513          	li	a0,-1
80006e04:	f11ff06f          	j	80006d14 <core_init_matrix+0x60>

80006e08 <core_init_state>:
80006e08:	fff50313          	add	t1,a0,-1
80006e0c:	00100793          	li	a5,1
80006e10:	00060893          	mv	a7,a2
80006e14:	1e67fc63          	bgeu	a5,t1,8000700c <core_init_state+0x204>
80006e18:	00158593          	add	a1,a1,1
80006e1c:	01059713          	sll	a4,a1,0x10
80006e20:	ff010113          	add	sp,sp,-16
80006e24:	01075713          	srl	a4,a4,0x10
80006e28:	a0001fb7          	lui	t6,0xa0001
80006e2c:	a0001f37          	lui	t5,0xa0001
80006e30:	a0001eb7          	lui	t4,0xa0001
80006e34:	a0001e37          	lui	t3,0xa0001
80006e38:	00375793          	srl	a5,a4,0x3
80006e3c:	00812623          	sw	s0,12(sp)
80006e40:	00912423          	sw	s1,8(sp)
80006e44:	01212223          	sw	s2,4(sp)
80006e48:	01312023          	sw	s3,0(sp)
80006e4c:	00700613          	li	a2,7
80006e50:	00777693          	and	a3,a4,7
80006e54:	00000813          	li	a6,0
80006e58:	d98f8f93          	add	t6,t6,-616 # a0000d98 <errpat>
80006e5c:	00400593          	li	a1,4
80006e60:	da8f0f13          	add	t5,t5,-600 # a0000da8 <scipat>
80006e64:	00100293          	li	t0,1
80006e68:	db8e8e93          	add	t4,t4,-584 # a0000db8 <floatpat>
80006e6c:	dc8e0e13          	add	t3,t3,-568 # a0000dc8 <intpat>
80006e70:	02c00393          	li	t2,44
80006e74:	0037f793          	and	a5,a5,3
80006e78:	08c68463          	beq	a3,a2,80006f00 <core_init_state+0xf8>
80006e7c:	14d5e663          	bltu	a1,a3,80006fc8 <core_init_state+0x1c0>
80006e80:	ffd68693          	add	a3,a3,-3
80006e84:	01069693          	sll	a3,a3,0x10
80006e88:	0106d693          	srl	a3,a3,0x10
80006e8c:	00279793          	sll	a5,a5,0x2
80006e90:	0cd2e063          	bltu	t0,a3,80006f50 <core_init_state+0x148>
80006e94:	00fe87b3          	add	a5,t4,a5
80006e98:	0007a683          	lw	a3,0(a5)
80006e9c:	00170713          	add	a4,a4,1
80006ea0:	01071713          	sll	a4,a4,0x10
80006ea4:	00980493          	add	s1,a6,9
80006ea8:	01075713          	srl	a4,a4,0x10
80006eac:	0664fa63          	bgeu	s1,t1,80006f20 <core_init_state+0x118>
80006eb0:	01088433          	add	s0,a7,a6
80006eb4:	00168793          	add	a5,a3,1
80006eb8:	40f407b3          	sub	a5,s0,a5
80006ebc:	0037b793          	sltiu	a5,a5,3
80006ec0:	12079063          	bnez	a5,80006fe0 <core_init_state+0x1d8>
80006ec4:	0086e7b3          	or	a5,a3,s0
80006ec8:	0037f793          	and	a5,a5,3
80006ecc:	10079a63          	bnez	a5,80006fe0 <core_init_state+0x1d8>
80006ed0:	0006a803          	lw	a6,0(a3)
80006ed4:	00800793          	li	a5,8
80006ed8:	01042023          	sw	a6,0(s0) # 1000 <__stack_size-0x3000>
80006edc:	0046a683          	lw	a3,4(a3)
80006ee0:	00d42223          	sw	a3,4(s0)
80006ee4:	00f407b3          	add	a5,s0,a5
80006ee8:	00778023          	sb	t2,0(a5)
80006eec:	00777693          	and	a3,a4,7
80006ef0:	00375793          	srl	a5,a4,0x3
80006ef4:	00048813          	mv	a6,s1
80006ef8:	0037f793          	and	a5,a5,3
80006efc:	f8c690e3          	bne	a3,a2,80006e7c <core_init_state+0x74>
80006f00:	00279793          	sll	a5,a5,0x2
80006f04:	00170713          	add	a4,a4,1
80006f08:	00ff87b3          	add	a5,t6,a5
80006f0c:	01071713          	sll	a4,a4,0x10
80006f10:	00980493          	add	s1,a6,9
80006f14:	0007a683          	lw	a3,0(a5)
80006f18:	01075713          	srl	a4,a4,0x10
80006f1c:	f864eae3          	bltu	s1,t1,80006eb0 <core_init_state+0xa8>
80006f20:	0ca87a63          	bgeu	a6,a0,80006ff4 <core_init_state+0x1ec>
80006f24:	00180793          	add	a5,a6,1
80006f28:	00100613          	li	a2,1
80006f2c:	0af57663          	bgeu	a0,a5,80006fd8 <core_init_state+0x1d0>
80006f30:	00c12403          	lw	s0,12(sp)
80006f34:	00812483          	lw	s1,8(sp)
80006f38:	00412903          	lw	s2,4(sp)
80006f3c:	00012983          	lw	s3,0(sp)
80006f40:	00000593          	li	a1,0
80006f44:	01088533          	add	a0,a7,a6
80006f48:	01010113          	add	sp,sp,16
80006f4c:	dadfb06f          	j	80002cf8 <memset>
80006f50:	00170713          	add	a4,a4,1
80006f54:	00fe07b3          	add	a5,t3,a5
80006f58:	01071713          	sll	a4,a4,0x10
80006f5c:	00580493          	add	s1,a6,5
80006f60:	0007a683          	lw	a3,0(a5)
80006f64:	00180913          	add	s2,a6,1
80006f68:	01075713          	srl	a4,a4,0x10
80006f6c:	fa64fae3          	bgeu	s1,t1,80006f20 <core_init_state+0x118>
80006f70:	0006c983          	lbu	s3,0(a3)
80006f74:	01088433          	add	s0,a7,a6
80006f78:	00400793          	li	a5,4
80006f7c:	01340023          	sb	s3,0(s0)
80006f80:	0016c803          	lbu	a6,1(a3)
80006f84:	01288933          	add	s2,a7,s2
80006f88:	01090023          	sb	a6,0(s2)
80006f8c:	0026c803          	lbu	a6,2(a3)
80006f90:	01040123          	sb	a6,2(s0)
80006f94:	0036c803          	lbu	a6,3(a3)
80006f98:	010401a3          	sb	a6,3(s0)
80006f9c:	f4b784e3          	beq	a5,a1,80006ee4 <core_init_state+0xdc>
80006fa0:	0046c803          	lbu	a6,4(a3)
80006fa4:	00800793          	li	a5,8
80006fa8:	01040223          	sb	a6,4(s0)
80006fac:	0056c803          	lbu	a6,5(a3)
80006fb0:	010402a3          	sb	a6,5(s0)
80006fb4:	0066c803          	lbu	a6,6(a3)
80006fb8:	01040323          	sb	a6,6(s0)
80006fbc:	0076c683          	lbu	a3,7(a3)
80006fc0:	00d403a3          	sb	a3,7(s0)
80006fc4:	f21ff06f          	j	80006ee4 <core_init_state+0xdc>
80006fc8:	00279793          	sll	a5,a5,0x2
80006fcc:	00ff07b3          	add	a5,t5,a5
80006fd0:	0007a683          	lw	a3,0(a5)
80006fd4:	ec9ff06f          	j	80006e9c <core_init_state+0x94>
80006fd8:	41050633          	sub	a2,a0,a6
80006fdc:	f55ff06f          	j	80006f30 <core_init_state+0x128>
80006fe0:	0006c983          	lbu	s3,0(a3)
80006fe4:	00180913          	add	s2,a6,1
80006fe8:	00800793          	li	a5,8
80006fec:	01340023          	sb	s3,0(s0)
80006ff0:	f91ff06f          	j	80006f80 <core_init_state+0x178>
80006ff4:	00c12403          	lw	s0,12(sp)
80006ff8:	00812483          	lw	s1,8(sp)
80006ffc:	00412903          	lw	s2,4(sp)
80007000:	00012983          	lw	s3,0(sp)
80007004:	01010113          	add	sp,sp,16
80007008:	00008067          	ret
8000700c:	00000813          	li	a6,0
80007010:	00180793          	add	a5,a6,1
80007014:	00100613          	li	a2,1
80007018:	00f56463          	bltu	a0,a5,80007020 <core_init_state+0x218>
8000701c:	41050633          	sub	a2,a0,a6
80007020:	00000593          	li	a1,0
80007024:	01088533          	add	a0,a7,a6
80007028:	cd1fb06f          	j	80002cf8 <memset>

8000702c <core_state_transition>:
8000702c:	00052783          	lw	a5,0(a0)
80007030:	00050813          	mv	a6,a0
80007034:	0007c703          	lbu	a4,0(a5)
80007038:	28070463          	beqz	a4,800072c0 <core_state_transition+0x294>
8000703c:	02c00693          	li	a3,44
80007040:	00000513          	li	a0,0
80007044:	20d70c63          	beq	a4,a3,8000725c <core_state_transition+0x230>
80007048:	02e00513          	li	a0,46
8000704c:	22a70863          	beq	a4,a0,8000727c <core_state_transition+0x250>
80007050:	1ce56c63          	bltu	a0,a4,80007228 <core_state_transition+0x1fc>
80007054:	fd570713          	add	a4,a4,-43
80007058:	0fd77713          	and	a4,a4,253
8000705c:	02070663          	beqz	a4,80007088 <core_state_transition+0x5c>
80007060:	0045a683          	lw	a3,4(a1)
80007064:	0005a703          	lw	a4,0(a1)
80007068:	00178793          	add	a5,a5,1
8000706c:	00168693          	add	a3,a3,1
80007070:	00170713          	add	a4,a4,1
80007074:	00d5a223          	sw	a3,4(a1)
80007078:	00e5a023          	sw	a4,0(a1)
8000707c:	00100513          	li	a0,1
80007080:	00f82023          	sw	a5,0(a6)
80007084:	00008067          	ret
80007088:	0005a703          	lw	a4,0(a1)
8000708c:	00178613          	add	a2,a5,1
80007090:	00170713          	add	a4,a4,1
80007094:	00e5a023          	sw	a4,0(a1)
80007098:	0017c883          	lbu	a7,1(a5)
8000709c:	26088863          	beqz	a7,8000730c <core_state_transition+0x2e0>
800070a0:	20d88863          	beq	a7,a3,800072b0 <core_state_transition+0x284>
800070a4:	0085a683          	lw	a3,8(a1)
800070a8:	fd088713          	add	a4,a7,-48
800070ac:	0ff77713          	zext.b	a4,a4
800070b0:	00900313          	li	t1,9
800070b4:	00168693          	add	a3,a3,1
800070b8:	00e37e63          	bgeu	t1,a4,800070d4 <core_state_transition+0xa8>
800070bc:	1ea88663          	beq	a7,a0,800072a8 <core_state_transition+0x27c>
800070c0:	00d5a423          	sw	a3,8(a1)
800070c4:	00278793          	add	a5,a5,2
800070c8:	00100513          	li	a0,1
800070cc:	00f82023          	sw	a5,0(a6)
800070d0:	00008067          	ret
800070d4:	00d5a423          	sw	a3,8(a1)
800070d8:	00164783          	lbu	a5,1(a2)
800070dc:	00160613          	add	a2,a2,1
800070e0:	1e078463          	beqz	a5,800072c8 <core_state_transition+0x29c>
800070e4:	02c00713          	li	a4,44
800070e8:	16e78663          	beq	a5,a4,80007254 <core_state_transition+0x228>
800070ec:	02e00713          	li	a4,46
800070f0:	02e78863          	beq	a5,a4,80007120 <core_state_transition+0xf4>
800070f4:	fd078793          	add	a5,a5,-48
800070f8:	0ff7f793          	zext.b	a5,a5
800070fc:	00900713          	li	a4,9
80007100:	fcf77ce3          	bgeu	a4,a5,800070d8 <core_state_transition+0xac>
80007104:	0105a703          	lw	a4,16(a1)
80007108:	00160793          	add	a5,a2,1
8000710c:	00100513          	li	a0,1
80007110:	00170713          	add	a4,a4,1
80007114:	00e5a823          	sw	a4,16(a1)
80007118:	00f82023          	sw	a5,0(a6)
8000711c:	00008067          	ret
80007120:	0105a783          	lw	a5,16(a1)
80007124:	00178793          	add	a5,a5,1
80007128:	00f5a823          	sw	a5,16(a1)
8000712c:	0140006f          	j	80007140 <core_state_transition+0x114>
80007130:	fd078793          	add	a5,a5,-48
80007134:	0ff7f793          	zext.b	a5,a5
80007138:	00900713          	li	a4,9
8000713c:	12f76463          	bltu	a4,a5,80007264 <core_state_transition+0x238>
80007140:	00164783          	lbu	a5,1(a2)
80007144:	00160613          	add	a2,a2,1
80007148:	1a078c63          	beqz	a5,80007300 <core_state_transition+0x2d4>
8000714c:	02c00713          	li	a4,44
80007150:	14e78463          	beq	a5,a4,80007298 <core_state_transition+0x26c>
80007154:	0df7f713          	and	a4,a5,223
80007158:	04500693          	li	a3,69
8000715c:	fcd71ae3          	bne	a4,a3,80007130 <core_state_transition+0x104>
80007160:	0145a703          	lw	a4,20(a1)
80007164:	00160793          	add	a5,a2,1
80007168:	00300513          	li	a0,3
8000716c:	00170713          	add	a4,a4,1
80007170:	00e5aa23          	sw	a4,20(a1)
80007174:	00164703          	lbu	a4,1(a2)
80007178:	f00704e3          	beqz	a4,80007080 <core_state_transition+0x54>
8000717c:	02c00693          	li	a3,44
80007180:	14d70a63          	beq	a4,a3,800072d4 <core_state_transition+0x2a8>
80007184:	00c5a783          	lw	a5,12(a1)
80007188:	fd570713          	add	a4,a4,-43
8000718c:	0fd77713          	and	a4,a4,253
80007190:	00178793          	add	a5,a5,1
80007194:	00f5a623          	sw	a5,12(a1)
80007198:	00070a63          	beqz	a4,800071ac <core_state_transition+0x180>
8000719c:	00260793          	add	a5,a2,2
800071a0:	00100513          	li	a0,1
800071a4:	00f82023          	sw	a5,0(a6)
800071a8:	00008067          	ret
800071ac:	00264703          	lbu	a4,2(a2)
800071b0:	00260793          	add	a5,a2,2
800071b4:	00600513          	li	a0,6
800071b8:	ec0704e3          	beqz	a4,80007080 <core_state_transition+0x54>
800071bc:	12d70263          	beq	a4,a3,800072e0 <core_state_transition+0x2b4>
800071c0:	0185a683          	lw	a3,24(a1)
800071c4:	fd070713          	add	a4,a4,-48
800071c8:	0ff77713          	zext.b	a4,a4
800071cc:	00168693          	add	a3,a3,1
800071d0:	00900513          	li	a0,9
800071d4:	00d5ac23          	sw	a3,24(a1)
800071d8:	00e57863          	bgeu	a0,a4,800071e8 <core_state_transition+0x1bc>
800071dc:	00360793          	add	a5,a2,3
800071e0:	00100513          	li	a0,1
800071e4:	e9dff06f          	j	80007080 <core_state_transition+0x54>
800071e8:	00900613          	li	a2,9
800071ec:	0017c683          	lbu	a3,1(a5)
800071f0:	00078513          	mv	a0,a5
800071f4:	02c00893          	li	a7,44
800071f8:	fd068713          	add	a4,a3,-48
800071fc:	00178793          	add	a5,a5,1
80007200:	0ff77713          	zext.b	a4,a4
80007204:	0e068463          	beqz	a3,800072ec <core_state_transition+0x2c0>
80007208:	0f168663          	beq	a3,a7,800072f4 <core_state_transition+0x2c8>
8000720c:	fee670e3          	bgeu	a2,a4,800071ec <core_state_transition+0x1c0>
80007210:	0045a703          	lw	a4,4(a1)
80007214:	00250793          	add	a5,a0,2
80007218:	00100513          	li	a0,1
8000721c:	00170713          	add	a4,a4,1
80007220:	00e5a223          	sw	a4,4(a1)
80007224:	e5dff06f          	j	80007080 <core_state_transition+0x54>
80007228:	fd070713          	add	a4,a4,-48
8000722c:	0ff77713          	zext.b	a4,a4
80007230:	00900613          	li	a2,9
80007234:	e2e666e3          	bltu	a2,a4,80007060 <core_state_transition+0x34>
80007238:	0005a703          	lw	a4,0(a1)
8000723c:	00178613          	add	a2,a5,1
80007240:	00170713          	add	a4,a4,1
80007244:	00e5a023          	sw	a4,0(a1)
80007248:	0017c783          	lbu	a5,1(a5)
8000724c:	06078e63          	beqz	a5,800072c8 <core_state_transition+0x29c>
80007250:	e8d79ee3          	bne	a5,a3,800070ec <core_state_transition+0xc0>
80007254:	00060793          	mv	a5,a2
80007258:	00400513          	li	a0,4
8000725c:	00178793          	add	a5,a5,1
80007260:	e21ff06f          	j	80007080 <core_state_transition+0x54>
80007264:	0145a703          	lw	a4,20(a1)
80007268:	00160793          	add	a5,a2,1
8000726c:	00100513          	li	a0,1
80007270:	00170713          	add	a4,a4,1
80007274:	00e5aa23          	sw	a4,20(a1)
80007278:	e09ff06f          	j	80007080 <core_state_transition+0x54>
8000727c:	0005a703          	lw	a4,0(a1)
80007280:	00178613          	add	a2,a5,1
80007284:	00170713          	add	a4,a4,1
80007288:	00e5a023          	sw	a4,0(a1)
8000728c:	0017c783          	lbu	a5,1(a5)
80007290:	06078863          	beqz	a5,80007300 <core_state_transition+0x2d4>
80007294:	ecd790e3          	bne	a5,a3,80007154 <core_state_transition+0x128>
80007298:	00060793          	mv	a5,a2
8000729c:	00500513          	li	a0,5
800072a0:	00178793          	add	a5,a5,1
800072a4:	dddff06f          	j	80007080 <core_state_transition+0x54>
800072a8:	00d5a423          	sw	a3,8(a1)
800072ac:	e95ff06f          	j	80007140 <core_state_transition+0x114>
800072b0:	00060793          	mv	a5,a2
800072b4:	00200513          	li	a0,2
800072b8:	00178793          	add	a5,a5,1
800072bc:	dc5ff06f          	j	80007080 <core_state_transition+0x54>
800072c0:	00000513          	li	a0,0
800072c4:	dbdff06f          	j	80007080 <core_state_transition+0x54>
800072c8:	00060793          	mv	a5,a2
800072cc:	00400513          	li	a0,4
800072d0:	db1ff06f          	j	80007080 <core_state_transition+0x54>
800072d4:	00300513          	li	a0,3
800072d8:	00178793          	add	a5,a5,1
800072dc:	da5ff06f          	j	80007080 <core_state_transition+0x54>
800072e0:	00600513          	li	a0,6
800072e4:	00178793          	add	a5,a5,1
800072e8:	d99ff06f          	j	80007080 <core_state_transition+0x54>
800072ec:	00700513          	li	a0,7
800072f0:	d91ff06f          	j	80007080 <core_state_transition+0x54>
800072f4:	00700513          	li	a0,7
800072f8:	00178793          	add	a5,a5,1
800072fc:	d85ff06f          	j	80007080 <core_state_transition+0x54>
80007300:	00060793          	mv	a5,a2
80007304:	00500513          	li	a0,5
80007308:	d79ff06f          	j	80007080 <core_state_transition+0x54>
8000730c:	00060793          	mv	a5,a2
80007310:	00200513          	li	a0,2
80007314:	d6dff06f          	j	80007080 <core_state_transition+0x54>

80007318 <core_bench_state>:
80007318:	f8010113          	add	sp,sp,-128
8000731c:	06812c23          	sw	s0,120(sp)
80007320:	06912a23          	sw	s1,116(sp)
80007324:	07212823          	sw	s2,112(sp)
80007328:	07312623          	sw	s3,108(sp)
8000732c:	07412423          	sw	s4,104(sp)
80007330:	07512223          	sw	s5,100(sp)
80007334:	07612023          	sw	s6,96(sp)
80007338:	05712e23          	sw	s7,92(sp)
8000733c:	06112e23          	sw	ra,124(sp)
80007340:	00058413          	mv	s0,a1
80007344:	0005c583          	lbu	a1,0(a1)
80007348:	00812623          	sw	s0,12(sp)
8000734c:	02012823          	sw	zero,48(sp)
80007350:	00012823          	sw	zero,16(sp)
80007354:	02012a23          	sw	zero,52(sp)
80007358:	02012c23          	sw	zero,56(sp)
8000735c:	02012e23          	sw	zero,60(sp)
80007360:	04012023          	sw	zero,64(sp)
80007364:	04012223          	sw	zero,68(sp)
80007368:	04012423          	sw	zero,72(sp)
8000736c:	04012623          	sw	zero,76(sp)
80007370:	00012a23          	sw	zero,20(sp)
80007374:	00012c23          	sw	zero,24(sp)
80007378:	00012e23          	sw	zero,28(sp)
8000737c:	02012023          	sw	zero,32(sp)
80007380:	02012223          	sw	zero,36(sp)
80007384:	02012423          	sw	zero,40(sp)
80007388:	02012623          	sw	zero,44(sp)
8000738c:	03010913          	add	s2,sp,48
80007390:	00050b13          	mv	s6,a0
80007394:	00060b93          	mv	s7,a2
80007398:	00068a13          	mv	s4,a3
8000739c:	00070a93          	mv	s5,a4
800073a0:	00078493          	mv	s1,a5
800073a4:	00c10993          	add	s3,sp,12
800073a8:	18058663          	beqz	a1,80007534 <core_bench_state+0x21c>
800073ac:	00090593          	mv	a1,s2
800073b0:	00098513          	mv	a0,s3
800073b4:	c79ff0ef          	jal	8000702c <core_state_transition>
800073b8:	00251813          	sll	a6,a0,0x2
800073bc:	05080793          	add	a5,a6,80
800073c0:	00278833          	add	a6,a5,sp
800073c4:	00c12703          	lw	a4,12(sp)
800073c8:	fc082783          	lw	a5,-64(a6)
800073cc:	00074703          	lbu	a4,0(a4)
800073d0:	00178793          	add	a5,a5,1
800073d4:	fcf82023          	sw	a5,-64(a6)
800073d8:	fc071ae3          	bnez	a4,800073ac <core_bench_state+0x94>
800073dc:	00812623          	sw	s0,12(sp)
800073e0:	01640b33          	add	s6,s0,s6
800073e4:	03647c63          	bgeu	s0,s6,8000741c <core_bench_state+0x104>
800073e8:	00100713          	li	a4,1
800073ec:	00040793          	mv	a5,s0
800073f0:	02c00613          	li	a2,44
800073f4:	0eea9263          	bne	s5,a4,800074d8 <core_bench_state+0x1c0>
800073f8:	0007c703          	lbu	a4,0(a5)
800073fc:	017746b3          	xor	a3,a4,s7
80007400:	00c70463          	beq	a4,a2,80007408 <core_bench_state+0xf0>
80007404:	00d78023          	sb	a3,0(a5)
80007408:	00178793          	add	a5,a5,1
8000740c:	ff67e6e3          	bltu	a5,s6,800073f8 <core_bench_state+0xe0>
80007410:	00044783          	lbu	a5,0(s0)
80007414:	00c10993          	add	s3,sp,12
80007418:	10078863          	beqz	a5,80007528 <core_bench_state+0x210>
8000741c:	00090593          	mv	a1,s2
80007420:	00098513          	mv	a0,s3
80007424:	c09ff0ef          	jal	8000702c <core_state_transition>
80007428:	00251613          	sll	a2,a0,0x2
8000742c:	05060793          	add	a5,a2,80
80007430:	00278633          	add	a2,a5,sp
80007434:	00c12703          	lw	a4,12(sp)
80007438:	fc062783          	lw	a5,-64(a2)
8000743c:	00074703          	lbu	a4,0(a4)
80007440:	00178793          	add	a5,a5,1
80007444:	fcf62023          	sw	a5,-64(a2)
80007448:	fc071ae3          	bnez	a4,8000741c <core_bench_state+0x104>
8000744c:	00812623          	sw	s0,12(sp)
80007450:	03647663          	bgeu	s0,s6,8000747c <core_bench_state+0x164>
80007454:	00100793          	li	a5,1
80007458:	0afa9663          	bne	s5,a5,80007504 <core_bench_state+0x1ec>
8000745c:	00040713          	mv	a4,s0
80007460:	02c00613          	li	a2,44
80007464:	00074783          	lbu	a5,0(a4)
80007468:	0147c6b3          	xor	a3,a5,s4
8000746c:	00c78463          	beq	a5,a2,80007474 <core_bench_state+0x15c>
80007470:	00d70023          	sb	a3,0(a4)
80007474:	00170713          	add	a4,a4,1
80007478:	ff6766e3          	bltu	a4,s6,80007464 <core_bench_state+0x14c>
8000747c:	01010413          	add	s0,sp,16
80007480:	00090993          	mv	s3,s2
80007484:	00042503          	lw	a0,0(s0)
80007488:	00048593          	mv	a1,s1
8000748c:	00440413          	add	s0,s0,4
80007490:	360000ef          	jal	800077f0 <crcu32>
80007494:	00050593          	mv	a1,a0
80007498:	0009a503          	lw	a0,0(s3)
8000749c:	00498993          	add	s3,s3,4
800074a0:	350000ef          	jal	800077f0 <crcu32>
800074a4:	00050493          	mv	s1,a0
800074a8:	fc891ee3          	bne	s2,s0,80007484 <core_bench_state+0x16c>
800074ac:	07c12083          	lw	ra,124(sp)
800074b0:	07812403          	lw	s0,120(sp)
800074b4:	07412483          	lw	s1,116(sp)
800074b8:	07012903          	lw	s2,112(sp)
800074bc:	06c12983          	lw	s3,108(sp)
800074c0:	06812a03          	lw	s4,104(sp)
800074c4:	06412a83          	lw	s5,100(sp)
800074c8:	06012b03          	lw	s6,96(sp)
800074cc:	05c12b83          	lw	s7,92(sp)
800074d0:	08010113          	add	sp,sp,128
800074d4:	00008067          	ret
800074d8:	0007c703          	lbu	a4,0(a5)
800074dc:	017746b3          	xor	a3,a4,s7
800074e0:	00c70463          	beq	a4,a2,800074e8 <core_bench_state+0x1d0>
800074e4:	00d78023          	sb	a3,0(a5)
800074e8:	015787b3          	add	a5,a5,s5
800074ec:	ff67e6e3          	bltu	a5,s6,800074d8 <core_bench_state+0x1c0>
800074f0:	00044783          	lbu	a5,0(s0)
800074f4:	00c10993          	add	s3,sp,12
800074f8:	f20792e3          	bnez	a5,8000741c <core_bench_state+0x104>
800074fc:	00812623          	sw	s0,12(sp)
80007500:	f7647ee3          	bgeu	s0,s6,8000747c <core_bench_state+0x164>
80007504:	00040713          	mv	a4,s0
80007508:	02c00613          	li	a2,44
8000750c:	00074783          	lbu	a5,0(a4)
80007510:	0147c6b3          	xor	a3,a5,s4
80007514:	00c78463          	beq	a5,a2,8000751c <core_bench_state+0x204>
80007518:	00d70023          	sb	a3,0(a4)
8000751c:	01570733          	add	a4,a4,s5
80007520:	ff6766e3          	bltu	a4,s6,8000750c <core_bench_state+0x1f4>
80007524:	f59ff06f          	j	8000747c <core_bench_state+0x164>
80007528:	00812623          	sw	s0,12(sp)
8000752c:	f36468e3          	bltu	s0,s6,8000745c <core_bench_state+0x144>
80007530:	f4dff06f          	j	8000747c <core_bench_state+0x164>
80007534:	00a40b33          	add	s6,s0,a0
80007538:	eb6468e3          	bltu	s0,s6,800073e8 <core_bench_state+0xd0>
8000753c:	f41ff06f          	j	8000747c <core_bench_state+0x164>

80007540 <get_seed_32>:
80007540:	00500793          	li	a5,5
80007544:	04a7ec63          	bltu	a5,a0,8000759c <get_seed_32+0x5c>
80007548:	a00017b7          	lui	a5,0xa0001
8000754c:	dd878793          	add	a5,a5,-552 # a0000dd8 <intpat+0x10>
80007550:	00251513          	sll	a0,a0,0x2
80007554:	00f50533          	add	a0,a0,a5
80007558:	00052783          	lw	a5,0(a0)
8000755c:	00078067          	jr	a5
80007560:	a00017b7          	lui	a5,0xa0001
80007564:	eb07a503          	lw	a0,-336(a5) # a0000eb0 <seed5_volatile>
80007568:	00008067          	ret
8000756c:	a00017b7          	lui	a5,0xa0001
80007570:	eb87a503          	lw	a0,-328(a5) # a0000eb8 <seed1_volatile>
80007574:	00008067          	ret
80007578:	a00017b7          	lui	a5,0xa0001
8000757c:	eb47a503          	lw	a0,-332(a5) # a0000eb4 <seed2_volatile>
80007580:	00008067          	ret
80007584:	a00017b7          	lui	a5,0xa0001
80007588:	e947a503          	lw	a0,-364(a5) # a0000e94 <seed3_volatile>
8000758c:	00008067          	ret
80007590:	a00017b7          	lui	a5,0xa0001
80007594:	e907a503          	lw	a0,-368(a5) # a0000e90 <seed4_volatile>
80007598:	00008067          	ret
8000759c:	00000513          	li	a0,0
800075a0:	00008067          	ret

800075a4 <crcu16>:
800075a4:	0ff57793          	zext.b	a5,a0
800075a8:	00b7c6b3          	xor	a3,a5,a1
800075ac:	0016f693          	and	a3,a3,1
800075b0:	ffffa737          	lui	a4,0xffffa
800075b4:	00170713          	add	a4,a4,1 # ffffa001 <__stack_base+0x3fffa001>
800075b8:	40d006b3          	neg	a3,a3
800075bc:	00e6f6b3          	and	a3,a3,a4
800075c0:	0015d593          	srl	a1,a1,0x1
800075c4:	00b6c6b3          	xor	a3,a3,a1
800075c8:	01069693          	sll	a3,a3,0x10
800075cc:	0106d693          	srl	a3,a3,0x10
800075d0:	0017d613          	srl	a2,a5,0x1
800075d4:	00d64633          	xor	a2,a2,a3
800075d8:	00167613          	and	a2,a2,1
800075dc:	40c00633          	neg	a2,a2
800075e0:	00e67633          	and	a2,a2,a4
800075e4:	0016d693          	srl	a3,a3,0x1
800075e8:	00d64633          	xor	a2,a2,a3
800075ec:	01061613          	sll	a2,a2,0x10
800075f0:	01065613          	srl	a2,a2,0x10
800075f4:	0027d693          	srl	a3,a5,0x2
800075f8:	00c6c6b3          	xor	a3,a3,a2
800075fc:	0016f693          	and	a3,a3,1
80007600:	40d006b3          	neg	a3,a3
80007604:	00e6f6b3          	and	a3,a3,a4
80007608:	00165613          	srl	a2,a2,0x1
8000760c:	00c6c6b3          	xor	a3,a3,a2
80007610:	01069693          	sll	a3,a3,0x10
80007614:	0106d693          	srl	a3,a3,0x10
80007618:	0037d613          	srl	a2,a5,0x3
8000761c:	00d64633          	xor	a2,a2,a3
80007620:	00167613          	and	a2,a2,1
80007624:	40c00633          	neg	a2,a2
80007628:	00e67633          	and	a2,a2,a4
8000762c:	0016d693          	srl	a3,a3,0x1
80007630:	00d64633          	xor	a2,a2,a3
80007634:	01061613          	sll	a2,a2,0x10
80007638:	01065613          	srl	a2,a2,0x10
8000763c:	0047d693          	srl	a3,a5,0x4
80007640:	00c6c6b3          	xor	a3,a3,a2
80007644:	0016f693          	and	a3,a3,1
80007648:	40d006b3          	neg	a3,a3
8000764c:	00e6f6b3          	and	a3,a3,a4
80007650:	00165613          	srl	a2,a2,0x1
80007654:	00c6c6b3          	xor	a3,a3,a2
80007658:	01069693          	sll	a3,a3,0x10
8000765c:	0106d693          	srl	a3,a3,0x10
80007660:	0057d613          	srl	a2,a5,0x5
80007664:	00d64633          	xor	a2,a2,a3
80007668:	00167613          	and	a2,a2,1
8000766c:	40c00633          	neg	a2,a2
80007670:	00e67633          	and	a2,a2,a4
80007674:	0016d693          	srl	a3,a3,0x1
80007678:	00d64633          	xor	a2,a2,a3
8000767c:	01061613          	sll	a2,a2,0x10
80007680:	01065613          	srl	a2,a2,0x10
80007684:	0067d693          	srl	a3,a5,0x6
80007688:	00c6c6b3          	xor	a3,a3,a2
8000768c:	0016f693          	and	a3,a3,1
80007690:	40d006b3          	neg	a3,a3
80007694:	00e6f6b3          	and	a3,a3,a4
80007698:	00165613          	srl	a2,a2,0x1
8000769c:	00c6c6b3          	xor	a3,a3,a2
800076a0:	01069693          	sll	a3,a3,0x10
800076a4:	0106d693          	srl	a3,a3,0x10
800076a8:	0077d793          	srl	a5,a5,0x7
800076ac:	00d7c7b3          	xor	a5,a5,a3
800076b0:	0017f793          	and	a5,a5,1
800076b4:	40f007b3          	neg	a5,a5
800076b8:	00e7f7b3          	and	a5,a5,a4
800076bc:	0016d693          	srl	a3,a3,0x1
800076c0:	00d7c7b3          	xor	a5,a5,a3
800076c4:	01079793          	sll	a5,a5,0x10
800076c8:	00855513          	srl	a0,a0,0x8
800076cc:	0107d793          	srl	a5,a5,0x10
800076d0:	00f546b3          	xor	a3,a0,a5
800076d4:	0016f693          	and	a3,a3,1
800076d8:	40d006b3          	neg	a3,a3
800076dc:	00e6f6b3          	and	a3,a3,a4
800076e0:	0017d793          	srl	a5,a5,0x1
800076e4:	00f6c7b3          	xor	a5,a3,a5
800076e8:	01079793          	sll	a5,a5,0x10
800076ec:	0107d793          	srl	a5,a5,0x10
800076f0:	00155693          	srl	a3,a0,0x1
800076f4:	00f6c6b3          	xor	a3,a3,a5
800076f8:	0016f693          	and	a3,a3,1
800076fc:	40d006b3          	neg	a3,a3
80007700:	00e6f6b3          	and	a3,a3,a4
80007704:	0017d793          	srl	a5,a5,0x1
80007708:	00f6c6b3          	xor	a3,a3,a5
8000770c:	01069693          	sll	a3,a3,0x10
80007710:	0106d693          	srl	a3,a3,0x10
80007714:	00255793          	srl	a5,a0,0x2
80007718:	00d7c7b3          	xor	a5,a5,a3
8000771c:	0017f793          	and	a5,a5,1
80007720:	40f007b3          	neg	a5,a5
80007724:	00e7f7b3          	and	a5,a5,a4
80007728:	0016d693          	srl	a3,a3,0x1
8000772c:	00d7c7b3          	xor	a5,a5,a3
80007730:	01079793          	sll	a5,a5,0x10
80007734:	0107d793          	srl	a5,a5,0x10
80007738:	00355693          	srl	a3,a0,0x3
8000773c:	00f6c6b3          	xor	a3,a3,a5
80007740:	0016f693          	and	a3,a3,1
80007744:	40d006b3          	neg	a3,a3
80007748:	00e6f6b3          	and	a3,a3,a4
8000774c:	0017d793          	srl	a5,a5,0x1
80007750:	00f6c6b3          	xor	a3,a3,a5
80007754:	01069693          	sll	a3,a3,0x10
80007758:	0106d693          	srl	a3,a3,0x10
8000775c:	00455793          	srl	a5,a0,0x4
80007760:	00d7c7b3          	xor	a5,a5,a3
80007764:	0017f793          	and	a5,a5,1
80007768:	40f007b3          	neg	a5,a5
8000776c:	00e7f7b3          	and	a5,a5,a4
80007770:	0016d693          	srl	a3,a3,0x1
80007774:	00d7c7b3          	xor	a5,a5,a3
80007778:	01079793          	sll	a5,a5,0x10
8000777c:	0107d793          	srl	a5,a5,0x10
80007780:	00555693          	srl	a3,a0,0x5
80007784:	00f6c6b3          	xor	a3,a3,a5
80007788:	0016f693          	and	a3,a3,1
8000778c:	40d006b3          	neg	a3,a3
80007790:	00e6f6b3          	and	a3,a3,a4
80007794:	0017d793          	srl	a5,a5,0x1
80007798:	00f6c6b3          	xor	a3,a3,a5
8000779c:	01069693          	sll	a3,a3,0x10
800077a0:	0106d693          	srl	a3,a3,0x10
800077a4:	00655793          	srl	a5,a0,0x6
800077a8:	00d7c7b3          	xor	a5,a5,a3
800077ac:	0017f793          	and	a5,a5,1
800077b0:	40f007b3          	neg	a5,a5
800077b4:	00e7f7b3          	and	a5,a5,a4
800077b8:	0016d693          	srl	a3,a3,0x1
800077bc:	00d7c7b3          	xor	a5,a5,a3
800077c0:	01079793          	sll	a5,a5,0x10
800077c4:	0107d793          	srl	a5,a5,0x10
800077c8:	00755513          	srl	a0,a0,0x7
800077cc:	00f54533          	xor	a0,a0,a5
800077d0:	00157513          	and	a0,a0,1
800077d4:	40a00533          	neg	a0,a0
800077d8:	00e57533          	and	a0,a0,a4
800077dc:	0017d793          	srl	a5,a5,0x1
800077e0:	00f54533          	xor	a0,a0,a5
800077e4:	01051513          	sll	a0,a0,0x10
800077e8:	01055513          	srl	a0,a0,0x10
800077ec:	00008067          	ret

800077f0 <crcu32>:
800077f0:	0ff57713          	zext.b	a4,a0
800077f4:	00b74633          	xor	a2,a4,a1
800077f8:	00167613          	and	a2,a2,1
800077fc:	ffffa7b7          	lui	a5,0xffffa
80007800:	00178793          	add	a5,a5,1 # ffffa001 <__stack_base+0x3fffa001>
80007804:	40c00633          	neg	a2,a2
80007808:	00f67633          	and	a2,a2,a5
8000780c:	0015d593          	srl	a1,a1,0x1
80007810:	00b64633          	xor	a2,a2,a1
80007814:	01061613          	sll	a2,a2,0x10
80007818:	01065613          	srl	a2,a2,0x10
8000781c:	00175693          	srl	a3,a4,0x1
80007820:	00c6c6b3          	xor	a3,a3,a2
80007824:	0016f693          	and	a3,a3,1
80007828:	40d006b3          	neg	a3,a3
8000782c:	00f6f6b3          	and	a3,a3,a5
80007830:	00165613          	srl	a2,a2,0x1
80007834:	00c6c6b3          	xor	a3,a3,a2
80007838:	01069693          	sll	a3,a3,0x10
8000783c:	0106d693          	srl	a3,a3,0x10
80007840:	00275613          	srl	a2,a4,0x2
80007844:	00d64633          	xor	a2,a2,a3
80007848:	00167613          	and	a2,a2,1
8000784c:	40c00633          	neg	a2,a2
80007850:	00f67633          	and	a2,a2,a5
80007854:	0016d693          	srl	a3,a3,0x1
80007858:	00d64633          	xor	a2,a2,a3
8000785c:	01061613          	sll	a2,a2,0x10
80007860:	01065613          	srl	a2,a2,0x10
80007864:	00375693          	srl	a3,a4,0x3
80007868:	00c6c6b3          	xor	a3,a3,a2
8000786c:	0016f693          	and	a3,a3,1
80007870:	40d006b3          	neg	a3,a3
80007874:	00f6f6b3          	and	a3,a3,a5
80007878:	00165613          	srl	a2,a2,0x1
8000787c:	00c6c6b3          	xor	a3,a3,a2
80007880:	01069693          	sll	a3,a3,0x10
80007884:	0106d693          	srl	a3,a3,0x10
80007888:	00475613          	srl	a2,a4,0x4
8000788c:	00d64633          	xor	a2,a2,a3
80007890:	00167613          	and	a2,a2,1
80007894:	40c00633          	neg	a2,a2
80007898:	00f67633          	and	a2,a2,a5
8000789c:	0016d693          	srl	a3,a3,0x1
800078a0:	00d64633          	xor	a2,a2,a3
800078a4:	01061613          	sll	a2,a2,0x10
800078a8:	01065613          	srl	a2,a2,0x10
800078ac:	00575693          	srl	a3,a4,0x5
800078b0:	00c6c6b3          	xor	a3,a3,a2
800078b4:	0016f693          	and	a3,a3,1
800078b8:	40d006b3          	neg	a3,a3
800078bc:	00f6f6b3          	and	a3,a3,a5
800078c0:	00165613          	srl	a2,a2,0x1
800078c4:	00c6c6b3          	xor	a3,a3,a2
800078c8:	01069693          	sll	a3,a3,0x10
800078cc:	0106d693          	srl	a3,a3,0x10
800078d0:	00675613          	srl	a2,a4,0x6
800078d4:	00d64633          	xor	a2,a2,a3
800078d8:	00167613          	and	a2,a2,1
800078dc:	40c00633          	neg	a2,a2
800078e0:	00f67633          	and	a2,a2,a5
800078e4:	0016d693          	srl	a3,a3,0x1
800078e8:	00d64633          	xor	a2,a2,a3
800078ec:	01061613          	sll	a2,a2,0x10
800078f0:	01065613          	srl	a2,a2,0x10
800078f4:	00775693          	srl	a3,a4,0x7
800078f8:	00c6c6b3          	xor	a3,a3,a2
800078fc:	0016f693          	and	a3,a3,1
80007900:	40d006b3          	neg	a3,a3
80007904:	00f6f6b3          	and	a3,a3,a5
80007908:	00165613          	srl	a2,a2,0x1
8000790c:	00c6c6b3          	xor	a3,a3,a2
80007910:	01051713          	sll	a4,a0,0x10
80007914:	01075713          	srl	a4,a4,0x10
80007918:	01069693          	sll	a3,a3,0x10
8000791c:	00875713          	srl	a4,a4,0x8
80007920:	0106d693          	srl	a3,a3,0x10
80007924:	00d74633          	xor	a2,a4,a3
80007928:	00167613          	and	a2,a2,1
8000792c:	40c00633          	neg	a2,a2
80007930:	00f67633          	and	a2,a2,a5
80007934:	0016d693          	srl	a3,a3,0x1
80007938:	00d64633          	xor	a2,a2,a3
8000793c:	01061613          	sll	a2,a2,0x10
80007940:	01065613          	srl	a2,a2,0x10
80007944:	00175693          	srl	a3,a4,0x1
80007948:	00c6c6b3          	xor	a3,a3,a2
8000794c:	0016f693          	and	a3,a3,1
80007950:	40d006b3          	neg	a3,a3
80007954:	00f6f6b3          	and	a3,a3,a5
80007958:	00165613          	srl	a2,a2,0x1
8000795c:	00c6c6b3          	xor	a3,a3,a2
80007960:	01069693          	sll	a3,a3,0x10
80007964:	0106d693          	srl	a3,a3,0x10
80007968:	00275613          	srl	a2,a4,0x2
8000796c:	00d64633          	xor	a2,a2,a3
80007970:	00167613          	and	a2,a2,1
80007974:	40c00633          	neg	a2,a2
80007978:	00f67633          	and	a2,a2,a5
8000797c:	0016d693          	srl	a3,a3,0x1
80007980:	00d64633          	xor	a2,a2,a3
80007984:	01061613          	sll	a2,a2,0x10
80007988:	01065613          	srl	a2,a2,0x10
8000798c:	00375693          	srl	a3,a4,0x3
80007990:	00c6c6b3          	xor	a3,a3,a2
80007994:	0016f693          	and	a3,a3,1
80007998:	40d006b3          	neg	a3,a3
8000799c:	00f6f6b3          	and	a3,a3,a5
800079a0:	00165613          	srl	a2,a2,0x1
800079a4:	00c6c6b3          	xor	a3,a3,a2
800079a8:	01069693          	sll	a3,a3,0x10
800079ac:	0106d693          	srl	a3,a3,0x10
800079b0:	00475613          	srl	a2,a4,0x4
800079b4:	00d64633          	xor	a2,a2,a3
800079b8:	00167613          	and	a2,a2,1
800079bc:	40c00633          	neg	a2,a2
800079c0:	00f67633          	and	a2,a2,a5
800079c4:	0016d693          	srl	a3,a3,0x1
800079c8:	00d64633          	xor	a2,a2,a3
800079cc:	01061613          	sll	a2,a2,0x10
800079d0:	01065613          	srl	a2,a2,0x10
800079d4:	00575693          	srl	a3,a4,0x5
800079d8:	00c6c6b3          	xor	a3,a3,a2
800079dc:	0016f693          	and	a3,a3,1
800079e0:	40d006b3          	neg	a3,a3
800079e4:	00f6f6b3          	and	a3,a3,a5
800079e8:	00165613          	srl	a2,a2,0x1
800079ec:	00c6c6b3          	xor	a3,a3,a2
800079f0:	01069693          	sll	a3,a3,0x10
800079f4:	0106d693          	srl	a3,a3,0x10
800079f8:	00675613          	srl	a2,a4,0x6
800079fc:	00d64633          	xor	a2,a2,a3
80007a00:	00167613          	and	a2,a2,1
80007a04:	40c00633          	neg	a2,a2
80007a08:	00f67633          	and	a2,a2,a5
80007a0c:	0016d693          	srl	a3,a3,0x1
80007a10:	00d64633          	xor	a2,a2,a3
80007a14:	01061613          	sll	a2,a2,0x10
80007a18:	01065613          	srl	a2,a2,0x10
80007a1c:	00775693          	srl	a3,a4,0x7
80007a20:	00c6c6b3          	xor	a3,a3,a2
80007a24:	0016f693          	and	a3,a3,1
80007a28:	40d006b3          	neg	a3,a3
80007a2c:	00f6f6b3          	and	a3,a3,a5
80007a30:	00165613          	srl	a2,a2,0x1
80007a34:	00c6c6b3          	xor	a3,a3,a2
80007a38:	01055513          	srl	a0,a0,0x10
80007a3c:	01069693          	sll	a3,a3,0x10
80007a40:	0ff57713          	zext.b	a4,a0
80007a44:	0106d693          	srl	a3,a3,0x10
80007a48:	00d74633          	xor	a2,a4,a3
80007a4c:	00167613          	and	a2,a2,1
80007a50:	40c00633          	neg	a2,a2
80007a54:	00f67633          	and	a2,a2,a5
80007a58:	0016d693          	srl	a3,a3,0x1
80007a5c:	00d646b3          	xor	a3,a2,a3
80007a60:	01069693          	sll	a3,a3,0x10
80007a64:	0106d693          	srl	a3,a3,0x10
80007a68:	00175613          	srl	a2,a4,0x1
80007a6c:	00d64633          	xor	a2,a2,a3
80007a70:	00167613          	and	a2,a2,1
80007a74:	40c00633          	neg	a2,a2
80007a78:	00f67633          	and	a2,a2,a5
80007a7c:	0016d693          	srl	a3,a3,0x1
80007a80:	00d64633          	xor	a2,a2,a3
80007a84:	01061613          	sll	a2,a2,0x10
80007a88:	01065613          	srl	a2,a2,0x10
80007a8c:	00275693          	srl	a3,a4,0x2
80007a90:	00c6c6b3          	xor	a3,a3,a2
80007a94:	0016f693          	and	a3,a3,1
80007a98:	40d006b3          	neg	a3,a3
80007a9c:	00f6f6b3          	and	a3,a3,a5
80007aa0:	00165613          	srl	a2,a2,0x1
80007aa4:	00c6c6b3          	xor	a3,a3,a2
80007aa8:	01069693          	sll	a3,a3,0x10
80007aac:	0106d693          	srl	a3,a3,0x10
80007ab0:	00375613          	srl	a2,a4,0x3
80007ab4:	00d64633          	xor	a2,a2,a3
80007ab8:	00167613          	and	a2,a2,1
80007abc:	40c00633          	neg	a2,a2
80007ac0:	00f67633          	and	a2,a2,a5
80007ac4:	0016d693          	srl	a3,a3,0x1
80007ac8:	00d64633          	xor	a2,a2,a3
80007acc:	01061613          	sll	a2,a2,0x10
80007ad0:	01065613          	srl	a2,a2,0x10
80007ad4:	00475693          	srl	a3,a4,0x4
80007ad8:	00c6c6b3          	xor	a3,a3,a2
80007adc:	0016f693          	and	a3,a3,1
80007ae0:	40d006b3          	neg	a3,a3
80007ae4:	00f6f6b3          	and	a3,a3,a5
80007ae8:	00165613          	srl	a2,a2,0x1
80007aec:	00c6c6b3          	xor	a3,a3,a2
80007af0:	01069693          	sll	a3,a3,0x10
80007af4:	0106d693          	srl	a3,a3,0x10
80007af8:	00575613          	srl	a2,a4,0x5
80007afc:	00d64633          	xor	a2,a2,a3
80007b00:	00167613          	and	a2,a2,1
80007b04:	40c00633          	neg	a2,a2
80007b08:	00f67633          	and	a2,a2,a5
80007b0c:	0016d693          	srl	a3,a3,0x1
80007b10:	00d64633          	xor	a2,a2,a3
80007b14:	01061613          	sll	a2,a2,0x10
80007b18:	01065613          	srl	a2,a2,0x10
80007b1c:	00675693          	srl	a3,a4,0x6
80007b20:	00c6c6b3          	xor	a3,a3,a2
80007b24:	0016f693          	and	a3,a3,1
80007b28:	40d006b3          	neg	a3,a3
80007b2c:	00f6f6b3          	and	a3,a3,a5
80007b30:	00165613          	srl	a2,a2,0x1
80007b34:	00c6c6b3          	xor	a3,a3,a2
80007b38:	01069693          	sll	a3,a3,0x10
80007b3c:	0106d693          	srl	a3,a3,0x10
80007b40:	00775713          	srl	a4,a4,0x7
80007b44:	00d74733          	xor	a4,a4,a3
80007b48:	00177713          	and	a4,a4,1
80007b4c:	40e00733          	neg	a4,a4
80007b50:	00f77733          	and	a4,a4,a5
80007b54:	0016d693          	srl	a3,a3,0x1
80007b58:	00d74733          	xor	a4,a4,a3
80007b5c:	01071713          	sll	a4,a4,0x10
80007b60:	00855513          	srl	a0,a0,0x8
80007b64:	01075713          	srl	a4,a4,0x10
80007b68:	00e546b3          	xor	a3,a0,a4
80007b6c:	0016f693          	and	a3,a3,1
80007b70:	40d006b3          	neg	a3,a3
80007b74:	00f6f6b3          	and	a3,a3,a5
80007b78:	00175713          	srl	a4,a4,0x1
80007b7c:	00e6c733          	xor	a4,a3,a4
80007b80:	01071713          	sll	a4,a4,0x10
80007b84:	01075713          	srl	a4,a4,0x10
80007b88:	00155693          	srl	a3,a0,0x1
80007b8c:	00e6c6b3          	xor	a3,a3,a4
80007b90:	0016f693          	and	a3,a3,1
80007b94:	40d006b3          	neg	a3,a3
80007b98:	00f6f6b3          	and	a3,a3,a5
80007b9c:	00175713          	srl	a4,a4,0x1
80007ba0:	00e6c6b3          	xor	a3,a3,a4
80007ba4:	01069693          	sll	a3,a3,0x10
80007ba8:	0106d693          	srl	a3,a3,0x10
80007bac:	00255713          	srl	a4,a0,0x2
80007bb0:	00d74733          	xor	a4,a4,a3
80007bb4:	00177713          	and	a4,a4,1
80007bb8:	40e00733          	neg	a4,a4
80007bbc:	00f77733          	and	a4,a4,a5
80007bc0:	0016d693          	srl	a3,a3,0x1
80007bc4:	00d74733          	xor	a4,a4,a3
80007bc8:	01071713          	sll	a4,a4,0x10
80007bcc:	01075713          	srl	a4,a4,0x10
80007bd0:	00355693          	srl	a3,a0,0x3
80007bd4:	00e6c6b3          	xor	a3,a3,a4
80007bd8:	0016f693          	and	a3,a3,1
80007bdc:	40d006b3          	neg	a3,a3
80007be0:	00f6f6b3          	and	a3,a3,a5
80007be4:	00175713          	srl	a4,a4,0x1
80007be8:	00e6c6b3          	xor	a3,a3,a4
80007bec:	01069693          	sll	a3,a3,0x10
80007bf0:	0106d693          	srl	a3,a3,0x10
80007bf4:	00455713          	srl	a4,a0,0x4
80007bf8:	00d74733          	xor	a4,a4,a3
80007bfc:	00177713          	and	a4,a4,1
80007c00:	40e00733          	neg	a4,a4
80007c04:	00f77733          	and	a4,a4,a5
80007c08:	0016d693          	srl	a3,a3,0x1
80007c0c:	00d74733          	xor	a4,a4,a3
80007c10:	01071713          	sll	a4,a4,0x10
80007c14:	01075713          	srl	a4,a4,0x10
80007c18:	00555693          	srl	a3,a0,0x5
80007c1c:	00e6c6b3          	xor	a3,a3,a4
80007c20:	0016f693          	and	a3,a3,1
80007c24:	40d006b3          	neg	a3,a3
80007c28:	00f6f6b3          	and	a3,a3,a5
80007c2c:	00175713          	srl	a4,a4,0x1
80007c30:	00e6c6b3          	xor	a3,a3,a4
80007c34:	01069693          	sll	a3,a3,0x10
80007c38:	0106d693          	srl	a3,a3,0x10
80007c3c:	00655713          	srl	a4,a0,0x6
80007c40:	00d74733          	xor	a4,a4,a3
80007c44:	00177713          	and	a4,a4,1
80007c48:	40e00733          	neg	a4,a4
80007c4c:	00f77733          	and	a4,a4,a5
80007c50:	0016d693          	srl	a3,a3,0x1
80007c54:	00d74733          	xor	a4,a4,a3
80007c58:	01071713          	sll	a4,a4,0x10
80007c5c:	01075713          	srl	a4,a4,0x10
80007c60:	00755513          	srl	a0,a0,0x7
80007c64:	00e54533          	xor	a0,a0,a4
80007c68:	00157513          	and	a0,a0,1
80007c6c:	40a00533          	neg	a0,a0
80007c70:	00f57533          	and	a0,a0,a5
80007c74:	00175713          	srl	a4,a4,0x1
80007c78:	00e54533          	xor	a0,a0,a4
80007c7c:	01051513          	sll	a0,a0,0x10
80007c80:	01055513          	srl	a0,a0,0x10
80007c84:	00008067          	ret

80007c88 <crc16>:
80007c88:	0ff57793          	zext.b	a5,a0
80007c8c:	00b7c6b3          	xor	a3,a5,a1
80007c90:	0016f693          	and	a3,a3,1
80007c94:	ffffa737          	lui	a4,0xffffa
80007c98:	00170713          	add	a4,a4,1 # ffffa001 <__stack_base+0x3fffa001>
80007c9c:	40d006b3          	neg	a3,a3
80007ca0:	00e6f6b3          	and	a3,a3,a4
80007ca4:	0015d593          	srl	a1,a1,0x1
80007ca8:	00b6c6b3          	xor	a3,a3,a1
80007cac:	01069693          	sll	a3,a3,0x10
80007cb0:	0106d693          	srl	a3,a3,0x10
80007cb4:	0017d613          	srl	a2,a5,0x1
80007cb8:	00d64633          	xor	a2,a2,a3
80007cbc:	00167613          	and	a2,a2,1
80007cc0:	40c00633          	neg	a2,a2
80007cc4:	00e67633          	and	a2,a2,a4
80007cc8:	0016d693          	srl	a3,a3,0x1
80007ccc:	00d64633          	xor	a2,a2,a3
80007cd0:	01061613          	sll	a2,a2,0x10
80007cd4:	01065613          	srl	a2,a2,0x10
80007cd8:	0027d693          	srl	a3,a5,0x2
80007cdc:	00c6c6b3          	xor	a3,a3,a2
80007ce0:	0016f693          	and	a3,a3,1
80007ce4:	40d006b3          	neg	a3,a3
80007ce8:	00e6f6b3          	and	a3,a3,a4
80007cec:	00165613          	srl	a2,a2,0x1
80007cf0:	00c6c6b3          	xor	a3,a3,a2
80007cf4:	01069693          	sll	a3,a3,0x10
80007cf8:	0106d693          	srl	a3,a3,0x10
80007cfc:	0037d613          	srl	a2,a5,0x3
80007d00:	00d64633          	xor	a2,a2,a3
80007d04:	00167613          	and	a2,a2,1
80007d08:	40c00633          	neg	a2,a2
80007d0c:	00e67633          	and	a2,a2,a4
80007d10:	0016d693          	srl	a3,a3,0x1
80007d14:	00d64633          	xor	a2,a2,a3
80007d18:	01061613          	sll	a2,a2,0x10
80007d1c:	01065613          	srl	a2,a2,0x10
80007d20:	0047d693          	srl	a3,a5,0x4
80007d24:	00c6c6b3          	xor	a3,a3,a2
80007d28:	0016f693          	and	a3,a3,1
80007d2c:	40d006b3          	neg	a3,a3
80007d30:	00e6f6b3          	and	a3,a3,a4
80007d34:	00165613          	srl	a2,a2,0x1
80007d38:	00c6c6b3          	xor	a3,a3,a2
80007d3c:	01069693          	sll	a3,a3,0x10
80007d40:	0106d693          	srl	a3,a3,0x10
80007d44:	0057d613          	srl	a2,a5,0x5
80007d48:	00d64633          	xor	a2,a2,a3
80007d4c:	00167613          	and	a2,a2,1
80007d50:	40c00633          	neg	a2,a2
80007d54:	00e67633          	and	a2,a2,a4
80007d58:	0016d693          	srl	a3,a3,0x1
80007d5c:	00d64633          	xor	a2,a2,a3
80007d60:	01061613          	sll	a2,a2,0x10
80007d64:	01065613          	srl	a2,a2,0x10
80007d68:	0067d693          	srl	a3,a5,0x6
80007d6c:	00c6c6b3          	xor	a3,a3,a2
80007d70:	0016f693          	and	a3,a3,1
80007d74:	40d006b3          	neg	a3,a3
80007d78:	00e6f6b3          	and	a3,a3,a4
80007d7c:	00165613          	srl	a2,a2,0x1
80007d80:	00c6c6b3          	xor	a3,a3,a2
80007d84:	01069693          	sll	a3,a3,0x10
80007d88:	0106d693          	srl	a3,a3,0x10
80007d8c:	0077d793          	srl	a5,a5,0x7
80007d90:	00d7c7b3          	xor	a5,a5,a3
80007d94:	0017f793          	and	a5,a5,1
80007d98:	40f007b3          	neg	a5,a5
80007d9c:	00e7f7b3          	and	a5,a5,a4
80007da0:	0016d693          	srl	a3,a3,0x1
80007da4:	00d7c7b3          	xor	a5,a5,a3
80007da8:	01051513          	sll	a0,a0,0x10
80007dac:	01055513          	srl	a0,a0,0x10
80007db0:	01079793          	sll	a5,a5,0x10
80007db4:	00855513          	srl	a0,a0,0x8
80007db8:	0107d793          	srl	a5,a5,0x10
80007dbc:	00f546b3          	xor	a3,a0,a5
80007dc0:	0016f693          	and	a3,a3,1
80007dc4:	40d006b3          	neg	a3,a3
80007dc8:	00e6f6b3          	and	a3,a3,a4
80007dcc:	0017d793          	srl	a5,a5,0x1
80007dd0:	00f6c7b3          	xor	a5,a3,a5
80007dd4:	01079793          	sll	a5,a5,0x10
80007dd8:	0107d793          	srl	a5,a5,0x10
80007ddc:	00155693          	srl	a3,a0,0x1
80007de0:	00f6c6b3          	xor	a3,a3,a5
80007de4:	0016f693          	and	a3,a3,1
80007de8:	40d006b3          	neg	a3,a3
80007dec:	00e6f6b3          	and	a3,a3,a4
80007df0:	0017d793          	srl	a5,a5,0x1
80007df4:	00f6c6b3          	xor	a3,a3,a5
80007df8:	01069693          	sll	a3,a3,0x10
80007dfc:	0106d693          	srl	a3,a3,0x10
80007e00:	00255793          	srl	a5,a0,0x2
80007e04:	00d7c7b3          	xor	a5,a5,a3
80007e08:	0017f793          	and	a5,a5,1
80007e0c:	40f007b3          	neg	a5,a5
80007e10:	00e7f7b3          	and	a5,a5,a4
80007e14:	0016d693          	srl	a3,a3,0x1
80007e18:	00d7c7b3          	xor	a5,a5,a3
80007e1c:	01079793          	sll	a5,a5,0x10
80007e20:	0107d793          	srl	a5,a5,0x10
80007e24:	00355693          	srl	a3,a0,0x3
80007e28:	00f6c6b3          	xor	a3,a3,a5
80007e2c:	0016f693          	and	a3,a3,1
80007e30:	40d006b3          	neg	a3,a3
80007e34:	00e6f6b3          	and	a3,a3,a4
80007e38:	0017d793          	srl	a5,a5,0x1
80007e3c:	00f6c6b3          	xor	a3,a3,a5
80007e40:	01069693          	sll	a3,a3,0x10
80007e44:	0106d693          	srl	a3,a3,0x10
80007e48:	00455793          	srl	a5,a0,0x4
80007e4c:	00d7c7b3          	xor	a5,a5,a3
80007e50:	0017f793          	and	a5,a5,1
80007e54:	40f007b3          	neg	a5,a5
80007e58:	00e7f7b3          	and	a5,a5,a4
80007e5c:	0016d693          	srl	a3,a3,0x1
80007e60:	00d7c7b3          	xor	a5,a5,a3
80007e64:	01079793          	sll	a5,a5,0x10
80007e68:	0107d793          	srl	a5,a5,0x10
80007e6c:	00555693          	srl	a3,a0,0x5
80007e70:	00f6c6b3          	xor	a3,a3,a5
80007e74:	0016f693          	and	a3,a3,1
80007e78:	40d006b3          	neg	a3,a3
80007e7c:	00e6f6b3          	and	a3,a3,a4
80007e80:	0017d793          	srl	a5,a5,0x1
80007e84:	00f6c6b3          	xor	a3,a3,a5
80007e88:	01069693          	sll	a3,a3,0x10
80007e8c:	0106d693          	srl	a3,a3,0x10
80007e90:	00655793          	srl	a5,a0,0x6
80007e94:	00d7c7b3          	xor	a5,a5,a3
80007e98:	0017f793          	and	a5,a5,1
80007e9c:	40f007b3          	neg	a5,a5
80007ea0:	00e7f7b3          	and	a5,a5,a4
80007ea4:	0016d693          	srl	a3,a3,0x1
80007ea8:	00d7c7b3          	xor	a5,a5,a3
80007eac:	01079793          	sll	a5,a5,0x10
80007eb0:	0107d793          	srl	a5,a5,0x10
80007eb4:	00755513          	srl	a0,a0,0x7
80007eb8:	00f54533          	xor	a0,a0,a5
80007ebc:	00157513          	and	a0,a0,1
80007ec0:	40a00533          	neg	a0,a0
80007ec4:	00e57533          	and	a0,a0,a4
80007ec8:	0017d793          	srl	a5,a5,0x1
80007ecc:	00f54533          	xor	a0,a0,a5
80007ed0:	01051513          	sll	a0,a0,0x10
80007ed4:	01055513          	srl	a0,a0,0x10
80007ed8:	00008067          	ret

80007edc <check_data_types>:
80007edc:	00000513          	li	a0,0
80007ee0:	00008067          	ret

80007ee4 <start_time>:
80007ee4:	ff010113          	add	sp,sp,-16
80007ee8:	00112623          	sw	ra,12(sp)
80007eec:	b84fb0ef          	jal	80003270 <get_cycle>
80007ef0:	00c12083          	lw	ra,12(sp)
80007ef4:	a00017b7          	lui	a5,0xa0001
80007ef8:	41f55713          	sra	a4,a0,0x1f
80007efc:	eaa7a423          	sw	a0,-344(a5) # a0000ea8 <start_time_val>
80007f00:	eae7a623          	sw	a4,-340(a5)
80007f04:	01010113          	add	sp,sp,16
80007f08:	00008067          	ret

80007f0c <stop_time>:
80007f0c:	ff010113          	add	sp,sp,-16
80007f10:	00112623          	sw	ra,12(sp)
80007f14:	b5cfb0ef          	jal	80003270 <get_cycle>
80007f18:	00c12083          	lw	ra,12(sp)
80007f1c:	a00017b7          	lui	a5,0xa0001
80007f20:	41f55713          	sra	a4,a0,0x1f
80007f24:	eaa7a023          	sw	a0,-352(a5) # a0000ea0 <stop_time_val>
80007f28:	eae7a223          	sw	a4,-348(a5)
80007f2c:	01010113          	add	sp,sp,16
80007f30:	00008067          	ret

80007f34 <get_time>:
80007f34:	a00016b7          	lui	a3,0xa0001
80007f38:	a0001737          	lui	a4,0xa0001
80007f3c:	ea06a783          	lw	a5,-352(a3) # a0000ea0 <stop_time_val>
80007f40:	ea872503          	lw	a0,-344(a4) # a0000ea8 <start_time_val>
80007f44:	ea46a583          	lw	a1,-348(a3)
80007f48:	eac72703          	lw	a4,-340(a4)
80007f4c:	40a78533          	sub	a0,a5,a0
80007f50:	00a7b7b3          	sltu	a5,a5,a0
80007f54:	40e585b3          	sub	a1,a1,a4
80007f58:	40f585b3          	sub	a1,a1,a5
80007f5c:	00008067          	ret

80007f60 <time_in_secs>:
80007f60:	ff010113          	add	sp,sp,-16
80007f64:	00112623          	sw	ra,12(sp)
80007f68:	b25fa0ef          	jal	80002a8c <__floatundidf>
80007f6c:	a00017b7          	lui	a5,0xa0001
80007f70:	e787a603          	lw	a2,-392(a5) # a0000e78 <intpat+0xb0>
80007f74:	e7c7a683          	lw	a3,-388(a5)
80007f78:	a38f90ef          	jal	800011b0 <__divdf3>
80007f7c:	00c12083          	lw	ra,12(sp)
80007f80:	01010113          	add	sp,sp,16
80007f84:	00008067          	ret

80007f88 <portable_init>:
80007f88:	00100793          	li	a5,1
80007f8c:	00f50023          	sb	a5,0(a0)
80007f90:	00008067          	ret

80007f94 <portable_fini>:
80007f94:	00050023          	sb	zero,0(a0)
80007f98:	00008067          	ret
