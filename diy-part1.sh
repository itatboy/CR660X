# 添加插件

# passwll，config需要勾选对应选项LUCI -> Applications -> Luci-app-passwall，子选项全部勾选
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
