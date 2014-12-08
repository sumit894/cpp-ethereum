# Find miniupnpc
#
# Find the miniupnpc includes and library
# 
# if you nee to add a custom library search path, do it via via CMAKE_FIND_ROOT_PATH 
# 
# This module defines
#  MINIUPNPC_INCLUDE_DIR, where to find header, etc.
#  MINIUPNPC_LIBRARY, the libraries needed to use gmp.
#  MINIUPNPC_FOUND, If false, do not try to use gmp.

# only look in default directories
find_path(
	MINIUPNPC_INCLUDE_DIR 
	NAMES miniupnpc/miniupnpc.h
	DOC "miniupnpc include dir"
	)

find_library(
	MINIUPNPC_LIBRARY
    NAMES miniupnpc
    DOC "miniupnpc library"
	)

# handle the QUIETLY and REQUIRED arguments and set MINIUPNPC_FOUND to TRUE
# if all listed variables are TRUE, hide their existence from configuration view
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(miniupnpc DEFAULT_MSG
	MINIUPNPC_INCLUDE_DIR MINIUPNPC_LIBRARY)                             
mark_as_advanced (MINIUPNPC_INCLUDE_DIR MINIUPNPC_LIBRARY)

