cmake_minimum_required(VERSION 3.3)

include("${CMAKE_CURRENT_LIST_DIR}/../library/ubinos/config/common.cmake")

project(ex03stm32f2)
project_begin()
project_add_library(ubinos)
project_add_library(seggerrtt_wrapper)
project_add_library(stm32cubef2_wrapper)
project_add_library(esp8266at)
project_end()

