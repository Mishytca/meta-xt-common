PACKAGE_INSTALL:append = "\
    xen-tools \
    ${XT_GUEST_INSTALL} \
    packagegroup-core-boot \
    "

IMAGE_FEATURES += "debug-tweaks"

IMAGE_LINGUAS = ""
 
# Remove unnecessary packages to reduce the size of the initramfs.
# Without this, the following error occurs:
# ERROR: do_image_cpio: The initramfs size 138690(K) exceeds INITRAMFS_MAXSIZE: 131072(K)
# These packages are not critical for our minimal environment and can be excluded:
PACKAGE_INSTALL:remove = "\
    initramfs-framework-base \
    initramfs-module-setup-live \
    initramfs-module-udev \
    initramfs-module-install \
    initramfs-module-install-efi \
    busybox \
    udev \
    base-passwd \
    "
