cmake_minimum_required(VERSION 3.7)
set(CMAKE_CXX_STANDARD 14)
#project(PGTEngine_core)

#Specifying Code Files 
set(PGT_HEADER_FILES
	src/pgt/game/3d/camera/Camera.h
	src/pgt/game/3d/camera/FPSCameraController.h
	src/pgt/game/3d/collision/AABB.h
	src/pgt/game/3d/collision/Collider.h
	src/pgt/game/3d/collision/MovementChecker.h
	src/pgt/graphics/Color.h
	src/pgt/graphics/graphics_2d.h
	src/pgt/graphics/graphics_2d_fwd.h
	src/pgt/graphics/plattform/interface/IFont.h
	src/pgt/graphics/plattform/interface/IFontManager.h
	src/pgt/graphics/plattform/interface/IFramebuffer.h
	src/pgt/graphics/plattform/opengl/font/GlFont.h
	src/pgt/graphics/plattform/opengl/font/GlFontManager.h
	src/pgt/graphics/image/IImage.h
	src/pgt/graphics/image/Image.h
	src/pgt/graphics/image/ImageRGBA.h
	src/pgt/graphics/plattform/interface/IRenderer2D.h
	src/pgt/graphics/plattform/opengl/2d/GlRenderer2D.h
	src/pgt/graphics/plattform/opengl/GlDefaultFramebuffer.h
	src/pgt/graphics/plattform/opengl/GlTexture.h
	src/pgt/graphics/plattform/opengl/GlFramebuffer.h
	src/pgt/graphics/plattform/opengl/GlIndexBuffer.h
	src/pgt/graphics/plattform/opengl/font/GlFontInternal.h
	src/pgt/graphics/plattform/opengl/GlShader.h
	src/pgt/graphics/plattform/opengl/res/PGTResourceManager.h
	src/pgt/graphics/plattform/opengl/voxel/models/AsyncModelHandler.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelContainer.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelMeshUpdaterStorage.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModel.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelAsync.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelBatched.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelBatchedAsync.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelManager.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelStatic.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelStaticAsync.h
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelTerrainModel.h
	src/pgt/graphics/plattform/opengl/voxel/model_updaters/AsyncVoxelModelUpdater.h
	src/pgt/graphics/plattform/opengl/voxel/model_updaters/SharedDataStructs.h
	src/pgt/graphics/plattform/opengl/voxel/model_updaters/VoxelMeshUpdater.h
	src/pgt/graphics/plattform/opengl/voxel/renderers/batched/VoxelBatch.h
	src/pgt/graphics/plattform/opengl/voxel/renderers/batched/VoxelBatchRenderer.h
	src/pgt/graphics/plattform/opengl/voxel/renderers/batched/VoxelMeshBatched.h
	src/pgt/graphics/plattform/opengl/voxel/renderers/static/StaticVoxelMeshRenderer.h
	src/pgt/graphics/plattform/opengl/voxel/renderers/static/VoxelMeshStatic.h
	src/pgt/graphics/plattform/opengl/voxel/renderers/VoxelVertex.h
	src/pgt/graphics/plattform/software/SwRenderer.h
	src/pgt/graphics/plattform/software/SwTexture.h
	src/pgt/graphics/plattform/interface/IRenderingContext.h
	src/pgt/graphics/plattform/interface/ITexture.h
	src/pgt/graphics/plattform/target.h
	src/pgt/utils/string/path_utils.h
	src/pgt/managed_object.h
	src/pgt/utils/algorithms.h
	src/pgt/utils/string/string_utf16_back_inserter.h
	src/pgt/utils/string/utf8/checked.h
	src/pgt/utils/string/utf8/core.h
	src/pgt/utils/string/utf8/unchecked.h
	src/pgt/utils/string/utf8/utf8.h
	src/pgt/window/engine.h
	src/pgt/window/gui/controls/Control.h
	src/pgt/window/gui/controls/ControlContainer.h
	src/pgt/window/gui/controls/DraggableButton.h
	src/pgt/window/gui/controls/HorizontalScrollbar.h
	src/pgt/window/gui/controls/ListView.h
	src/pgt/window/gui/controls/ListViewItem.h
	src/pgt/window/gui/controls/VerticalScrollbar.h
	src/pgt/window/gui/Delegate.h
	src/pgt/window/gui/EventComponent.h
	src/pgt/window/gui/EventComponentContainer.h
	src/pgt/window/gui/events/PGT_KEYS.h
	src/pgt/window/gui/events/Delegate.h
	src/pgt/window/gui/events/Event.h
	src/pgt/window/gui/events/events.h
	src/pgt/window/gui/events/InputManager.h
	src/pgt/window/gui/events/KeyDownEvent.h
	src/pgt/window/gui/events/KeyUpEvent.h
	src/pgt/window/gui/events/MouseButtonDownEvent.h
	src/pgt/window/gui/events/MouseButtonUpEvent.h
	src/pgt/window/gui/events/MouseMoveEvent.h
	src/pgt/window/gui/events/MouseScrollEvent.h
	src/pgt/window/gui/events/PositionChangedEvent.h
	src/pgt/window/gui/events/pure_events.h
	src/pgt/window/gui/events/Render2DEvent.h
	src/pgt/window/gui/events/MoveEvent.h
	src/pgt/window/gui/events/ResizeEvent.h
	src/pgt/window/Game2DWindow.h
	src/pgt/window/gui/controls/Button.h
	src/pgt/window/gui/GuiComponent.h
	src/pgt/window/gui/GuiComponent2DContainer.h
	src/pgt/window/gui/GuiComponentContainer.h
	src/pgt/window/gui/GuiLayer.h
	src/pgt/window/gui/controls/DraggableControl.h
	src/pgt/window/gui/controls/Panel.h
	src/pgt/window/gui/controls/RectangularControl.h
	src/pgt/window/gui/Rectangle.h
	src/pgt/window/gui/gui.h
	src/pgt/window/gui/GuiWindow.h
	src/pgt/window/gui/GuiComponent2D.h
	src/pgt/window/layers/Layer.h
	src/pgt/window/layers/LayerContainer.h
	src/pgt/window/layers/ParentLayer2D.h
	src/pgt/window/layers/RenderingLayer.h
	src/pgt/window/layers/SubLayer2D.h
	src/pgt/window/plattform/interface/IApp.h
	src/pgt/window/GameWindow.h
	src/pgt/window/plattform/interface/IWindow.h
	src/pgt/window/layers/Layer2D.h
	src/pgt/window/plattform/sdl/SdlApp.h
	src/pgt/window/plattform/sdl/SdlGlRenderingContext.h
	src/pgt/window/plattform/sdl/SdlWindow.h
	src/pgt/window/plattform/sdl/SdlWindowEventHoudshold.h
	src/pgt/window/plattform/sdl/sdl_fwd_decls.h
	src/pgt/window/plattform/sdl/sdl_window_data.h
	src/pgt/window/plattform/target.h
	src/pgt/window/window.h
	src/pgt/window/window_fwd.h
	src/pgt/io/filesystem/FileSystem.h
	src/pgt/io/filesystem/plattform/target.h
	src/pgt/io/filesystem/plattform/windows/WindowsFileStreamReader.h
	src/pgt/io/filesystem/plattform/windows/WindowsFileStreamWriter.h
	src/pgt/io/logger/logger.h
	src/pgt/io/filesystem/plattform/interface/IFileSystem.h
	src/pgt/io/filesystem/plattform/windows/FileSystemWindows.h
	src/pgt/io/istreams/IStreamReader.h
	src/pgt/io/istreams/IStreamWriter.h
	src/pgt/io/memory_streams/MemoryStreamReader.h
	src/pgt/io/memory_streams/MemoryStreamWriter.h
	src/pgt/io/istreams/istreams.h
	src/pgt/io/vfs/IDirectory.h
	src/pgt/io/vfs/DynamicMemoryFile.h
	src/pgt/io/vfs/IFile.h
	src/pgt/io/vfs/PathForwarder.h
	src/pgt/io/vfs/StaticMemoryFile.h
	src/pgt/io/vfs/VDirectory.h
	src/pgt/io/vfs/VirtualFileSystem.h
	src/pgt/io/vfs/VfsFileStreamReader.h
	src/pgt/io/vfs/VfsFileStreamWriter.h
	src/pgt/io/vfs/OSDirectory.h
	src/pgt/maths/maths.h
	src/pgt/maths/mat/mat3.h
	src/pgt/maths/mat/mat4.h
	src/pgt/maths/random/SimplexNoise.h
	src/pgt/maths/veci/vec2i.h
	src/pgt/maths/veci/vec3i.h
	src/pgt/maths/veci/vec4i.h
	src/pgt/maths/vec/vec2.h
	src/pgt/maths/vec/vec3.h
	src/pgt/maths/vec/vec4.h
    src/pgt/target_settings/pgt_settings.h
	src/pgt/target_settings/system_settings.h
	src/pgt/target_settings/target_settings.h
	src/pgt/utils/containers/DArray.h
	src/pgt/utils/containers/Queue.h
	src/pgt/utils/debug/MessageBoxes.h
	src/pgt/utils/primitives.h
	src/pgt/utils/Randomizer.h
	src/pgt/utils/Stopwatch.h
	src/pgt/utils/string/string_utils.h
	src/pgt/utils/template_instantiation_helper.h
)

