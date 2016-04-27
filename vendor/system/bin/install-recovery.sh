#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13588480 c4a5aaf3ea85d9a7bce474823d4f3793f72196d1 10840064 8dbbd74d36746dc35c79d59730bde87fff0e17b9
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:13588480:c4a5aaf3ea85d9a7bce474823d4f3793f72196d1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10840064:8dbbd74d36746dc35c79d59730bde87fff0e17b9 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery c4a5aaf3ea85d9a7bce474823d4f3793f72196d1 13588480 8dbbd74d36746dc35c79d59730bde87fff0e17b9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
