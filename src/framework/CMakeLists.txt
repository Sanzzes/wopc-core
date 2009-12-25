SET(wopccoreframework_STAT_SRCS
   Policies/ObjectLifeTime.cpp
   Utilities/EventProcessor.cpp
)
include_directories(
${CMAKE_CURRENT_SRC_DIR}
)
add_library(wopccoreframework STATIC ${wopccoreframework_STAT_SRCS})
