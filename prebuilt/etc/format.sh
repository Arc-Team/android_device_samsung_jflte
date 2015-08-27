#!/sbin/sh
#    ____  ____  __   ____  ____
#   (_  _)( ___)(  ) (_  _)( ___)
#  .-_)(   )__)  )(__  )(   )__)
#  \____) (__)  (____)(__) (____)
#   ____  ____  _  _  ___  _____  _  _
#  (  _ \( ___)( \/ )/ __)(  _  )( \( )
#   )(_) ))__)  \  /( (__  )(_)(  )  (
#  (____/(____)  \/  \___)(_____)(_)\_)
#
# Copyright (c) 2015 - Mattia "AntaresOne" D'Alleva
# Copyright (c) 2015 - Jflte Dev Connection (JDCTeam)
#
# Modified by JoseGalRe
# EXT4/F2FS format script with MultiROM support
# Check current /system FS and format accordingly to the FS found
# Check installation/upgrade type. If primary ROM run format process, else don't run it (installing as secondary ROM)
# Please verify that the partition is correct on your device

# MultiROM recognition
MROM="$(ls /tmp | grep "META-INF")"

# Format
FORMAT() {
    if [ "$TYPE" == "ext4" ]; then
        echo "Found ext4 filesystem. Formatting..."
        mke2fs -T ext4 "$PARTITION"
    elif [ "$TYPE" == "f2fs" ]; then
        echo "Found F2FS filesystem. Formatting..."
        mkfs.f2fs "$PARTITION"
    else
        # Some recoveries may not have F2FS tools
        echo "No filesystem specified. Formatting as ext4..."
        mke2fs -T ext4 "$PARTITION"
    fi
    exit 0
}

# Primary ROM
MAIN() {
    echo "Installing in /system"

    # Partition
    PARTITION="/dev/block/platform/msm_sdcc.1/by-name/system"

    # Recognize FS type
    TYPE="$(blkid "$PARTITION" | awk -F'=' '{print $3}'| sed 's/[^"]*"\([^"]*\)".*/\1/')"

    # Format partition
    FORMAT
}

# Start
echo "Checking..."
if [ "$MROM" == "" ]; then
    MAIN
else
    echo "Installing in MultiROM environment"
    exit 0
fi
