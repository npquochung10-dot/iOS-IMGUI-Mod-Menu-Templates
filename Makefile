ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NetPing

NetPing_FILES = ImGuiDrawView.mm $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)
NetPing_CFLAGS = -fobjc-arc -I./ -IEsp -IKittyMemory
NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS_MAKE_PATH)/tweak.mk
