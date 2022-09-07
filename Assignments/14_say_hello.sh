#!/bin/bash

day=`date +%A |cut -d " " -f 1` #cut full weekday name from date as field 1
date=`date | cut -d " " -f 3` #cut date as field 3
month=`date | cut -d " " -f 2` #cut month from date as filed 2
year=`date | cut -d " " -f 7` #cut year as field 6
time=`date | cut -d " " -f 5` #cut time as field 4
hr=`date +%H` #to get hours in 24 hours formate
time1=`echo "$hr" | cut -d ":" -f 1` #cut first field from hr
AMPM=`date +%p` #get equivalant of eithe AM or PM

if [ $time1 -ge 5 -a $time1 -le 12 ] #check time between (5 AM – 12 PM)
then
    echo -e "Good morning $USER, Have nice day!\nThis is $day $date in $month of $year ($time $AMPM)"
elif [ $time1 -ge 1 -a $time1 -le 13 ] #check time between (12 PM – 1 PM)
then
    echo -e "Good noon $USER, Have nice day!\nThis is $day $date in $month of $year ($time $AMPM) "
elif [ $time1 -ge 13 -a $time1 -le 17 ] #check time between (2 PM – 5 PM)
then
    echo -e "Good Afternoon $USER, Have nice day!\nThis is $day $date in $month of $year ($time $AMPM)"
elif [ $time1 -ge 17 -a $time1 -le 21 ] #check time between (5PM – 9 PM)
then
    echo -e "Good Evening $USER, Have nice day!\nThis is $day $date in $month of $year ($time $AMPM)"
elif [ $time1 -ge 21 -a $time1 -le 5 ] #check time between (9 PM – 5 AM)
then
    echo -e "Good night $USER, Have nice day!\nThis is $day $date in $month of $year ($time $AMPM)"
fi
