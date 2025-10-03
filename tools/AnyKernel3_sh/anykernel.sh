### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

properties() { '
kernel.string=Xiaomi Mi 8 Explorer Edition Kernel Mod For LineageOS 22 Version -- Kernel MOD & Compile by Coconutat @ Github
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ursa
device.name2=equuleus
device.name3=
supported.versions=
supported.patchlevels=
'; } # end properties

## boot shell variables
## boot shell variables
BLOCK=auto;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh

# boot install
# dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk

# write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk

split_boot;
flash_boot;
## end boot install