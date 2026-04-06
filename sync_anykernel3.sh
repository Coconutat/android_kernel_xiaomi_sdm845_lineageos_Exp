#!/bin/bash
if [ -d tools/AnyKernel3 ];
then
    echo "Find AnyKernel3 Floder,will remove it"
	rm -rf tools/AnyKernel3
	cd tools
	git clone https://github.com/osm0sis/AnyKernel3.git
	cd ..
else
	echo "Don't have AnyKernel3 Floder,good."
	cd tools
	git clone https://github.com/osm0sis/AnyKernel3.git
	cd ..
fi