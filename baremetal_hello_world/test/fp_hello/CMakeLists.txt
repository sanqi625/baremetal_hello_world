get_file(srcs fp_hello.c)

add_target(fp_hello ${COMMON_SRC} ${srcs})

add_qtoy_test(fp_hello)
add_rtoy_test(fp_hello)
