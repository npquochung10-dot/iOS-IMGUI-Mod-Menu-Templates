export THEOS=/home/codespace/theos

SDKPATH = $(THEOS)/sdks/iPhoneOS16.5.sdk



ARCHS = arm64 arm64e

TARGET = iphone:clang:16.5:14.0



include $(THEOS)/makefiles/common.mk



TWEAK_NAME = NetPing



NetPing_FILES = ImGuiDrawView.mm $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)

NetPing_CFLAGS = -fobjc-arc -I./ -IEsp -IKittyMemory -isysroot $(SDKPATH)

NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText



include $(THEOS_MAKE_PATH)/tweak.mk
