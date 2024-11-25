get_file(srcs 
    dhrystone/dhry_1.c
    dhrystone/dhry_2.c
    #dhrystone/strcmp.S
    )

add_target(dhrystone ${COMMON_SRC} ${srcs})

set(DHRYSTONE_COMPILE_OPTIONS "-O2" "-DTIME" "-DNOENUM" "-Wno-implicit" "-save-temps" "-falign-functions=4")
target_compile_options(dhrystone.elf PRIVATE ${DHRYSTONE_COMPILE_OPTIONS})

if(${arch} STREQUAL "toy_bm")
    target_compile_definitions(dhrystone.elf PRIVATE DHRY_ITERS=20)
elseif(${arch} STREQUAL "native")
    target_compile_definitions(dhrystone.elf PRIVATE DHRY_ITERS=200000)
else()
    target_compile_definitions(dhrystone.elf PRIVATE DHRY_ITERS=200)
endif()



add_qtoy_test(dhrystone)
add_rtoy_test(dhrystone)


get_file(srcs
    coremark/core_list_join.c
    coremark/core_main.c
    coremark/core_matrix.c
    coremark/core_state.c
    coremark/core_util.c
    coremark/barebones/core_portme.c
)

add_target(coremark ${COMMON_SRC} ${srcs})

target_include_directories(coremark.elf  PRIVATE 
    benchmarks/coremark 
    benchmarks/coremark/barebones
)
#"-Wa,-march=rv32im_zicsr"
set(COREMARK_COMPILE_OPTIONS "-O3" "-DPERFORMANCE_RUN=1" "-DITERATIONS=10"  "-fno-builtin-printf" "-Wa,--verbose" )
target_compile_options(coremark.elf PRIVATE ${COREMARK_COMPILE_OPTIONS})


add_qtoy_test(coremark)
add_rtoy_test(coremark)