LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos_game_logic_static

LOCAL_MODULE_FILENAME := libgame_logic

LOCAL_SRC_FILES := \
AppDelegate.cpp \
../../lua/cocos2dx_support/CCLuaEngine.cpp \
../../lua/cocos2dx_support/Cocos2dxLuaLoader.cpp \
../../lua/cocos2dx_support/LuaCocos2d.cpp \
../../lua/cocos2dx_support/tolua_fix.c

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/../../cocos2dx \
                    $(LOCAL_PATH)/../../cocos2dx/include \
                    $(LOCAL_PATH)/../../cocos2dx/platform \
                    $(LOCAL_PATH)/../../CocosDenshion/include \
                    $(LOCAL_PATH)/../../lua/lua \
                    $(LOCAL_PATH)/../../lua/cocos2dx_support \
                    $(LOCAL_PATH)/../../lua/tolua

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)
