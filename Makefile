ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NetPing

# Tự động lấy sạch file trong các thư mục
NetPing_FILES = $(wildcard *.x) $(wildcard *.xm) $(wildcard *.mm) $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)
NetPing_CFLAGS = -fobjc-arc -I./ -IEsp -IKittyMemory
NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS_MAKE_PATH)/tweak.mk
