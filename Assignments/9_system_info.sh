#!/bin/bash

echo -e "1.Currently logged users\n2.Your shell directory\n3.Home directory\n4.OS name & version\n5.Current working directory\n6.Number of users logged in\n7.Show all avaliable shell in your system\n8.Hard disk information\n9.CPU information\n10.Memory information\n11.File system information\n12.Current running process."

var="y"
while [ "$var" == "y" ]
do
read -p "Enter your choice :" ch
case $ch in
    1)
	echo $USER
	;;
    2)
	echo "Your shell directory is $SHELL"
	;;
    3)
	echo $HOME
	;;
    4)
	uname -v
	;;
    5)
	pwd
	;;
    6)
	who -q
	;;
    7)
	cat /etc/shells
	;;
    8)
	hwinfo
	;;
    9)
	/proc/cpuinfo
	;;
    10)
	/proc/meminfo
	;;
    11)
	df
	;;
    12)
	ps
	;;
    *)
	echo "Error : Invalid option,please enter valid option"
esac
read -p "Do you want to continue (y/n)" var
done

