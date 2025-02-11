cmake_minimum_required(VERSION 3.16)

project(Task3 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# Find necessary Qt modules
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

# Find X11 for keyboard control
find_package(X11 REQUIRED)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appTask3
    main.cpp
    ledcontroller.cpp
)

qt_add_qml_module(appTask3
    URI Task3
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES Images.qrc
        SOURCES ledcontroller.cpp
        SOURCES ledcontroller.h
)

set_target_properties(appTask3 PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Link the required libraries
target_link_libraries(appTask3
    PRIVATE Qt6::Quick
    PRIVATE Qt6::QuickControls2
    PRIVATE X11  # Corrected X11 linking
)
