#!/bin/sh
echo "==================================";
sleep 1s;
echo "|                                |";
sleep 1s;
echo "|                                |";
sleep 1s;
echo "|   This Script Made by Cykeek   |";
sleep 1s;
echo "|        Join @CykeekBuilds      |";
sleep 1s;
echo "|                                |";
sleep 1s;
echo "|                                |";
sleep 1s;
echo "|                                |";
sleep 1s;
echo "==================================";
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
	echo "==================================";
	echo "|         Branches               |";
	echo "|  *cherish(origin)              |";
	echo "|  *voltage                      |";
	echo "|  *pixel                        |";
	echo "==================================";
	read -p "Select your branches (1/2/3) :" branch
	case $branch in
		1)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "Cherish(origin) branch synced!!";
		echo "";;
		2)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 -b voltage device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "voltage branch synced!!";
		echo "";;
		3)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 -b pixel device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "Pixel branch synced!!";
		echo "";;
	esac
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
	echo "stopping!!";;
esac
done
