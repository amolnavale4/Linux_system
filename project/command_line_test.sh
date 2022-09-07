#!/bin/bash

#Title of project Commad Line Test

function CL_Test(){

    c_ans=(`cat LS_Question_ans.txt`)
    len=${#c_ans[@]}
    echo -------************-------
    echo *******------------*******
    echo -e "1.Take The Test\n2.Exit"
    echo ---------------------------
    read -p "Enter your choice : " c
    case $c in
	1)
	    for i in `seq 5 5 50`
	    do
		head -$i LS_Question_bank.txt
		for j in `seq 10 -1 1`
		do
		    echo -e "\rEnter the option $j :\c \n"
		    read -t 1 option
		    if [ ${#option} -gt 0 ]
		    then
			break
		    fi
		done
		if [ ${#option} -eq 0 ]
		then
		    option="Time_out"
		fi
		echo "$option" >>  LS_user_ans.txt
	    done
	    user_ans=(`cat LS_user_ans.txt`)
	    mark=0
	    que=5
	    for ca in `seq 0 $((len-1))`
	    do
		echo -e "\n---------------------------------------------------------------------------"
		head -$que LS_Question_bank.txt | tail -5
		if [ "${c_ans[$ca]}" = "${user_ans[$ca]}" ]
		then
		    que=$((que+5))
		    echo 
		    echo -e "\e[92mCorrect"
		    echo -e "\e[0m"
		    echo -e "\e[93mYour ans : \e[5m ${user_ans[$ca]}"
		    echo -e "\e[0m"
		    echo -e "\e[33mcorrect ans : ${c_ans[$ca]}"
		    echo -e "\e[0m"
		    echo ---------------------------------------------------------------------------
		    mark=$((mark+1))
		elif [ "$user_ans" = "Time_out" ]
		then
		    que=$((que+5))
		    echo
		    echo -e "\e[5mTime out ${user_ans[$ca]}"
		    #echo -e "\e[0m"
		    echo -e "\e[33mcorrect ans : ${c_ans[$ca]}"
		    echo -e "\e[0m"
		    echo ---------------------------------------------------------------------------
		else
		    que=$((que+5))
		    echo
		    echo -e "\e[91mWrong"
		    echo -e "\e[0m"
		    echo -e "\e[93mYour ans : \e[5m${user_ans[$ca]}"
		    echo -e "\e[0m"
		    echo -e "\e[33mcorrect ans : ${c_ans[$ca]}"
		    echo -e "\e[0m"
		    echo ---------------------------------------------------------------------------
		fi
	    done
	    echo ===========================================================================
	    echo "Total marks : $mark/$len"
	    echo ===========================================================================
	    rm LS_user_ans.txt
	    ;;
	2)
	    exit
	    ;;
    esac
}

var="y"
while [ "$var" = "y" ]
do
    #display first page to sign up or sign in
    echo ----------------------------------
    echo -e "1.Sign Up\n2.Sign In\n3.Exit"
    echo ----------------------------------
    #read the user choice
    read ch
    #use case to select option
    user=(`cat user.csv`)
    pass=(`cat password.csv`)
    case $ch in
	1)
	    #read username
	    read -p "Enter username : " uName
	    for i in `seq 0 $((${#user[@]}-1))`
	    do
		flag=0
		if [ $uName = ${user[$i]} ]
		then
		    echo "Error : Username already existing please go to sign-in"
			break
		else
		    flag=1
		fi
	    done
	    #while flag getting equal to 1 then append usename into file
	    if [ $flag -eq 1 ]
	    then
		echo -e "Enter password :\n " 
		read -s pass1 
		echo -e "Confirm password :\n " 
		read -s pass2
		if [ "$pass1" = "$pass2" ]
		then
		    echo "$uName" >> user.csv
		    echo "$pass1" >> password.csv
		    echo "Sign-up succesfully.....!"
		else
		    echo "Error : Password not matched."
		fi
	    fi
	    ;;
	2)
	    var="y"
	    while [ "$var" = "y" ]
	    do
		read -p "Enter username : " uName
		# user_name=0
		# passw=0
		for i in `seq 0 $((${#user[@]}-1))`
		do
		    user_name=0
		    passw=0
		    # echo ${user[]}
		    # echo ${pass[@]}
		    if [ $uName = ${user[$i]} ]
		    then
			echo "Enter password"
			read -s passwo
			if [ $passwo = ${pass[$i]} ]
			then
			    CL_Test
			    exit
			else 
			    passw=1
			fi
			break
		    else
			user_name=1
		    fi
		done
		if [ $user_name -eq 1 ]
		then
		    echo "Username not matched."
		elif [ $passw -eq 1 ]
		then
		    echo "Password not match"
		fi
		read -p "Re-enter?(y/n) : " var
	    done
	    ;;
	3)
	    exit
	    ;;
    esac
    read -p "Go to back ? (y/n) :" var
done
