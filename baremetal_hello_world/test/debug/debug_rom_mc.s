#include "/data/usr/jiaoyd/baremetal_hello_world/test/debug/riscv_encoding.h"


.section .data
        HALTED_REG:    .word 0
        GOING_REG:     .word 0
        RESUME_REG:    .word 0
        EXCEPTION_REG: .word 0 

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
        fence
        csrw CSR_DSCRATCH0, s0       # Save s0 to allow signaling MHARTID
        csrw CSR_DSCRATCH1, s1       # Save s1 

        # check why we are here
        csrr s0, CSR_DCSR

        # We continue to let the hart know that we are halted in order that
        # a DM which was reset is still made aware that a hart is halted.
        # We keep checking both whether there is something the debugger wants
        # us to do, or whether we should resume.
entry_loop:
        csrr s0, CSR_MHARTID
        sw   s0, HALTED_REG   #store halted hart ID into dm halted register

        lbu  s0, FLAGS(s0) # 1 byte flag per hart. Only one hart advances here.
        andi s0, s0, (1 << FLAG_GO)
        bnez s0, going
        
        csrr s0, CSR_MHARTID
        lbu  s0, FLAGS(s0) 

        andi s0, s0, (1 << FLAG_RESUME)
        bnez s0, resume
        jal  zero, entry_loop

_exception:
        # We can only get here due to an exception while in debug mode. Hence,
        # we do not need to save a0 to a scratch register as it has already 
        # been saved on debug entry.

        sw   zero, EXCEPTION(zero)     # Let debug module know you got an exception.

        csrr s0, CSR_DSCRATCH0       # Restore s0 here
        ebreak

going:

        sw zero, GOING(zero)          # When debug module sees this write, the GO flag is reset.

        csrr s0, CSR_DSCRATCH0      # Restore s0 here
        jal zero, whereto

_resume:
        csrr s0, CSR_MHARTID
        sw   s0, RESUMING(zero)   # When Debug Module sees this write, the RESUME flag is reset.

        csrr s0, CSR_DSCRATCH0  # Restore s0 here
        dret

        # END OF ACTUAL "ROM" CONTENTS. BELOW IS JUST FOR LINKER SCRIPT.

#.section .whereto
whereto:
        nop
        j 0x10010000
        # Variable "ROM" This is : jal x0 abstract, jal x0 program_buffer,
        #                or jal x0 resume, as desired.
        #                Debug Module state machine tracks what is 'desired'.
        #                We don't need/want to use jalr here because all of the
        #                Variable ROM contents are set by
        #                Debug Module before setting the OK_GO byte.

