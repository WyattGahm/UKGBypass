TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 127.0.0.1
THEOS_DEVICE_PORT = 2222
GO_EASY_ON_ME=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UKGBypass

UKGBypass_FILES = Tweak.xm
UKGBypass_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
