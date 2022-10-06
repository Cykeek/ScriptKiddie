#!/bin/sh

# Hyper users

echo "Simple Login Script !!!";
sleep 2s;
echo ;
echo "Made by C Y K E E K";
sleep 2s;
echo;

read -p "Enter ur username: " user

if grep -Fq "$user" "list.txt"
then
	echo "users matched";
	sleep 2s;
	echo;
	echo "$user logged in " >> logs.txt;
	date >> logs.txt;
	echo "================" >> logs.txt;
	echo "!!Welcome to Hyper server!!";
	sleep 1s;
	echo;
	read -p "Do u want to read logs?(Y/N): " options
	case $options in 
	Y)echo"";
	echo "Reading Logs.txt...";
	sleep 2s;
	echo "Extracting Details...";
	sleep 1s;
	cat logs.txt;
	echo "Exiting!!";
	sleep 2s;
	exit;;
	N)echo "";
	echo "Exiting!!";
	exit;;
esac
else
	echo "intruder found";
	sleep 2s;
	echo "Intruder name is: $user" >> intruder.txt;
	date >> intruder.txt
	echo "=======================" >> intruder.txt;
	echo;
        read -p "Do u want to know whos is the real Intruder?(Y/N): " intruder
        case $intruder in
        Y)echo"";
        echo "Reading intruder.txt...";
        sleep 2s;
        echo "Extracting Details...";
        sleep 1s;
        cat intruder.txt;
	echo "Exiting!!";
	sleep 2s;
	exit;;
        N)echo"";
        echo "Exiting!!"
	sleep 2s;
	exit;;
esac
fi