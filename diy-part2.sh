# 自定义默认IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
# 取消luci-theme-bootstrap为默认主题，并删除
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
rm -rf package/lean/luci-theme-bootstrap
# 修改 argon 为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
# 替换主题为luci-theme-argon，choose LUCI->Theme->Luci-theme-argon
rm -rf package/lean/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# luci-theme-argon主题管理插件，choose LUCI->Application->Luci-app-argon-config
rm -rf package/lean/luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

# 广告屏蔽插件 adguardhome，choose LUCI->Application->Luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

# 动态域名解析插件 DDNS-GO，choose LUCI->Application->luci-app-ddns-go
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go package/lean/luci-app-ddns-go
