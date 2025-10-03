#!/bin/bash

if [ -d KernelSU ]; then
    echo "Found KernelSU/SukiSU Folder, removing it..."
    rm -rf KernelSU
	rm -rf drivers/kernelsu
else
    echo "KernelSU/SukiSU Folder not found, proceeding..."
fi

read -p "Please enter the version number (A/a is tags version.B/b is SukiSU non-GKI version.C/c is special v0.9.2 Version For Huawei): " version

if [ "$version" == "" ]; then
    echo "No version specified. Exiting."
    exit 1
fi

case $version in
    [Aa]*)
        read -p "Please enter the version number you want to install: " specified_version
        curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -s v"$specified_version"
        ;;
    [Bb]*)
        curl -LSs "https://raw.githubusercontent.com/SukiSU-Ultra/SukiSU-Ultra/main/kernel/setup.sh" | bash -s nongki
        ;;
    [Cc]*)
        curl -LSs https://raw.githubusercontent.com/Coconutat/KernelSU_backup/0.9.2_upstream_backup/kernel/setup.sh | bash -s 0.9.2_upstream_backup
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac
