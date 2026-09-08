## I can not get qt to shut up in the creator ... whatever
set(CMAKE_QT_CREATOR_ENABLE_MAINTENANCE_TOOL_PROVIDER OFF)
set(CMAKE_QT_CREATOR_ENABLE_PACKAGE_MANAGER_SETUP OFF)

##############################
# Qt Adapter Libraries
##############################
option(JOB_QT     "Build the Qt6 applications that are supported" ON)
option(JOB_BUILD_QTAI "Build the Qt AI adapter libraries" ON)
option(JOB_BUILD_QAIUTILS "Build the qaiutils Qt adapter library" ON)
option(JOB_BUILD_QSODIUM "Build the qsodium Qt adapter library" ON)
option(JOB_BUILD_QZSTD "Build the qzstd Qt adapter library" ON)
option(JOB_BUILD_QSD "Build the qsd diffusion adapter library" ON)
option(JOB_BUILD_QLLAMA "Build the qllama inference adapter library" ON)
option(JOB_BUILD_QHF "Build the qhf Hugging Face adapter library" OFF)
option(JOB_BUILD_QSESSIONMANAGER "Build the Qt session manager" OFF)

