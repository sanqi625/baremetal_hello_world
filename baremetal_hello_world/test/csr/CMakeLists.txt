get_file(srcs csr.c)
add_target(csr ${COMMON_SRC} ${srcs})

add_qtoy_test(csr)
add_rtoy_test(csr)
