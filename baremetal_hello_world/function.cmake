





## 定义函数
# function(add_prefix_to_list input_list prefix output_list)
#     set(${output_list})  # 清空输出列表
# 
#     foreach(item ${input_list})
#         list(APPEND ${output_list} "${prefix}${item}")
#     endforeach()
# 
#     set(${output_list} "${${output_list}}" PARENT_SCOPE)  # 将结果传递到函数外部
# endfunction()
# 
# # 示例用法
# set(my_list "file1" "file2" "file3")
# 
# # 调用函数，并将结果保存在新的列表中
# add_prefix_to_list("${my_list}" "prefix_" new_list)
# 
# # 打印结果
# message("Original List: ${my_list}")
# message("New List with Prefix: ${new_list}")
# 

###########################################################################
#
###########################################################################

function(get_file result_list)
    set(${result_list})

    #message(${ARGN})
    foreach(item ${ARGN})
        #message(${item})
        list(APPEND result_list "${CMAKE_CURRENT_LIST_DIR}/${item}")
    endforeach()

    set(${result_list} "${${result_list}}" PARENT_SCOPE)
endfunction(get_file)



###########################################################################
#
###########################################################################

function(include_with_msg include_path) 
    message("Include ${include_path}.")
    include(${include_path})
endfunction(include_with_msg)




###########################################################################
#
###########################################################################

function(add_target target_name)
    set(src ${ARGN})

    set(BUILD_DIR       ${CMAKE_CURRENT_LIST_DIR}/build/${arch}        )


    #message (${CMAKE_CURRENT_LIST_DIR})
    #message (${src})

    add_executable(${target_name}.elf ${src} ${LINKER_SCRIPT})
    set_target_properties(${target_name}.elf PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${BUILD_DIR}
    )

    #set(HEX_FILE        ${BUILD_DIR}/${target_name}.hex        )
    #set(BIN_FILE        ${BUILD_DIR}/${target_name}.bin        )
    set(ASM_FILE        ${BUILD_DIR}/${target_name}.S          )
    set(ITCM_HEX_FILE   ${BUILD_DIR}/${target_name}.itcm.hex   )
    set(DTCM_HEX_FILE   ${BUILD_DIR}/${target_name}.dtcm.hex   )

    #get_target_property($tmp_loc ${target_name}.elf LOCATION)

    add_custom_command(
        TARGET ${target_name}.elf POST_BUILD
        #OUTPUT ASM_FILE ITCM_HEX_FILE DTCM_HEX_FILE
        #COMMAND ${CMAKE_OBJCOPY} -Oihex $<TARGET_FILE:${target_name}.elf> ${HEX_FILE}
        #COMMAND ${CMAKE_OBJCOPY} -Obinary $<TARGET_FILE:${target_name}.elf> ${BIN_FILE}
        COMMAND ${CMAKE_OBJCOPY} --verilog-data-width 4 -O verilog --only-section=.text --change-section-lma .text*-0x80000000 $<TARGET_FILE:${target_name}.elf> ${ITCM_HEX_FILE}
        COMMAND ${CMAKE_OBJCOPY} --verilog-data-width 4 -O verilog  --only-section=*data* --change-section-lma *data*-0xa0000000 $<TARGET_FILE:${target_name}.elf> ${DTCM_HEX_FILE}
        COMMAND ${CMAKE_OBJDUMP} -d -S $<TARGET_FILE:${target_name}.elf> > ${ASM_FILE}
        COMMENT "Building ${HEX_FILE}
        Building ${BIN_FILE}"
    )

    # 添加自定义目标，并将生成的文件作为依赖
    #add_custom_target(tmp_tgt_${target_name} DEPENDS ${BUILD_DIR}/${target_name}.S)

    # 添加实际的可执行目标，并将自定义目标作为依赖
    #add_executable(my_executable main.c)
    #add_dependencies(my_executable my_custom_target)

    # add_dependencies(compile ${target_name}.elf)

    # add_custom_target(qtoy_${target_name}
    #     COMMAND echo "Start to run ${target_name} in qtoy."
    #     COMMAND ${CMAKE_SOURCE_DIR}/qtoy $<TARGET_FILE:${target_name}.elf>
    #     WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
    #     COMMENT "Running ${target_name} in qtoy."
   #  )

    # add_dependencies(qtoy qtoy_${target_name})

endfunction(add_target)




function(add_qtoy_test target_name)

    add_test (
        NAME    qtoy_${target_name}
        COMMAND ${CMAKE_SOURCE_DIR}/qtoy $<TARGET_FILE:${target_name}.elf>
        WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
    )

endfunction(add_qtoy_test)




function(add_rtoy_test target_name)

    add_test (
        NAME    rtoy_${target_name}
        COMMAND ${CMAKE_SOURCE_DIR}/rtoy $<TARGET_FILE:${target_name}.elf>
        WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
    )

endfunction(add_rtoy_test)


# add_test (
#     NAME    qtoy_hello
#     COMMAND ${CMAKE_SOURCE_DIR}/qtoy $<TARGET_FILE:hello.elf>
#     WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
# )

#get_target_property(file_location hello.elf LOCATION)
#message(${file})
#get_filename_component(fwo ${file} NAME_WE)
#message(${fwo})


# add_test (
#     NAME    rtoy_hello
#     COMMAND ${CMAKE_SOURCE_DIR}/rtoy $<TARGET_FILE:hello.elf>
#     WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/build
# )





function(generate_output_file target_name)
    set(HEX_FILE ${PROJECT_BINARY_DIR}/${target_name}.hex)
    set(BIN_FILE ${PROJECT_BINARY_DIR}/${target_name}.bin)
    set(ASM_FILE ${PROJECT_BINARY_DIR}/${target_name}.S)

    set(ITCM_HEX_FILE ${PROJECT_BINARY_DIR}/${target_name}_itcm.hex)
    set(DTCM_HEX_FILE ${PROJECT_BINARY_DIR}/${target_name}_dtcm.hex)

    add_custom_command(TARGET ${target_name}.elf POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -Oihex $<TARGET_FILE:${target_name}.elf> ${HEX_FILE}
    COMMAND ${CMAKE_OBJCOPY} -Obinary $<TARGET_FILE:${target_name}.elf> ${BIN_FILE}
    COMMAND ${CMAKE_OBJCOPY} --verilog-data-width 4 -O verilog --only-section=.text --change-section-lma .text*-0x80000000 $<TARGET_FILE:${target_name}.elf> ${ITCM_HEX_FILE}
    COMMAND ${CMAKE_OBJCOPY} --verilog-data-width 4 -O verilog  --only-section=*data* --change-section-lma *data*-0xa0000000 $<TARGET_FILE:${target_name}.elf> ${DTCM_HEX_FILE}
    COMMAND ${CMAKE_OBJDUMP} -d -S $<TARGET_FILE:${target_name}.elf> > ${ASM_FILE}
    COMMENT "Building ${HEX_FILE}
    Building ${BIN_FILE}")



endfunction(generate_output_file )