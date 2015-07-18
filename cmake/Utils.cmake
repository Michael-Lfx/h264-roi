
FUNCTION(GatherSources)
    GET_PROPERTY(LibChaosAllSources GLOBAL PROPERTY LibChaosAllSources)
    FOREACH(SRC ${ARGV})
        SET(LibChaosAllSources ${LibChaosAllSources} ${CMAKE_CURRENT_SOURCE_DIR}/${SRC})
    ENDFOREACH()
    SET_PROPERTY(GLOBAL PROPERTY LibChaosAllSources ${LibChaosAllSources})
ENDFUNCTION()

FUNCTION(GatherIncludes ProjectName)
    GET_PROPERTY(Include GLOBAL PROPERTY ${ProjectName}Include)
    FOREACH(DIR ${ARGN})
        SET(Include ${Include} ${CMAKE_CURRENT_SOURCE_DIR}/${DIR})
    ENDFOREACH()
    SET_PROPERTY(GLOBAL PROPERTY ${ProjectName}Include ${Include})
ENDFUNCTION()