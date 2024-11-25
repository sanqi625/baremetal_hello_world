OUTPUT_ARCH( "riscv" )
ENTRY(__start)

MEMORY
{
    ITCM(X) : ORIGIN = 0x00010000, LENGTH = 0x00010000 /*ITCM 4K*/
    DTCM(RW) : ORIGIN = 0x00000400, LENGTH = 0x0000fbff /*DTCM 4K*/
}

PROVIDE(__stack_size = 0x0000100);

SECTIONS
{
    . = 0x00010000;
    . = ALIGN(0x4);
    .text : 
    {
        *(.text)
        *(.text.*)
        *(.gnu.linkonce.t.*)
    }

    /* init: Code to execute before main (called by crt0.S) */
    /*.init : 
    {
        KEEP( *(.init) )
    } */

    /* fini: Code to execute after main (called by crt0.S) */
    /*.fini : 
    {
        KEEP( *(.fini) )
    }*/

    . = 0x00000400;
    .rodata :{
        *(.rdata)
        *(.rodata)
        *(.rodata.*)
        *(.srodata)
        *(.srodata.*)
        *(.srodata.cst4*)
        *(.srodata.cst8*)
        *(.gnu.linkonce.r.*)
    }


    . = ALIGN(0x4);
    PROVIDE(__rw_start__ = .);
    /*--------------------------------------------------------------------*/
    /* Global constructor/destructor segement                             */
    /*--------------------------------------------------------------------*/

    /*.preinit_array     :
    {
        PROVIDE_HIDDEN (__preinit_array_start = .);
        KEEP (*(.preinit_array))
        PROVIDE_HIDDEN (__preinit_array_end = .);
    }

    .init_array     :
    {
        PROVIDE_HIDDEN (__init_array_start = .);
        KEEP (*(SORT(.init_array.*)))
        KEEP (*(.init_array ))
        PROVIDE_HIDDEN (__init_array_end = .);
    }

    .fini_array     :
    {
        PROVIDE_HIDDEN (__fini_array_start = .);
        KEEP (*(SORT(.fini_array.*)))
        KEEP (*(.fini_array ))
        PROVIDE_HIDDEN (__fini_array_end = .);
    }*/


    .data : { 
        *(.data)
        *(.data.*)
        *(.gnu.linkonce.d.*)
    }

    /* Writable small data segment */
    .sdata : 
    {
        *(.sdata)
        *(.sdata.*)
        *(.srodata.*)
        *(.gnu.linkonce.s.*)
    }

    PROVIDE(__rw_end__ = .);

    . = ALIGN(0x4);
    /* Writable uninitialized small data segment */
    PROVIDE(__sbss_start = .);
    .sbss : 
    {
        *(.sbss)
        *(.sbss.*)
        *(.gnu.linkonce.sb.*)
    }
    PROVIDE(__sbss_end = .);
    
    . = ALIGN(0x4);
    PROVIDE(__bss_start = .);
    .bss : { 
        *(.bss)
        *(.bss.*)
        *(.gnu.linkonce.b.*)
        *(COMMON)
    }
    PROVIDE(__bss_end = .);

    .stack : {
        . = ORIGIN(DTCM) + LENGTH(DTCM) - __stack_size;
        . =  ORIGIN(DTCM) + LENGTH(DTCM);
        PROVIDE(__stack_base = .);
    }
    _end = .;
}

