# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)
# Please enter the custom command below (usually used to install third-party plugins) (can be left blank)
# git clone --depth=1 https://github.com/EOYOHOO/UA2F.git package/UA2F
# git clone --depth=1 https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid
echo "CONFIG_TARGET_x86=y" >> .config
echo "CONFIG_TARGET_x86_64=y" >> .config
echo "CONFIG_TARGET_x86_64_DEVICE_generic=y" >> .config
sed -i 's/CONFIG_TARGET_KERNEL_PARTSIZE=.*/CONFIG_TARGET_KERNEL_PARTSIZE=128/' .config
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*/CONFIG_TARGET_ROOTFS_PARTSIZE=2048/' .config
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-store=y" >> .config
echo "CONFIG_PACKAGE_luci-app-eqos=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config
echo "CONFIG_PACKAGE_luci-app-adguardhome=y" >> .config
