#!/bin/bash

read -p "Dame o nome do ficheiro: " fich

if [ -e $fich ]
then
    echo "o ficheiro xa existe :("
    read -p "Se queres engadir texto, escribe agora. Se non, enter: " input

    if [[ -z $input ]]
    then 
        echo "okay bye"
    
    else
        echo $input >> $fich 
    
    fi

else 
    touch $fich 

fi