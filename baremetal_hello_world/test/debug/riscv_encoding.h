/* ===== Machine-level CSRs ===== */

/* Machine Information Registers */
#define CSR_MVENDORID			0xf11
#define CSR_MARCHID			0xf12
#define CSR_MIMPID			0xf13
#define CSR_MHARTID			0xf14

/* Machine Trap Setup */
#define CSR_MSTATUS			0x300
#define CSR_MISA			0x301
#define CSR_MEDELEG			0x302
#define CSR_MIDELEG			0x303
#define CSR_MIE				0x304
#define CSR_MTVEC			0x305
#define CSR_MCOUNTEREN			0x306
#define CSR_MSTATUSH			0x310

/* Machine Configuration */
#define CSR_MENVCFG			0x30a
#define CSR_MENVCFGH			0x31a

/* Machine Trap Handling */
#define CSR_MSCRATCH			0x340
#define CSR_MEPC			0x341
#define CSR_MCAUSE			0x342
#define CSR_MTVAL			0x343
#define CSR_MIP				0x344
#define CSR_MTINST			0x34a
#define CSR_MTVAL2			0x34b

/* Machine Memory Protection */
#define CSR_PMPCFG0			0x3a0
#define CSR_PMPCFG1			0x3a1
#define CSR_PMPCFG2			0x3a2
#define CSR_PMPCFG3			0x3a3
#define CSR_PMPCFG4			0x3a4
#define CSR_PMPCFG5			0x3a5
#define CSR_PMPCFG6			0x3a6
#define CSR_PMPCFG7			0x3a7
#define CSR_PMPCFG8			0x3a8
#define CSR_PMPCFG9			0x3a9
#define CSR_PMPCFG10			0x3aa
#define CSR_PMPCFG11			0x3ab
#define CSR_PMPCFG12			0x3ac
#define CSR_PMPCFG13			0x3ad
#define CSR_PMPCFG14			0x3ae
#define CSR_PMPCFG15			0x3af
#define CSR_PMPADDR0			0x3b0
#define CSR_PMPADDR1			0x3b1
#define CSR_PMPADDR2			0x3b2
#define CSR_PMPADDR3			0x3b3
#define CSR_PMPADDR4			0x3b4
#define CSR_PMPADDR5			0x3b5
#define CSR_PMPADDR6			0x3b6
#define CSR_PMPADDR7			0x3b7
#define CSR_PMPADDR8			0x3b8
#define CSR_PMPADDR9			0x3b9
#define CSR_PMPADDR10			0x3ba
#define CSR_PMPADDR11			0x3bb
#define CSR_PMPADDR12			0x3bc
#define CSR_PMPADDR13			0x3bd
#define CSR_PMPADDR14			0x3be
#define CSR_PMPADDR15			0x3bf
#define CSR_PMPADDR16			0x3c0
#define CSR_PMPADDR17			0x3c1
#define CSR_PMPADDR18			0x3c2
#define CSR_PMPADDR19			0x3c3
#define CSR_PMPADDR20			0x3c4
#define CSR_PMPADDR21			0x3c5
#define CSR_PMPADDR22			0x3c6
#define CSR_PMPADDR23			0x3c7
#define CSR_PMPADDR24			0x3c8
#define CSR_PMPADDR25			0x3c9
#define CSR_PMPADDR26			0x3ca
#define CSR_PMPADDR27			0x3cb
#define CSR_PMPADDR28			0x3cc
#define CSR_PMPADDR29			0x3cd
#define CSR_PMPADDR30			0x3ce
#define CSR_PMPADDR31			0x3cf
#define CSR_PMPADDR32			0x3d0
#define CSR_PMPADDR33			0x3d1
#define CSR_PMPADDR34			0x3d2
#define CSR_PMPADDR35			0x3d3
#define CSR_PMPADDR36			0x3d4
#define CSR_PMPADDR37			0x3d5
#define CSR_PMPADDR38			0x3d6
#define CSR_PMPADDR39			0x3d7
#define CSR_PMPADDR40			0x3d8
#define CSR_PMPADDR41			0x3d9
#define CSR_PMPADDR42			0x3da
#define CSR_PMPADDR43			0x3db
#define CSR_PMPADDR44			0x3dc
#define CSR_PMPADDR45			0x3dd
#define CSR_PMPADDR46			0x3de
#define CSR_PMPADDR47			0x3df
#define CSR_PMPADDR48			0x3e0
#define CSR_PMPADDR49			0x3e1
#define CSR_PMPADDR50			0x3e2
#define CSR_PMPADDR51			0x3e3
#define CSR_PMPADDR52			0x3e4
#define CSR_PMPADDR53			0x3e5
#define CSR_PMPADDR54			0x3e6
#define CSR_PMPADDR55			0x3e7
#define CSR_PMPADDR56			0x3e8
#define CSR_PMPADDR57			0x3e9
#define CSR_PMPADDR58			0x3ea
#define CSR_PMPADDR59			0x3eb
#define CSR_PMPADDR60			0x3ec
#define CSR_PMPADDR61			0x3ed
#define CSR_PMPADDR62			0x3ee
#define CSR_PMPADDR63			0x3ef

