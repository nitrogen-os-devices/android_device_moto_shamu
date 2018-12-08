# Clone device, kernel & vendor trees
git clone https://github.com/nitrogen-os-devices/android_kernel_moto_shamu -b p-nov18 kernel/moto/shamu;
git clone https://github.com/nitrogen-os-devices/android_device_moto_shamu -b dec18 device/moto/shamu;
git clone https://github.com/nitrogen-os-devices/android_vendor_motorola -b p-nov18 vendor/motorola;

# Changes for RIL to work
git pull https://github.com/camcory/platform_hardware_ril -b p hardware/ril;

# Vendor
cd ~/nitrogen/vendor/nitrogen
git remote add nitin https://github.com/nitins-pie/android_vendor_nitrogen
git pull nitin p

# Changes for media
cd ~/nitrogen/build/make/
git remote add nitin https://github.com/nitins-pie/android_build_make
git pull nitin p

cd ~/nitrogen/build/soong/
git remote add nitin https://github.com/nitins-pie/android_build_soong
git pull nitin p

cd ~/nitrogen/frameworks/av
git cherry-pick https://github.com/camcory/platform_frameworks_av/commit/a10410c11c255f05e054198aad3bd353d9a2eb09

cd ~/nitrogen/frameworks/native/
git remote add nitin https://github.com/nitins-pie/android_frameworks_native
git pull nitin p

cd hardware/qcom/display
git cherry-pick https://github.com/camcory/platform_hardware_qcom_display/commit/300c94b854bc7aacefa6edfdbcba78453b6c1d2f
git cherry-pick https://github.com/camcory/platform_hardware_qcom_display/commit/9b4235ed98499e07ecc66827fe6ed6289117c4b5

# Fix build error in audio
cd hardware/qcom/audio
git cherry-pick https://github.com/nitins-pie/hardware_qcom_audio/commit/8144c2e98c2c5207b055103244f1e3aebab6229a

# Probable fix for alleged soft reboots
cd hardware/qcom/gps
git pull https://github.com/nitins-pie/android_hardware_qcom_gps -b p 

# Fix some build errors
git fetch https://github.com/LineageOS/android_bionic refs/changes/67/223067/7 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_external_perfetto refs/changes/13/223413/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_external_tinycompress refs/changes/67/31967/2 && git cherry-pick FETCH_HEAD
