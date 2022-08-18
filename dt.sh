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
	echo "|  *kaleidoscope                 |";
	echo "|  *lineage                      |";
	echo "|  *ricedroid                    |";
	echo "|  *blaze                        |";
	echo "==================================";
	read -p "Select your branches (1/2/3/4/5/6/7) :" branch
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
		4)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 -b kaleidoscope device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "Kaleidoscope branch synced!!";
		echo "";;
		5)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 -b lineage device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "Lineage branch synced!!";
		echo "";;
		6)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 -b rice device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "Ricedroid branch synced!!";
		echo "";;
		7)echo "";
		git clone https://github.com/Cykeek/device_realme_RMX1851 -b blaze device/realme/RMX1851/
		echo "";
		sleep 1s;
		echo "Blaze branch synced!!";
		echo "";;
	esac
	sleep 1s;
	echo "Fecthing device_realme_sdm710-common from Github";
	echo "";
	sleep 1s;
        echo "==================================";
        echo "|         Branches               |";
        echo "|  *12.1(origin)                 |";
        echo "|  *A13                          |";
        echo "==================================";
        read -p "Select your branches (1/2) :" common
        case $common in
		1)echo "";
		echo "You Choosed A12 branch";
		echo "";
		git clone https://github.com/Cykeek/device_realme_sdm710-common device/realme/sdm710-common/
		echo "";
		sleep 1s;;
		2)echo "";
		echo "You Choosed A13 branch";
	        echo "";
	        git clone https://github.com/Cykeek/device_realme_sdm710-common -b A13 device/realme/sdm710-common/
	        echo "";
		sleep 1s;;
	esac
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
