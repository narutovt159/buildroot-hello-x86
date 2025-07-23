HELLO_VERSION = 1.0
HELLO_SITE = $(TOPDIR)/package/hello
HELLO_SITE_METHOD = local
HELLO_LICENSE = Public Domain

define HELLO_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) -o $(@D)/hello $(@D)/hello.c
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin/hello
	$(INSTALL) -D -m 0755 $(TOPDIR)/package/hello/init/hello.init $(TARGET_DIR)/etc/init.d/S99hello
endef

$(eval $(generic-package))
