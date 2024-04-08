#!/bin/bash
set -xe

# Wlan driver build environnement
export MODULE_NAME="wlan_drv_gen4m_6789"
export MTK_ANDROID_EMI="y"
export WIFI_IP_SET="1"
export MTK_ANDROID_WMT="y"
export WLAN_CHIP_ID="6789"
export MTK_COMBO_CHIP="SOC2_1X1"
export CONFIG_MTK_COMBO_WIFI_HIF="axi"
export MTK_WLAN_SERVICE="yes"

# Adaptor
export ADAPTOR_MODULE_NAME="wmt_chrdev_wifi"

# Bluetooth configuration
export BT_PLATFORM="connac1x"

# FMRadio
export CFG_FM_PLAT="mt6631_6635"
export CFG_FM_CHIP_ID="${CFG_FM_PLAT}"


[ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools -b halium-12 build
./build/build.sh "$@"

