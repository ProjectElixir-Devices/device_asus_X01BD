echo 'Starting to clone stuffs needed for your device'
echo 'Cloning ASUS Device Tree [1/4]'
# ASUS Device Tree
rm -rf device/asus
git clone --depth=1 https://github.com/z3zens/android_device_asus_sdm660-common.git -b thirteen-aosp device/asus/sdm660-common
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_asus_X01BD.git -b thirteen device/asus/X01BD

echo 'Cloning ASUS Vendor tree [2/4]'
# Device Vendor Tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/z3zens/proprietary_vendor_asus.git -b thirteen-aosp vendor/asus

echo 'Cloning Kernel tree [3/4]'
# Kernel Tree
rm -rf kernel/asus
git clone --depth=1 https://github.com/z3zens/android_kernel_asus_sdm660.git -b lineage-20 kernel/asus/sdm660

echo 'Sync some stuff from lineage [4/4]'
# Lineage Compat
rm -rf hardware/lineage/compat
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat
echo 'Completed, Now proceeding to lunch'