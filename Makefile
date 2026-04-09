# Đảm bảo dùng đúng máy ảo
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NetPing

# Tự động lấy tất cả file mã nguồn
NetPing_FILES = $(wildcard *.x) $(wildcard *.xm) $(wildcard *.mm) $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)
NetPing_CFLAGS = -fobjc-arc -I./ -IEsp -IKittyMemory
NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS_MAKE_PATH)/tweak.mk
