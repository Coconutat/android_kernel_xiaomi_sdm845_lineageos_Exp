#!/bin/bash

if [ -d KernelSU ]; then
    echo "Found KernelSU Folder, removing it..."
    rm -rf KernelSU
	rm -rf drivers/kernelsu
else
    echo "KernelSU Folder not found, proceeding..."
fi

read -p "Please enter the version number (A/a is tags version.B/b is main version.C/c is KernelSU Next): " version

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
        curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -s main
        ;;
    [Cc]*)
        curl -LSs "https://raw.githubusercontent.com/rifsxd/KernelSU-Next/next/kernel/setup.sh" | bash -
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac
