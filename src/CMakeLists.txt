
# Add source to this project's executable.
add_executable(Achroma
    main.cpp
    vk_engine.cpp
    vk_engine.h
    vk_types.h
    vk_initializers.cpp
    vk_initializers.h)


set_property(TARGET Achroma PROPERTY VS_DEBUGGER_WORKING_DIRECTORY "$<TARGET_FILE_DIR:Achroma>")

target_include_directories(Achroma PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(Achroma vkbootstrap vma glm tinyobjloader imgui stb_image)

target_link_libraries(Achroma Vulkan::Vulkan sdl2)

add_dependencies(Achroma Shaders)
