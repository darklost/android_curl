LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += $(call all-c-files-under, curl-7.32.0/lib)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/curl-7.32.0/lib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/curl-7.32.0/include

LOCAL_CFLAGS += -D__ANDROID__

LOCAL_SHARED_LIBRARIES +=
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libcurl
#LOCAL_ADDITIONAL_DEPENDENCIES := $(local_additional_dependencies)
include $(BUILD_SHARED_LIBRARY)
