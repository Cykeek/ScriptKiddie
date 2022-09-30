#!/bin/sh

# Hyper users

echo "Simple Login Script !!!";
sleep 2s;
echo ;
echo "Made by C Y K E E K";
sleep 2s;
echo;

read -p "Enter ur username: " user

Users=("Cykeek","root","karthick","hyper")
echo $Users >> Users.txt

if grep -Fq "$user" "Users.txt"
then
	echo "users matched";
	sleep 2s;
	echo "cleaning Files..";
	rm -rf users.txt;
	sleep 2s;
	echo;
	echo "$user logged in " >> logs.txt;
	date >> logs.txt;
	echo "================" >> logs.txt;
	echo "!!Welcome to Hyper server!!";
	sleep 1s;
else
	echo "intruder found";
	sleep 2s;
        echo "cleaning Files..";
        rm -rf users.txt;
	echo "Intruder name is: $user" >> intruder.txt;
	date >> intruder.txt
	echo "=======================" >> intruder.txt;
	echo;
	exit
fi
