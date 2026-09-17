#!/bin/bash
props=(
        "ro.product.brand=samsung"
        "ro.product.manufacturer=Samsung"
        "ro.system.build.product=x90"
        "ro.product.name=x90"
        "ro.product.device=x90"
        "ro.product.model=SM-S936B"
        "ro.system.build.flavor=x90-user"
        "ro.build.fingerprint=samsung/x90/x90:15/TP1A.220624.014/S936BXXU1AXH5:user/release-keys"
        "ro.system.build.description=x90-user 15 TP1A.220624.014 S936BXXU1AXH5 release-keys"
        "ro.bootimage.build.fingerprint=samsung/x90/x90:15/TP1A.220624.014/S936BXXU1AXH5:user/release-keys"
        "ro.build.display.id=samsung/x90/x90:15/TP1A.220624.014/S936BXXU1AXH5:user/release-keys"
        "ro.build.tags=release-keys"
        "ro.build.description=x90-user 15 TP1A.220624.014 S936BXXU1AXH5 release-keys"
        "ro.vendor.build.fingerprint=samsung/x90/x90:15/TP1A.220624.014/S936BXXU1AXH5:user/release-keys"
        "ro.vendor.build.id=TP1A.220624.014"
        "ro.vendor.build.tags=release-keys"
        "ro.vendor.build.type=user"
        "ro.odm.build.tags=release-keys"
)

for i in "${props[@]}";
        do sudo echo $i >> /var/lib/waydroid/waydroid_base.prop
done
