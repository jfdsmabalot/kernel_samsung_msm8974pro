#!/bin/bash

#
#  The Arkenstone Kernel
#

echo ""
echo ""
echo "The Arkenstone Kernel S5"
echo ""
echo ""

clear
make clean
git checkout master
export ARCH=arm && export SUBARCH=arm 
export CROSS_COMPILE=~/tmp/arm-eabi-4.10/bin/arm-eabi-
export ENABLE_GRAPHITE=true
make arkenstone_defconfig msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
time make -j2 2>&1 | tee kernel.log

echo ""
echo ""
echo "Gnome@xda-developers.com"
echo ""
echo ""