get_file(srcs hello.c)

#add_library(print_lib /home/liuyunqi/trees/baremetal_hello_world/lib/print.c /home/liuyunqi/trees/baremetal_hello_world/lib/print/print.h)

#message(${COMMON_SRC})
add_target(hello ${COMMON_SRC} ${srcs})
#set(HELLO_COMPILE_OPTIONS "-O2" "-DTIME" "-DNOENUM" "-Wno-implicit" "-save-temps" "-falign-functions=4")
#target_compile_options(hello.elf PRIVATE ${HELLO_COMPILE_OPTIONS})

add_qtoy_test(hello)
add_rtoy_test(hello)

# add_test (
#     NAME    qtoy_hello
#     COMMAND ${CMAKE_SOURCE_DIR}/qtoy $<TARGET_FILE:hello.elf>
#     WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
# )
# 
# #get_target_property(file_location hello.elf LOCATION)
# #message(${file})
# #get_filename_component(fwo ${file} NAME_WE)
# #message(${fwo})
# 
# 
# add_test (
#     NAME    rtoy_hello
#     COMMAND ${CMAKE_SOURCE_DIR}/rtoy $<TARGET_FILE:hello.elf>
#     WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
# )