# Đặt tên cho Menu
TWEAK_NAME = NetPing

# Tự động quét tất cả file .x, .xm, .mm trong thư mục gốc và thư mục con
NetPing_FILES = $(wildcard *.x) $(wildcard *.xm) $(wildcard *.mm) $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)
NetPing_CFLAGS = -fobjc-arc
NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
