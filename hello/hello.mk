HELLO_VERSION = 1.0
HELLO_SITE = .
HELLO_SITE_METHOD = local
HELLO_LICENSE = Public Domain

define HELLO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin/hello
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin/hello
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/hello/init/hello.init $(TARGET_DIR)/etc/init.d/S99hello
endef


$(eval $(generic-package))
