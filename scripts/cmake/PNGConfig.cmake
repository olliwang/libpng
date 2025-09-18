# PNGConfig.cmake
# CMake config file compatible with the FindPNG module.

# Copyright (c) 2024 Cosmin Truta
# Written by Benjamin Buch, 2024
#
# Use, modification and distribution are subject to
# the same licensing terms and conditions as libpng.
# Please see the copyright notice in png.h or visit
# http://libpng.org/pub/png/src/libpng-LICENSE.txt
#
# SPDX-License-Identifier: libpng-2.0

include(CMakeFindDependencyMacro)

find_dependency(ZLIB CONFIG)

include("${CMAKE_CURRENT_LIST_DIR}/PNGTargets.cmake")

if(NOT TARGET PNG::PNG)
  set_target_properties(
      PNG::png
      PROPERTIES
      IMPORTED_GLOBAL True
  )
  add_library(PNG::PNG ALIAS PNG::png)
endif()