/* Machine Counters/Timers */
#define CSR_MCYCLE			0xb00
#define CSR_MINSTRET			0xb02
#define CSR_MHPMCOUNTER3		0xb03
#define CSR_MHPMCOUNTER4		0xb04
#define CSR_MHPMCOUNTER5		0xb05
#define CSR_MHPMCOUNTER6		0xb06
#define CSR_MHPMCOUNTER7		0xb07
#define CSR_MHPMCOUNTER8		0xb08
#define CSR_MHPMCOUNTER9		0xb09
#define CSR_MHPMCOUNTER10		0xb0a
#define CSR_MHPMCOUNTER11		0xb0b
#define CSR_MHPMCOUNTER12		0xb0c
#define CSR_MHPMCOUNTER13		0xb0d
#define CSR_MHPMCOUNTER14		0xb0e
#define CSR_MHPMCOUNTER15		0xb0f
#define CSR_MHPMCOUNTER16		0xb10
#define CSR_MHPMCOUNTER17		0xb11
#define CSR_MHPMCOUNTER18		0xb12
#define CSR_MHPMCOUNTER19		0xb13
#define CSR_MHPMCOUNTER20		0xb14
#define CSR_MHPMCOUNTER21		0xb15
#define CSR_MHPMCOUNTER22		0xb16
#define CSR_MHPMCOUNTER23		0xb17
#define CSR_MHPMCOUNTER24		0xb18
#define CSR_MHPMCOUNTER25		0xb19
#define CSR_MHPMCOUNTER26		0xb1a
#define CSR_MHPMCOUNTER27		0xb1b
#define CSR_MHPMCOUNTER28		0xb1c
#define CSR_MHPMCOUNTER29		0xb1d
#define CSR_MHPMCOUNTER30		0xb1e
#define CSR_MHPMCOUNTER31		0xb1f
#define CSR_MCYCLEH			0xb80
#define CSR_MINSTRETH			0xb82
#define CSR_MHPMCOUNTER3H		0xb83
#define CSR_MHPMCOUNTER4H		0xb84
#define CSR_MHPMCOUNTER5H		0xb85
#define CSR_MHPMCOUNTER6H		0xb86
#define CSR_MHPMCOUNTER7H		0xb87
#define CSR_MHPMCOUNTER8H		0xb88
#define CSR_MHPMCOUNTER9H		0xb89
#define CSR_MHPMCOUNTER10H		0xb8a
#define CSR_MHPMCOUNTER11H		0xb8b
#define CSR_MHPMCOUNTER12H		0xb8c
#define CSR_MHPMCOUNTER13H		0xb8d
#define CSR_MHPMCOUNTER14H		0xb8e
#define CSR_MHPMCOUNTER15H		0xb8f
#define CSR_MHPMCOUNTER16H		0xb90
#define CSR_MHPMCOUNTER17H		0xb91
#define CSR_MHPMCOUNTER18H		0xb92
#define CSR_MHPMCOUNTER19H		0xb93
#define CSR_MHPMCOUNTER20H		0xb94
#define CSR_MHPMCOUNTER21H		0xb95
#define CSR_MHPMCOUNTER22H		0xb96
#define CSR_MHPMCOUNTER23H		0xb97
#define CSR_MHPMCOUNTER24H		0xb98
#define CSR_MHPMCOUNTER25H		0xb99
#define CSR_MHPMCOUNTER26H		0xb9a
#define CSR_MHPMCOUNTER27H		0xb9b
#define CSR_MHPMCOUNTER28H		0xb9c
#define CSR_MHPMCOUNTER29H		0xb9d
#define CSR_MHPMCOUNTER30H		0xb9e
#define CSR_MHPMCOUNTER31H		0xb9f

/* Machine Counter Setup */
#define CSR_MCOUNTINHIBIT		0x320
#define CSR_MHPMEVENT3			0x323
#define CSR_MHPMEVENT4			0x324
#define CSR_MHPMEVENT5			0x325
#define CSR_MHPMEVENT6			0x326
#define CSR_MHPMEVENT7			0x327
#define CSR_MHPMEVENT8			0x328
#define CSR_MHPMEVENT9			0x329
#define CSR_MHPMEVENT10			0x32a
#define CSR_MHPMEVENT11			0x32b
#define CSR_MHPMEVENT12			0x32c
#define CSR_MHPMEVENT13			0x32d
#define CSR_MHPMEVENT14			0x32e
#define CSR_MHPMEVENT15			0x32f
#define CSR_MHPMEVENT16			0x330
#define CSR_MHPMEVENT17			0x331
#define CSR_MHPMEVENT18			0x332
#define CSR_MHPMEVENT19			0x333
#define CSR_MHPMEVENT20			0x334
#define CSR_MHPMEVENT21			0x335
#define CSR_MHPMEVENT22			0x336
#define CSR_MHPMEVENT23			0x337
#define CSR_MHPMEVENT24			0x338
#define CSR_MHPMEVENT25			0x339
#define CSR_MHPMEVENT26			0x33a
#define CSR_MHPMEVENT27			0x33b
#define CSR_MHPMEVENT28			0x33c
#define CSR_MHPMEVENT29			0x33d
#define CSR_MHPMEVENT30			0x33e
#define CSR_MHPMEVENT31			0x33f

