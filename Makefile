TWEAK_NAME = NetPing

NetPing_FILES = $(wildcard *.x) $(wildcard *.xm) $(wildcard *.mm) $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)
NetPing_CFLAGS = -fobjc-arc -I./ -IEsp -IKittyMemory
NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
