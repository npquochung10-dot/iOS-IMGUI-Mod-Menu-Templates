TWEAK_NAME = NetPing

# Tự động quét tất cả file nguồn
NetPing_FILES = $(wildcard *.x) $(wildcard *.xm) $(wildcard *.mm) $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)

# THÊM DÒNG NÀY: Để máy ảo tìm thấy file x2nios.h và các file header khác
NetPing_CFLAGS = -fobjc-arc -I./ -IEsp -IKittyMemory

NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
