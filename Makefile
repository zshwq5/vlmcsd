include $(TOPDIR)/rules.mk

PKG_NAME:=vlmcsd
PKG_VERSION=svn1107
PKG_RELEASE:=2016-12-12
PKG_REV:=4cba74e69acd36c1d8ea11501da9aa65008db922

PKG_MAINTAINER:=xxx <xxx@qq.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/zshwq5/vlmcsd-svn1107.git
PKG_SOURCE_VERSION:=$(PKG_REV)

include $(INCLUDE_DIR)/package.mk

define Package/vlmcsd
	SECTION:=net
	CATEGORY:=Network
	TITLE:=vlmcsd for OpenWRT
	URL:=http://forums.mydigitallife.info/threads/50234
#	DEPENDS:=+libpthread
endef

define Package/vlmcsd/description
	vlmcsd is a KMS Emulator in C.
endef

# MAKE_FLAGS += -C $(PKG_BUILD_DIR)

define Package/vlmcsd/conffiles
/etc/vlmcsd.ini
endef

define Package/vlmcsd/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/vlmcsd $(1)/usr/bin/vlmcsd
#	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/vlmcs $(1)/usr/bin/vlmcs
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_CONF) ./files/vlmcsd.ini $(1)/etc/vlmcsd.ini
	$(INSTALL_DATA) ./files/vlmcsd.kmd $(1)/etc/vlmcsd.kmd
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/vlmcsd.init $(1)/etc/init.d/vlmcsd
endef

$(eval $(call BuildPackage,vlmcsd))
