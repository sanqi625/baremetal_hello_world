get_file(srcs interrupt.c)
add_target(interrupt ${COMMON_SRC} ${srcs})

add_qtoy_test(interrupt)
add_rtoy_test(interrupt)
