# Đặt tên cho tweak
TWEAK_NAME = NetPing

# Tự động tìm tất cả các file mã nguồn để build
NetPing_FILES = Tweak.x $(wildcard Esp/*.mm) $(wildcard KittyMemory/*.cpp)
NetPing_CFLAGS = -fobjc-arc
NetPing_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText

# Ép hệ thống dùng đường dẫn Theos chuẩn trên máy ảo GitHub
include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