set(PGT_SOURCE_FILES
	src/pgt/game/3d/camera/Camera.cpp
	src/pgt/game/3d/camera/FPSCameraController.cpp
	src/pgt/game/3d/collision/AABB.cpp
	src/pgt/game/3d/collision/Collider.cpp
	src/pgt/graphics/Color.cpp
	src/pgt/graphics/plattform/opengl/font/GlFont.cpp
	src/pgt/graphics/plattform/opengl/font/GlFontManager.cpp
	src/pgt/graphics/image/Image.cpp
	src/pgt/graphics/image/ImageRGBA.cpp
	src/pgt/graphics/plattform/opengl/2d/GlRenderer2D.cpp
	src/pgt/graphics/plattform/opengl/GlDefaultFramebuffer.cpp
	src/pgt/graphics/plattform/opengl/GlRenderingContext.cpp
	src/pgt/graphics/plattform/opengl/GlTexture.cpp
	src/pgt/graphics/plattform/opengl/GlFramebuffer.cpp
	src/pgt/graphics/plattform/opengl/GlIndexBuffer.cpp
	src/pgt/graphics/plattform/opengl/font/GlFontInternal.cpp
	src/pgt/graphics/plattform/opengl/GlShader.cpp
	src/pgt/graphics/plattform/opengl/res/PGTResourceManager.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelContainer.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelMeshUpdaterStorage.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModel.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelAsync.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelBatched.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelManager.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelModelStatic.cpp
	src/pgt/graphics/plattform/opengl/voxel/models/VoxelTerrainModel.cpp
	src/pgt/graphics/plattform/opengl/voxel/model_updaters/SharedDataStructs.cpp
	src/pgt/graphics/plattform/opengl/voxel/renderers/batched/VoxelBatch.cpp
	src/pgt/graphics/plattform/opengl/voxel/renderers/batched/VoxelBatchRenderer.cpp
	src/pgt/graphics/plattform/opengl/voxel/renderers/batched/VoxelMeshBatched.cpp
	src/pgt/graphics/plattform/opengl/voxel/renderers/static/StaticVoxelMeshRenderer.cpp
	src/pgt/graphics/plattform/opengl/voxel/renderers/static/VoxelMeshStatic.cpp
	src/pgt/graphics/plattform/opengl/voxel/renderers/VoxelVertex.cpp
	src/pgt/graphics/plattform/software/SwTexture.cpp
	src/pgt/utils/string/path_utils.cpp
	src/pgt/window/engine.cpp
	src/pgt/window/gui/controls/Button.cpp
	src/pgt/window/gui/controls/HorizontalScrollbar.cpp
	src/pgt/window/gui/controls/ListView.cpp
	src/pgt/window/gui/controls/ListViewItem.cpp
	src/pgt/window/gui/controls/VerticalScrollbar.cpp
	src/pgt/window/gui/events/InputManager.cpp
	src/pgt/window/GameWindow.cpp
	src/pgt/window/gui/controls/DraggableControl.cpp
	src/pgt/window/gui/controls/Panel.cpp
	src/pgt/window/gui/GuiWindow.cpp
	src/pgt/window/plattform/sdl/SdlApp.cpp
	src/pgt/window/plattform/sdl/SdlGlRenderingContext.cpp
	src/pgt/window/plattform/sdl/SdlWindow.cpp
	src/pgt/io/filesystem/FileSystem.cpp
	src/pgt/io/filesystem/plattform/windows/WindowsFileStreamReader.cpp
	src/pgt/io/filesystem/plattform/windows/WindowsFileStreamWriter.cpp
	src/pgt/io/logger/logger.cpp
	src/pgt/io/filesystem/plattform/windows/FileSystemWindows.cpp
	src/pgt/io/vfs/PathForwarder.cpp
	src/pgt/io/vfs/VDirectory.cpp
	src/pgt/io/vfs/VirtualFileSystem.cpp
	src/pgt/io/vfs/VfsFileStreamReader.cpp
	src/pgt/io/vfs/VfsFileStreamWriter.cpp
	src/pgt/io/vfs/OSDirectory.cpp
	src/pgt/maths/maths.cpp
	src/pgt/maths/mat/mat3.cpp
	src/pgt/maths/mat/mat4.cpp
	src/pgt/maths/random/SimplexNoise.cpp
	src/pgt/maths/veci/vec2i.cpp
	src/pgt/maths/veci/vec3i.cpp
	src/pgt/maths/veci/vec4i.cpp
	src/pgt/maths/vec/vec2.cpp
	src/pgt/maths/vec/vec3.cpp
	src/pgt/maths/vec/vec4.cpp
	src/pgt/utils/debug/MessageBoxes.cpp
	src/pgt/utils/Randomizer.cpp
	src/pgt/utils/Stopwatch.cpp
	src/pgt/utils/string/string_utils.cpp
	src/pgt/utils/std_types.h
)


#Create the Lib without Dependencies
set(PGT_IncludeDirectories
	src/
	deps/include/
)
add_library(pgt_slim STATIC ${PGT_SOURCE_FILES} ${PGT_HEADER_FILES})
target_include_directories(pgt_slim PRIVATE ${PGT_IncludeDirectories})
target_compile_definitions(pgt_slim PRIVATE
	_CRT_SECURE_NO_WARNINGS
	GLEW_STATIC
	FREEIMAGE_LIB
	NOT_USING_FT_GL_NAMESPACE
)

#build dependencies and depend on them
	add_subdirectory(deps/builds)
	IF(PGT_STATIC)
		add_dependencies(pgt_slim glew_s freetype freetype-gl SDL2main SDL2-static FreeImage) 
	ELSE()
		add_dependencies(pgt_slim glew_s freetype freetype-gl SDL2main SDL2 FreeImage)
	ENDIF()
	IF(NOT PGT_STATIC)
		target_link_libraries(pgt_slim "${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}SDL2${PGT_DLL_EXT}")
	ENDIF()

#Adding Libs that we depend on
	SET(PGT_LIB_LIST
		"${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}freetype-gl${PGT_LIB_EXT}"
		"${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}SDL2main${PGT_LIB_EXT}"
		"${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}freetype${PGT_D_EXT}${PGT_LIB_EXT}"
		"${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}FreeImage${PGT_LIB_EXT}"
		"${CMAKE_BINARY_DIR}/lib${PGT_CONFIG_SUBDIR}/libglew32${PGT_D_EXT}${PGT_LIB_EXT}"
        "${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}pgt_slim${PGT_LIB_EXT}"
	)
    IF(MINGW)
        list(APPEND PGT_LIB_LIST "${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}SDL2.dll${PGT_LIB_EXT}")
    ELSE()
        list(APPEND PGT_LIB_LIST "${PGT_BUILD_DIR}/${PGT_LIB_PREFIX}SDL2${PGT_LIB_EXT}")
    ENDIF()
