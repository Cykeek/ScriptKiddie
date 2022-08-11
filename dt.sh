#!/bin/sh
while true; do
read -p "Are you inside the rom folder or outside? I/O :" options
case $options in
	O)echo "";
	read -p "Enter your desired folder!!: " folder
	mkdir -p $folder;
	cd $folder;
	echo "";
	echo " Downloading required files ";
	echo "";
	echo "";
	echo "Fetching device_realme_RMX1851 from Github";
	echo "";
	sleep 1s;
	git clone https://github.com/Cykeek/device_realme_RMX1851 device/realme/RMX1851/
	echo "";
	sleep 1s;
	echo "Fecthing device_realme_sdm710-common from Github";
	echo "";
	sleep 1s;
	git clone https://github.com/Cykeek/device_realme_sdm710-common device/realme/sdm710-common/
	echo "";
	sleep 1s;
	echo "Fetching vendor_realme_sdm710-common from Github";
	echo "";
	git clone https://github.com/Cykeek/android_vendor_realme_sdm710-common vendor/realme/sdm710-common/
	echo "";
	sleep 1s;
	git clone https://gitlab.com/Cykeek/vendor_realme_RMX1851 -b 12 vendor/realme/RMX1851/
	echo "";
	sleep 1s;
	echo "Script successfully executed!!";
	echo "";
	echo "stopping!!";
	break;;
	I)echo "";
	echo " Downloading required files ";
	echo "";
	echo "";
	echo "Fetching device_realme_RMX1851 from Github";
	echo "";
	sleep 1s;
	git clone https://github.com/Cykeek/device_realme_RMX1851 device/realme/RMX1851/
	echo "";
	sleep 1s;
	echo "Fecthing device_realme_sdm710-common from Github";
	echo "";
	sleep 1s;
	git clone https://github.com/Cykeek/device_realme_sdm710-common device/realme/sdm710-common/
	echo "";
	sleep 1s;
	echo "Fetching vendor_realme_sdm710-common from Github";
	echo "";
	git clone https://github.com/Cykeek/android_vendor_realme_sdm710-common vendor/realme/sdm710-common/
	echo "";
	sleep 1s;
	git clone https://gitlab.com/Cykeek/vendor_realme_RMX1851 -b 12 vendor/realme/RMX1851/
	echo "";
	sleep 1s;
	echo "Script successfully executed!!";
	echo "";
	echo "stopping!!";
esac
done
