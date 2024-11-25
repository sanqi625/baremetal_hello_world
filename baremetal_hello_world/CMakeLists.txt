cmake_minimum_required(VERSION 3.16)
set(CMAKE_SYSTEM_NAME       Generic )
set(CMAKE_SYSTEM_VERSION    1       )

# project settings
project(baremetal C CXX ASM)
set(CMAKE_CXX_STANDARD  11)
set(CMAKE_C_STANDARD    11)
enable_testing()

if(NOT DEFINED arch)
    set(arch "toy_bm")
endif()


message("All available arch: toy_bm / native / rv_linux")
message("Current Target is \"${arch}\".")


if(${arch} STREQUAL "toy_bm")

    set(COMPILER_PREFIX                 /tools/software/riscv/riscv32-unknown-elf-gcc/bin/riscv32-unknown-elf-      )
    set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY              )



    # B ext: zba_zbb_zbc_zbs
    # -mbranch-cost=2 
    add_compile_options(-ffunction-sections -fdata-sections -fno-common -fmessage-length=0  -fno-builtin-printf -fno-common -march=rv32im_zicsr -mbranch-cost=2  -mabi=ilp32 -nostartfiles )

    set(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/hal/toy/link.ld)
    add_link_options(-Wl,-gc-sections,--print-memory-usage,-Map=${PROJECT_BINARY_DIR}/${PROJECT_NAME}.map)
    add_link_options(-T ${LINKER_SCRIPT})

    set(COMMON_SRC
        hal/toy/startup.S 
        hal/toy/to_host.c
        hal/toy/init.c
        hal/toy/global.c
        hal/toy/pmp_init.c
        hal/toy/trap_handle_func/ecall.c
        hal/toy/trap_handle_func/illegal_inst.c
        hal/toy/trap_handle_func/ebreak.c
        hal/toy/trap_handle_func/ext_inter_proc.c
        hal/toy/trap_handle_func/fetch_access.c
        hal/toy/trap_handle_func/store_access.c
        hal/toy/trap_handle_func/load_access.c
        hal/toy/trap_handler.c
        hal/riscv/cycle.c
        hal/riscv/strcmp.S
        driver/uart.c
        lib/print/printf.c
    )

        
    include_directories(hal/riscv)
    include_directories(hal)
    include_directories(driver)
    include_directories(lib/print)

elseif(${arch} STREQUAL "rv_linux")
    set(COMPILER_PREFIX                 /tools/software/riscv/riscv64-unknown-elf-gcc/bin/riscv64-unknown-elf-     )
    
    add_compile_options(-march=rv64gc -fexec-charset=utf-8 -fwide-exec-charset=utf-8)
    
    set(COMMON_SRC
        hal/linux/cycle.c
    )
        
    include_directories(hal)
    include_directories(hal/linux)
    
elseif(${arch} STREQUAL "native")
    
    set(COMPILER_PREFIX                 ""                          )
    set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY              )
    
    set(COMMON_SRC
        hal/linux/cycle.c
    )
    
    include_directories(hal)
    include_directories(hal/linux)
    
else()
    message(FATAL_ERROR "${TARGET} is not a legal arch.")
endif()
    
    
    
set(CMAKE_C_COMPILER                ${COMPILER_PREFIX}gcc     )
set(CMAKE_CXX_COMPILER              ${COMPILER_PREFIX}g++     )
set(CMAKE_ASM_COMPILER              ${COMPILER_PREFIX}gcc     )
set(CMAKE_AR                        ${COMPILER_PREFIX}ar      )
set(CMAKE_OBJCOPY                   ${COMPILER_PREFIX}objcopy )
set(CMAKE_OBJDUMP                   ${COMPILER_PREFIX}objdump )
set(SIZE                            ${COMPILER_PREFIX}size    )
    
set(CMAKE_TRY_COMPILE_TARGET_TYPE   STATIC_LIBRARY            )
    

if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    add_definitions(-DARCH64)
    message("Current Target Arch is 64 bit width, define macro \"ARCH64\".")
else()
    message("Current Target Arch is 32 bit width.")
endif()
    
    
message(${COMMON_SRC})
    
    
include(function.cmake)
    
#add_custom_target(compile)
#add_custom_target(qtoy)
    
include_with_msg(${CMAKE_CURRENT_SOURCE_DIR}/test/CMakeLists.txt)
include_with_msg(${CMAKE_CURRENT_SOURCE_DIR}/benchmarks/CMakeLists.txt)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # set (HELLO_WORLD_SRC ${COMMON_SRC} main.c)
    # message (${HELLO_WORLD_SRC})
    # add_executable(hello_world.elf ${HELLO_WORLD_SRC} ${LINKER_SCRIPT})
# generate_output_file(hello_world)
# dhrystone 
#get_file(res main.c startup.S)
#message(STATUS ${res})




