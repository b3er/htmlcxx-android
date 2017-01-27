LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CXXFLAGS += -fPIC -DPIC -fexceptions -Wno-deprecated -I$(LOCAL_PATH)/..
LOCAL_SRC_FILES := src/hcxselect.cpp
LOCAL_MODULE := htcselect
LOCAL_SHARED_LIBRARIES := libiconv libhtmlcxx
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)
