# Locate pugixml. Once completed, the following variables will be defined:
#
#     PUGIXML_FOUND
#     PUGIXML_INCLUDE_DIRS
#     PUGIXML_LIBRARIES

find_path(PUGIXML_INCLUDE_DIR NAMES pugixml.hpp)
find_library(PUGIXML_LIBRARY NAMES pugixml)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Pugixml
	FOUND_VAR
		PUGIXML_FOUND
	REQUIRED_VARS
		PUGIXML_LIBRARY
		PUGIXML_INCLUDE_DIR
)

mark_as_advanced(PUGIXML_LIBRARY PUGIXML_INCLUDE_DIR)

set(PUGIXML_INCLUDE_DIRS ${PUGIXML_INCLUDE_DIR})
set(PUGIXML_LIBRARIES ${PUGIXML_LIBRARY})