#Adding System Libs
    SET(PGT_SYSTEM_LIBS
    		"${PGT_LIB_PREFIX}winmm${PGT_LIB_EXT}"
    		"${PGT_LIB_PREFIX}imm32${PGT_LIB_EXT}"
    		"${PGT_LIB_PREFIX}version${PGT_LIB_EXT}"
            "${PGT_LIB_PREFIX}opengl32${PGT_LIB_EXT}"
            "${PGT_LIB_PREFIX}ws2_32${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}uuid${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}imagehlp${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}dinput8${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}dxguid${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}dxerr8${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}user32${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}gdi32${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}ole32${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}oleaut32${PGT_LIB_EXT}"
    #		"${PGT_LIB_PREFIX}shell32"
    )
IF(WIN32 AND NOT MINGW)
    FOREACH(PGT_LIB_NAMES_ITER ${PGT_SYSTEM_LIBS})
        list(APPEND PGT_LIB_LIST ${PGT_LIB_NAMES_ITER})
    ENDFOREACH(PGT_LIB_NAMES_ITER)
ELSE()
    FOREACH(PGT_LIB_NAMES_ITER ${PGT_SYSTEM_LIBS})
        find_library(PGT_TEMP_LIB_PATH ${PGT_LIB_NAMES_ITER})
        list(APPEND PGT_LIB_LIST ${PGT_TEMP_LIB_PATH})
        UNSET(PGT_TEMP_LIB_PATH CACHE)
    ENDFOREACH(PGT_LIB_NAMES_ITER)
