LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CXXFLAGS +=  -fPIC -DPIC -fexceptions -Wno-deprecated -DDEFAULT_CSS="\"$(LOCAL_PATH)/css/default.css\""
LOCAL_SRC_FILES := css_syntax.c \
 									 css_lex.c \
									 parser_pp.cc\
									 parser.c
LOCAL_MODULE := htmlcxx_css
LOCAL_SHARED_LIBRARIES := libiconv
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)
