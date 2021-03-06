# This function splits a target's source code up into appropriate
# subdirectories for correct organization in IDEs like Xcode and MSVC.
function(cmuIdeSplitSources target)
	if(MSVC_IDE)
		get_target_property(sources ${target} SOURCES)
		foreach(source ${sources})
			if(source MATCHES ".*/")
				string(REPLACE ${CMAKE_CURRENT_SOURCE_DIR}/ "" rel ${source})
				if(rel)
					string(REGEX REPLACE "/([^/]*)$" "" rel ${rel})
					if(rel)
						string(REPLACE "/" "\\\\" rel ${rel})
						source_group(${rel} FILES ${source})
					endif()
				endif()
			endif()
		endforeach()
	endif()
endfunction()
