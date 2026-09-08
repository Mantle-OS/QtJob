# for the qt stuff
# sudo apt install qt6-base-dev libqt6gui6 qt6-declarative-dev qt6-3d-dev qt6-quick3d-dev qt6-graphs-dev \
#    qml6-module-qtquick3d qml6-module-qtquick-layouts qml6-module-qtquick-controls qml6-module-qtgraphs qml6-module-qtcore qml6-module-qtqml
include(GenerateExportHeader)
include(GNUInstallDirs)
find_package(Threads REQUIRED)
find_package(PkgConfig REQUIRED)

## FIXME much latyer add a section for JOB_WINDOWS

## CRYPTO
pkg_check_modules(LibOpenSSL REQUIRED libssl)
pkg_check_modules(LibCrypto  REQUIRED libcrypto)
pkg_check_modules(LibZstd    REQUIRED libzstd)
pkg_check_modules(LibZ       REQUIRED zlib)
pkg_check_modules(LibSodium  REQUIRED libsodium)

## UART
pkg_check_modules(LibUdev REQUIRED libudev)

## DATA fun
pkg_check_modules(Flatbuffers  REQUIRED flatbuffers)
pkg_check_modules(NlohmannJson REQUIRED nlohmann_json)
pkg_check_modules(YAMLCpp      REQUIRED yaml-cpp)


find_package(Qt6 6.2 COMPONENTS
    Core
    Gui
    Network
    Concurrent
    Qml
    Quick
    QuickControls2
    REQUIRED
)

set(QML_INSTALL_DIR "${CMAKE_INSTALL_LIBDIR}/qt6/qml")

