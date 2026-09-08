if(JOB_BUILD_QAIUTILS)
    add_subdirectory(qaiutils)
endif()

if(JOB_BUILD_CRYPTO AND JOB_BUILD_QSODIUM)
    add_subdirectory(qsodium)
endif()
add_subdirectory(qzstd)

if(JOB_BUILD_QSD)
    add_subdirectory(qsd)
endif()

if(JOB_BUILD_QLLAMA)
    add_subdirectory(qllama)
endif()

if(JOB_BUILD_QHF)
    add_subdirectory(qhf)                 # Depends on session manager
endif()

if(JOB_BUILD_QSESSIONMANAGER)
    # add_subdirectory(qsessionmanager)     # Depends on qaipkg which depends on job_aipkg which depends on job_net
endif()

