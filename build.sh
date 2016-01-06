#!/bin/bash
FLYME_OUT_DIR=/home/bywwh/AndroidSource/FlymeOS/devices/aries/out
DEVICE_DIR=/home/bywwh/AndroidSource/FlymeOS/devices/aries
OTHER_DIR=/home/bywwh/AndroidSource/FlymeOS/devices/aries/other
cd ../..
. build/envsetup.sh
echo
echo ">>> in devices dir"
cd -
echo
flyme clean
flyme fullota

echo
echo ">>> make merge partition patch"
echo
cp -v -rf $DEVICE_DIR/boot.img.out $DEVICE_DIR/boot.img.out.bak
cp -v -rf $DEVICE_DIR/framework-res $DEVICE_DIR/framework-res.bak
cp -v -rf $DEVICE_DIR/overlay/META-INF $DEVICE_DIR/overlay/META-INF.bak
cp -v -rf $OTHER_DIR/storage_list.xml $DEVICE_DIR/framework-res/res/xml
cp -v -rf $OTHER_DIR/fstab.qcom $OTHER_DIR/init.target.rc $DEVICE_DIR/boot.img.out/RAMDISK
cp -v -rf $OTHER_DIR/META-INF $DEVICE_DIR/overlay
echo
echo ">>> make fullota again"
echo
mkdir -vp $DEVICE_DIR/tmp
mv -vf $FLYME_OUT_DIR/*.zip $DEVICE_DIR/tmp
cd $DEVICE_DIR
flyme clean
flyme fullota
rm -v -rf $DEVICE_DIR/boot.img.out $DEVICE_DIR/framework-res
rm -v -rf $DEVICE_DIR/overlay/META-INF
mv -vf $DEVICE_DIR/boot.img.out.bak $DEVICE_DIR/boot.img.out
mv -vf $DEVICE_DIR/framework-res.bak $DEVICE_DIR/framework-res
mv -vf $DEVICE_DIR/overlay/META-INF.bak $DEVICE_DIR/overlay/META-INF

if [ -e $FLYME_OUT_DIR/flyme*.zip ];then
mkdir -vp $FLYME_OUT_DIR/std && mv -vf $FLYME_OUT_DIR/flyme*.zip $FLYME_OUT_DIR/std
fi

if [ -e $DEVICE_DIR/tmp/Flyme*.zip ] || [ -e $DEVICE_DIR/tmp/target*.zip ];then
mv -vf $DEVICE_DIR/tmp/*.zip $FLYME_OUT_DIR
rm -v -rf $DEVICE_DIR/tmp
fi
