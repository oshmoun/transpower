# Licensed under the LICENSE.
# Copyright 2017, Sony Mobile Communications Inc.
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := TransPowerAcc
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
res_dirs := \
    ../common/res \
    ../libacc/res
LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, $(res_dirs))

LOCAL_STATIC_JAVA_LIBRARIES := \
    libacc \
    libpower

LOCAL_AAPT_FLAGS := --auto-add-overlay

# proguard:
#LOCAL_PROGUARD_ENABLED := disabled
# note that proguard.flags MUST contain proguard flags
# from the common library
LOCAL_PROGUARD_FLAG_FILES := \
    proguard.flags \
    ../common/proguard.flags

include $(BUILD_PACKAGE)
