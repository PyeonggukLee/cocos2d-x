LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := helloworld/main.cpp

LOCAL_WHOLE_STATIC_LIBRARIES := cocos_png_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_jpeg_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_xml2_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_game_logic_static

LOCAL_SHARED_LIBRARIES := lua_shared
LOCAL_SHARED_LIBRARIES += cocosdenshion_shared

include $(BUILD_SHARED_LIBRARY)

$(call import-module,external/platform_external_libpng)
$(call import-module,external/jpeg8d)
$(call import-module,external/platform_external_libxml2)
$(call import-module,HelloLua/Classes)
$(call import-module,cocos2dx)
$(call import-module,CocosDenshion/android)
$(call import-module,lua/proj.android/jni)
