# Defines the following:
#
# RE2_FOUND - True if RE2 was found
# RE2_LIBRARIES - The libraries which should be linked for RE2
# RE2_INCLUDE_DIRS - The include directories for RE2
# RE2_DEFINITIONS - The preprocessor definitions required for RE2

find_path(RE2_INCLUDE_DIR
	re2/re2.h
	HINTS ${RE2_INCLUDEDIR_HINT}
	)
find_library(RE2_LIBRARY
	NAMES re2
	HINTS ${RE2_LIBRARYDIR_HINT}
	)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(RE2 DEFAULT_MSG RE2_LIBRARY RE2_INCLUDE_DIR)

mark_as_advanced(RE2_INCLUDE_DIR RE2_LIBRARY)

set(RE2_LIBRARIES ${RE2_LIBRARIES})
SET(RE2_INCLUDE_DIRS ${RE2_INCLUDE_DIR})
