LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CXXFLAGS += -fPIC -DPIC -fexceptions -Wno-deprecated -I$(LOCAL_PATH)/../../iconv/include
LOCAL_SRC_FILES := ParserSax.tcc \
									ParserSax.cc \
									ParserDom.cc \
									Extensions.cc \
									CharsetConverter.cc \
									Uri.cc \
									Node.cc \
									utils.cc

LOCAL_MODULE := htmlcxx
LOCAL_SHARED_LIBRARIES := libiconv
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)