ENDIF()
	#searching for opengl
            IF(FALSE)
                INCLUDE(${CMAKE_ROOT}/Modules/FindOpenGL.cmake)
                if(NOT OPENGL_FOUND)
                    message(ERROR " OPENGL not found!")
                endif(NOT OPENGL_FOUND)
                message(STATUS "OPENGL PATH:  ${OPENGL_gl_LIBRARY}")
                list(APPEND PGT_LIB_LIST ${OPENGL_gl_LIBRARY}${PGT_LIB_EXT})
            ENDIF()

#Create combine lib command from deps
	SET(PGT_LIB_COMMAND "")
	MESSAGE(STATUS "LIBS:")
	IF(MSVC)
		FOREACH(PGT_LIB_NAMES_ITER ${PGT_LIB_LIST})
			MESSAGE(STATUS "    ${PGT_LIB_NAMES_ITER}")
			SET(PGT_LIB_COMMAND "${PGT_LIB_COMMAND} \"${PGT_LIB_NAMES_ITER}\"")
		ENDFOREACH(PGT_LIB_NAMES_ITER)
	ELSEIF(MINGW)
		FOREACH(PGT_LIB_NAMES_ITER ${PGT_LIB_LIST})
			MESSAGE(STATUS "    ${PGT_LIB_NAMES_ITER}")
			SET(PGT_LIB_COMMAND "${PGT_LIB_COMMAND} & echo ADDLIB ${PGT_LIB_NAMES_ITER}")
		ENDFOREACH(PGT_LIB_NAMES_ITER)
	ENDIF()

#Combine Lib with Dependencies through external Command
IF(MSVC)
	add_custom_command(
		TARGET pgt_slim POST_BUILD
		DEPENDS pgt_slim
		COMMAND lib.exe /OUT:${PGT_BUILD_DIR}/pgt.lib ${PGT_LIB_COMMAND}
	)
ELSEIF(MINGW)
    SET(CMD_TO_EXEC "(echo CREATE ${PGT_BUILD_DIR}/libpgt.a ${PGT_LIB_COMMAND} & echo SAVE & echo END) | ar -M")
    MESSAGE(STATUS ${CMD_TO_EXEC})
	add_custom_command(
		TARGET pgt_slim POST_BUILD
		DEPENDS pgt_slim
#the garbage with the wrapping cmd.exe is needed because of add_custom_command's STUPID quote policy
        COMMAND cmd.exe /S /C ${CMD_TO_EXEC}
		COMMAND ranlib ${PGT_BUILD_DIR}/libpgt.a
	)
ENDIF()

