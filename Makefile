
include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-ouc-auth
PKG_VERSION:=v1.0
PKG_RELEASE:=1

PKG_LICENSE:=MIT License

LUCI_TITLE:=LuCI support for ouc auth
LUCI_DEPENDS:=+curl
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

