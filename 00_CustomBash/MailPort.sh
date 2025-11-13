#!/bin/bash

netstat -nlt | grep :25 

chechsmtp="$?"
if [ $chechsmtp -eq 0 ]
then
    echo "smtp start" | mail -s "smtp start" thecodez@localhost
else
    echo "smtp stop" 
fi