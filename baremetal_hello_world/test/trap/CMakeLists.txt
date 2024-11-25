get_file(srcs trap.c)
add_target(trap ${COMMON_SRC} ${srcs})

add_qtoy_test(trap)
add_rtoy_test(trap)
