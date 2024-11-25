get_file(srcs debug_rom.s)
add_target(debug ${srcs})

add_qtoy_test(debug)
add_rtoy_test(debug)
