include(${PROJECT_UBINOS_DIR}/config/ubinos_stm3221geval.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/ex03stm32f2.cmake)

####

string(TOLOWER ${UBINOS__BSP__BOARD_MODEL} _temp_board_name)

include_directories(${CMAKE_CURRENT_LIST_DIR}/arch/arm/cortexm/${_temp_board_name})


