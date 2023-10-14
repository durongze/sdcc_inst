cmake_minimum_required(VERSION 3.5)

project(blink LANGUAGES C)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_C_LINK_EXECUTABLE sdld)

add_executable(blink blink.c 8051_inc_error_hide.h)

#add_custom_command(TARGET blink POST_BUILD  COMMAND packihx.exe  $<TARGET_FILE:blink> > blink.hex VERBATIM )
#add_custom_command(OUTPUT some_file    COMMAND cmake --version > some_file    VERBATIM )

find_program(MYSH cmd HINTS C:\\Windows\\System32)
#add_custom_command(TARGET blink POST_BUILD  COMMAND ${CMAKE_COMMAND} -E env ${MYSH} /k "dir > some_file 2>&1"  VERBATIM )

###########################################
#add_custom_command(TARGET blink POST_BUILD   COMMAND echo "Generated content" > generated_file.txt  COMMENT "Generating custom file" )
find_program(mypackihx packihx HINTS F:\\program\\sdcc\\bin)
add_custom_command(TARGET blink POST_BUILD  COMMAND ${mypackihx}  "$<TARGET_FILE:blink>" > blink.hex COMMENT "${mypackihx}  $<TARGET_FILE:blink> > blink.hex" )