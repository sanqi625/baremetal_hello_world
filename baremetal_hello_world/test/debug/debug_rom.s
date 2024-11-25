#include "/data/usr/jiaoyd/baremetal_hello_world/test/debug/riscv_encoding.h"


.section .data
        DEBUG_DATA_REG: .word 0 # 0000_0400
        HALTED_REG:     .word 0 # 0000_0404
        GOING_REG:      .word 0 # 0000_0408
        RESUME_REG:     .word 0 # 0000_040c
        EXCEPTION_REG:  .word 0 # 0000_0410
        
# data section address is 1001_xxxx

.section .text
#.option norvc
#.global debug_entry
#.global resume
#.global exception
.global __start

# Entry location on ebreak, Halt, or Breakpoint
# It is the same for all harts. They branch when
# their GO or RESUME bit is set.

__start:
       jal zero, _entry
       nop
resume:
       jal zero, _resume
       nop
exception:
       jal zero, _exception
       nop

_entry:
        # This fence is required because the execution may have written something
        # into the Abstract Data or Program Buffer registers.
        # fence
        csrw CSR_DSCRATCH0, s0       # Save s0 to allow signaling MHARTID
        csrw CSR_DSCRATCH1, s1       # Save s1 

        # store debug exception handler address
        # lla s1 , exception
        # csrw	mtvec, s1

        # check why we are here
        csrr s0, CSR_DCSR

        # write 1 into HALTED reg, inform debufg module hart has been halted 
        lla  s1, HALTED_REG

        csrr s0, CSR_MHARTID
        sw   s0, 0(s1)   # store halted hart ID into dm register

        # We continue to let the hart know that we are halted in order that
        # a DM which was reset is still made aware that a hart is halted.
        # We keep checking both whether there is something the debugger wants
        # us to do, or whether we should resume.
entry_loop:

        # lbu  s0, FLAGS(s0) # 1 byte flag per hart. Only one hart advances here.
        # andi s0, s0, (1 << FLAG_GO)
        # bnez s0, going

        # Going reg bit 0 is valid
        lla  s1, GOING_REG

        lw   s0, 0(s1)
        andi s0, s0, (1 << FLAG_GO)
        bnez s0, going
        
        # csrr s0, CSR_MHARTID
        # lbu  s0, FLAGS(s0) 

        # Resume reg bit 1 is valid
        lla  s1, RESUME_REG

        lw   s0, 0(s1)
        andi s0, s0, (1 << FLAG_RESUME)
        bnez s0, resume

        jal  zero, entry_loop

_exception:
        # We can only get here due to an exception while in debug mode. Hence,
        # we do not need to save a0 to a scratch register as it has already 
        # been saved on debug entry.
        lla  s1, EXCEPTION_REG

        li   s0, 1
        sw   s0, 0(s1)     # Let debug module know you got an exception.

        csrr s0, CSR_DSCRATCH0       # Restore s0 here
        ebreak

going:
        lla  s1, GOING_REG

        sw zero, 0(s1)          # When debug module sees this write, the GO flag is reset.

        csrr s0, CSR_DSCRATCH0      # Restore s0 here
        csrr s0, CSR_DSCRATCH1      # Restore s1 here
        jal zero, whereto

_resume:

        # clear resume state reg        

        lla  s1, RESUME_REG
        sw   zero, 0(s1)   # When Debug Module sees this write, the RESUME flag is reset.

        # clear halted state reg

        lla  s1, HALTED_REG
        sw   zero, 0(s1)   

        csrr s0, CSR_DSCRATCH0  # Restore s0 here
        csrr s0, CSR_DSCRATCH1  # Restore s1 here
        dret

        # END OF ACTUAL "ROM" CONTENTS. BELOW IS JUST FOR LINKER SCRIPT.

#.section .whereto
whereto:
        nop
        j 0x00020000
        # Variable "ROM" This is : jal x0 abstract, jal x0 program_buffer,
        #                or jal x0 resume, as desired.
        #                Debug Module state machine tracks what is 'desired'.
        #                We don't need/want to use jalr here because all of the
        #                Variable ROM contents are set by
        #                Debug Module before setting the OK_GO byte.

