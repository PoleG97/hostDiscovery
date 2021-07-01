#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#Si no hay parámetros, suponemos funcionamiento para HTP IP: 10.10.10.X
if [ $# -eq 0 ]; then
    for i in $(seq 2 254); do
        timeout 1 bash -c "sudo ping -c 1 10.10.10.$i > /dev/null 2>&1" && echo -e "${blueColour}Host 10.10.10.$i${endColour} \t - ${greenColour}ACTIVE${endColour}" &
    done; wait
    
#Si hay parámetros, tratamos cada uno de los parámetros como una de las 3 primeras partes de la IP: 192 168 0 X
else 
    for j in $(seq 2 254); do
        timeout 1 bash -c "sudo ping -c 1 $1.$2.$3.$j > /dev/null 2>&1" && echo -e "${blueColour}Host $1.$2.$3.$j${endColour} \t - ${greenColour}ACTIVE${endColour}" &
    done; wait
fi
