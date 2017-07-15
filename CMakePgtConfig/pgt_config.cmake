#Deduce Compiler
	SET(CMGR_COMP_MSVC 0)
	SET(CMGR_COMP_MINGW 0)
	SET(CMGR_COMP_GNUCPP 0)
	SET(CMGR_COMP_CLANG 0)
	SET(CMGR_COMP_INTEL 0)
	IF(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
		SET(CMGR_COMP_MSVC 1)
		SET(CMGR_LIB_EXT ".lib")
	ELSEIF(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
		IF(WIN32 AND NOT CMAKE_HOST_WIN32)
			SET(CMGR_SYS_MINGW 1)
		ENDIF(WIN32 AND NOT CMAKE_HOST_WIN32)
		SET(CMGR_COMP_GNUCPP 1)
		SET(CMGR_LIB_EXT ".a")
	ELSE(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
		MESSAGE(FATAL ERROR "Your ${CMAKE_CXX_COMPILER_ID} Compiler is not specifically handled. Using Fallback.")
	ENDIF(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")

#Handle Single/Multi Config Build Systems
	SET(PGT_INTERNAL_TARGET_OUTPUT_PATH "${CMAKE_BINARY_DIR}")
	STRING(LENGTH ${CMAKE_CFG_INTDIR} STRLEN) #'.' for single config
	IF(${STRLEN} LESS 2)
		SET(PGT_MULTICONFIG FALSE)
		SET(CMAKE_BUILD_TYPE "build")
		SET(PGT_INTERNAL_TARGET_OUTPUT_PATH "${PGT_INTERNAL_TARGET_OUTPUT_PATH}/build")
	ELSE(${STRLEN} LESS 2)
		SET(PGT_MULTICONFIG TRUE)
		SET(CMAKE_BUILD_TYPE "build")
		SET(CMAKE_CONFIGURATION_TYPES "build")
	ENDIF(${STRLEN} LESS 2)

#Set Output Dir
	set (CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PGT_INTERNAL_TARGET_OUTPUT_PATH} )
	set (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PGT_INTERNAL_TARGET_OUTPUT_PATH} )
	set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PGT_INTERNAL_TARGET_OUTPUT_PATH} )
	set (ARCHIVE_OUTPUT_DIRECTORY ${PGT_INTERNAL_TARGET_OUTPUT_PATH} )
	set (LIBRARY_OUTPUT_DIRECTORY ${PGT_INTERNAL_TARGET_OUTPUT_PATH} )
	set (RUNTIME_OUTPUT_DIRECTORY ${PGT_INTERNAL_TARGET_OUTPUT_PATH} )

	SET(PGT_BUILD_DIR "${CMAKE_BINARY_DIR}/build")

#ALL POSSIBLE CONFIGS:
	#Debug32Static
	#Debug32Dynamic
	#Release32Static
	#Release32Dynamic
	#Debug64Static
	#Debug64Dynamic
	#Release64Static
	#Release64Dynamic

#Deduce Build Options
	SET(CMGR_DEBUG 0)
	SET(CMGR_STATIC 0)
	SET(CMGR_WIN64 0)
	IF(${PGT_CONFIG} STREQUAL "Debug32Static")
		SET(CMGR_DEBUG 1)
		SET(CMGR_STATIC 1)

	ELSEIF(${PGT_CONFIG} STREQUAL "Debug32Dynamic")
		SET(CMGR_DEBUG 1)

	ELSEIF(${PGT_CONFIG} STREQUAL "Release32Static")
		SET(CMGR_STATIC 1)

	ELSEIF(${PGT_CONFIG} STREQUAL "Release32Dynamic")

	ELSEIF(${PGT_CONFIG} STREQUAL "Debug64Static")
		SET(CMGR_DEBUG 1)
		SET(CMGR_STATIC 1)
		SET(CMGR_WIN64 1)

	ELSEIF(${PGT_CONFIG} STREQUAL "Debug64Dynamic")
		SET(CMGR_DEBUG 1)
		SET(CMGR_WIN64 1)

	ELSEIF(${PGT_CONFIG} STREQUAL "Release64Static")
		SET(CMGR_STATIC 1)
		SET(CMGR_WIN64 1)

	ELSEIF(${PGT_CONFIG} STREQUAL "Release64Dynamic")
		SET(CMGR_WIN64 1)

	#NO NEW CONFIG DONT CONFUSE
	ELSE(${PGT_CONFIG} STREQUAL "Debug32Static")
		MESSAGE(FATAL_ERROR "Unsupported Configuration")
	ENDIF(${PGT_CONFIG} STREQUAL "Debug32Static")
#Set Compiler and Linker Flags	
    IF(CMGR_DEBUG) 
		SET(CMAKE_CXX_FLAGS_BUILD ${CMAKE_CXX_FLAGS_DEBUG}) 
		SET(CMAKE_EXE_LINKER_FLAGS_BUILD ${CMAKE_EXE_LINKER_FLAGS_DEBUG})
		SET(CMAKE_C_FLAGS_BUILD ${CMAKE_C_FLAGS_DEBUG}) 
		SET(CMAKE_SHARED_LINKER_FLAGS_BUILD ${CMAKE_SHARED_LINKER_FLAGS_DEBUG})
	ELSE(CMGR_DEBUG)
        SET(CMAKE_CXX_FLAGS_BUILD ${CMAKE_CXX_FLAGS_RELEASE})
		SET(CMAKE_EXE_LINKER_FLAGS_BUILD ${CMAKE_EXE_LINKER_FLAGS_RELEASE})
		SET(CMAKE_C_FLAGS_BUILD ${CMAKE_C_FLAGS_RELEASE}) 
		SET(CMAKE_SHARED_LINKER_FLAGS_BUILD ${CMAKE_SHARED_LINKER_FLAGS_RELEASE})
	ENDIF(CMGR_DEBUG)

    IF(CMGR_STATIC AND CMGR_COMP_MSVC) 
		STRING(REPLACE "/MD" "/MT" PGT_TEMP_VAR ${CMAKE_EXE_LINKER_FLAGS_BUILD})
        SET(CMAKE_EXE_LINKER_FLAGS_BUILD ${PGT_TEMP_VAR})
	ENDIF(CMGR_STATIC AND CMGR_COMP_MSVC)
#Print Information
    MESSAGE(STATUS "CMakeConfigMgr finished for ${PGT_CONFIG}")
    MESSAGE(STATUS "Specified Compiler arguments: " "${CMAKE_CXX_FLAGS_BUILD}")
    MESSAGE(STATUS "Specified Linker arguments: " "${CMAKE_EXE_LINKER_FLAGS_BUILD}")
