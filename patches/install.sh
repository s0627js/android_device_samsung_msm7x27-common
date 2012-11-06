# This script automatically installs all patches needed for devices supported by Jellaxy
# Concept by Rashed97, reviewed by Bytecode, some minor updates by TheWhisp
# How to install: 1) cd ~/<patch>/<to>/<source>/ 2) ./device/samsung/msm7x27-common/patches/install.sh

echo "Obtaining build directory..."
rootdirectory="$PWD"
\
cd packages/apps/Settings
echo "Applying Settings patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/packages_apps_Settings/*.patch
cd $rootdirectory
cd external/libncurses
echo "Applying libncurses patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_libncurses/*.patch
cd $rootdirectory
cd external/webkit
echo "Applying webkit patches..."
git am $rootdirectory/device/samsung/msm7x27-common/patches/external_webkit/*.patch
echo "Changing to build directory.."
cd $rootdirectory