/* For RV32 */
#define CSR_MHPMEVENT3H			0x723
#define CSR_MHPMEVENT4H			0x724
#define CSR_MHPMEVENT5H			0x725
#define CSR_MHPMEVENT6H			0x726
#define CSR_MHPMEVENT7H			0x727
#define CSR_MHPMEVENT8H			0x728
#define CSR_MHPMEVENT9H			0x729
#define CSR_MHPMEVENT10H		0x72a
#define CSR_MHPMEVENT11H		0x72b
#define CSR_MHPMEVENT12H		0x72c
#define CSR_MHPMEVENT13H		0x72d
#define CSR_MHPMEVENT14H		0x72e
#define CSR_MHPMEVENT15H		0x72f
#define CSR_MHPMEVENT16H		0x730
#define CSR_MHPMEVENT17H		0x731
#define CSR_MHPMEVENT18H		0x732
#define CSR_MHPMEVENT19H		0x733
#define CSR_MHPMEVENT20H		0x734
#define CSR_MHPMEVENT21H		0x735
#define CSR_MHPMEVENT22H		0x736
#define CSR_MHPMEVENT23H		0x737
#define CSR_MHPMEVENT24H		0x738
#define CSR_MHPMEVENT25H		0x739
#define CSR_MHPMEVENT26H		0x73a
#define CSR_MHPMEVENT27H		0x73b
#define CSR_MHPMEVENT28H		0x73c
#define CSR_MHPMEVENT29H		0x73d
#define CSR_MHPMEVENT30H		0x73e
#define CSR_MHPMEVENT31H		0x73f

/* Counter Overflow CSR */
#define CSR_SCOUNTOVF			0xda0

/* Debug/Trace Registers */
#define CSR_TSELECT			0x7a0
#define CSR_TDATA1			0x7a1
#define CSR_TDATA2			0x7a2
#define CSR_TDATA3			0x7a3

/* Debug Mode Registers */
#define CSR_DCSR			0x7b0
#define CSR_DPC				0x7b1
#define CSR_DSCRATCH0			0x7b2
#define CSR_DSCRATCH1			0x7b3

/* ===== Trap/Exception Causes ===== */

#define CAUSE_MISALIGNED_FETCH		0x0
#define CAUSE_FETCH_ACCESS		0x1
#define CAUSE_ILLEGAL_INSTRUCTION	0x2
#define CAUSE_BREAKPOINT		0x3
#define CAUSE_MISALIGNED_LOAD		0x4
#define CAUSE_LOAD_ACCESS		0x5
#define CAUSE_MISALIGNED_STORE		0x6
#define CAUSE_STORE_ACCESS		0x7
#define CAUSE_USER_ECALL		0x8
#define CAUSE_SUPERVISOR_ECALL		0x9
#define CAUSE_VIRTUAL_SUPERVISOR_ECALL	0xa
#define CAUSE_MACHINE_ECALL		0xb
#define CAUSE_FETCH_PAGE_FAULT		0xc
#define CAUSE_LOAD_PAGE_FAULT		0xd
#define CAUSE_STORE_PAGE_FAULT		0xf
#define CAUSE_FETCH_GUEST_PAGE_FAULT	0x14
#define CAUSE_LOAD_GUEST_PAGE_FAULT	0x15
#define CAUSE_VIRTUAL_INST_FAULT	0x16
#define CAUSE_STORE_GUEST_PAGE_FAULT	0x17

/* ===== Trap/Interrupt Causes ===== */
#define IRQ_S_SOFT			1
#define IRQ_VS_SOFT			2
#define IRQ_M_SOFT			3
#define IRQ_S_TIMER			5
#define IRQ_VS_TIMER	    6
#define IRQ_M_TIMER			7
#define IRQ_S_EXT			9
#define IRQ_VS_EXT			10
#define IRQ_M_EXT			11
#define IRQ_S_GEXT			12

/* ===== DEBUG INFO ===== */
#define CSR_DSCRATCH0 0x7b2
#define CSR_DCSR 0x7b0
#define CSR_MHARTID 0xf14

/* The debugger can assume as second scratch register. */
/* #define SND_SCRATCH 1 */
/* These are implementation-specific addresses in the Debug Module*/

#define HALTED    0x100
#define GOING     0x108
#define RESUMING  0x110
#define EXCEPTION 0x118

/* Region of memory where each hart has 1 byte to read. data0 register addr */

#define FLAGS 0x400
#define FLAG_GO     0
#define FLAG_RESUME 0
#define DEBUG_RAM 0xf000
#define DEBUG_ROM 0x0000


