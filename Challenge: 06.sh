#!/bin/bash


# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Lamin Touray
# Date of latest revision: 13Feb2023
# Purpose: "Create a script that detects if a fiates it if it does not exist.le or directory exists, then cre
#Your script must use at least one array, one loop, and one conditional."

cont_var=1

while [[ $cont_var -eq 1 ]]; do 
    echo "How long is the grass? (long or short)"
    read grass 
    if [[ $grass == "long" ]]; then
        echo "cut the grass"
        cont_var=0
    elif [[ $grass == "short" ]]; then
        echo "water the grass"
        cont_var=0
    else 
        echo "that was nonsense"
    fi 
    
done 