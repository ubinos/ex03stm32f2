set_cache(UBINOS__BSP__DTTY_TYPE "EXTERNAL" STRING)
set_cache(SEGGERRTT__DTTY_ENABLE TRUE BOOL)

set_cache(UBINOS__BSP__STM32F2_RCC_HSE_CONFIG "ON" STRING)
set_cache(UBINOS__BSP__STM32F2_HSE_VALUE "25000000U" STRING)

set_cache(UBINOS__BSP__OPENOCD_CONFIG_FILE "" PATH)
set_cache(UBINOS__BSP__GDBSCRIPT_FILE_LOAD "${PROJECT_UBINOS_DIR}/resource/ubinos/bsp/arch/arm/cortexm/gdb_flash_load.gdb" PATH)
set_cache(UBINOS__BSP__GDBSCRIPT_FILE_RESET "${PROJECT_UBINOS_DIR}/resource/ubinos/bsp/arch/arm/cortexm/gdb_flash_reset.gdb" PATH)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg.cmake)

include(${PROJECT_LIBRARY_DIR}/seggerrtt_wrapper/config/seggerrtt.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/ex03stm32f2.cmake)

####

string(TOLOWER ${UBINOS__BSP__BOARD_MODEL} _temp_board_name)

include_directories(${CMAKE_CURRENT_LIST_DIR}/arch/arm/cortexm/${_temp_board_name})


