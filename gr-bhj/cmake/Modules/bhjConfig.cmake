INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_BHJ bhj)

FIND_PATH(
    BHJ_INCLUDE_DIRS
    NAMES bhj/api.h
    HINTS $ENV{BHJ_DIR}/include
        ${PC_BHJ_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    BHJ_LIBRARIES
    NAMES gnuradio-bhj
    HINTS $ENV{BHJ_DIR}/lib
        ${PC_BHJ_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(BHJ DEFAULT_MSG BHJ_LIBRARIES BHJ_INCLUDE_DIRS)
MARK_AS_ADVANCED(BHJ_LIBRARIES BHJ_INCLUDE_DIRS)

