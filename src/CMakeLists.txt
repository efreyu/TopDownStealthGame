# SPDX-License-Identifier: Unlicense

file( GLOB_RECURSE PROJECT_SOURCES "*.cpp" "*.h" )
target_sources( ${PROJECT_NAME}
    PRIVATE
        ${PROJECT_SOURCES}
)

target_include_directories( ${PROJECT_NAME}
    PRIVATE
        "src"
)
