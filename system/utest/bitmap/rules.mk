# Copyright 2016 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := usertest

MODULE_SRCS += \
    $(LOCAL_DIR)/main.c \
    $(LOCAL_DIR)/raw-bitmap-tests.cpp \
    $(LOCAL_DIR)/rle-bitmap-tests.cpp \

MODULE_NAME := bitmap-test

MODULE_STATIC_LIBS := \
    system/ulib/bitmap \
    system/ulib/zx \
    system/ulib/zxcpp \
    system/ulib/fbl \

MODULE_LIBS := \
    system/ulib/zircon \
    system/ulib/c \
    system/ulib/fdio \
    system/ulib/unittest \

include make/module.mk
