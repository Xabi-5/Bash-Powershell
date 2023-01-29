#!/bin/bash

#Func de esperar a input do usuario para continuar a execución
esperar () {
    read -p "Preme enter para continuar: "
}

#Programa principal
sair=0
while [ $sair -eq 0 ]

do
    #Limpar pantalla
    clear

    #Amosar opcions
    echo -e "Selecciona unha opción:\n
    1.Crear un novo ficheiro\n
    2.Renomear un ficheiro\n
    3.Encontrar unha palabra dentro dun arquivo\n
    4.Realizar operacions con dous numeros\n
    5.Programa o apagado do equipo (require permisos de sudoer)\n"
    read opcion
    

    if [ $opcion -eq 1 ]
    then 

        read -p "Dame o nome do ficheiro: (sen extensión) " nomfich
        read -p "Escribe a mesaxe que queiras no ficheiro: " textfich
        touch $nomfich.txt
        echo $textfich > $nomfich.txt
        echo -e "\n\n\n"
        echo "O ficheiro xerado chámase $nomfich.txt e ten de contido: \n"
        cat $nomfich.txt 
        esperar

    elif [ $opcion -eq 2 ]
    then
        read -p "Dame o nome do ficheiro:(sen extensión) " nomfich
        read -p "Cal queres que sexa o novo nome do ficheiro? " novofich

        mv $nomfich.txt $novofich.txt

        echo "Queres engadirlle algunha liña ao ficheiro? Presiona 1 para si"
        read querolineas

        if [ $querolineas -eq 1 ]
        then 
            read -p "Escribea aqui: " texto
            $texto >> $novofich.txt
            echo "O contido do arquivo é: "
            cat $novofich.txt
            esperar

        else
            esperar
        fi

    elif [ $opcion -eq 3 ]
    then
        read -p "Cal é o nome do arquivo (con extensión) no que queres atopar a palabra? " arq
        read -p "Dame a palabra a atopar: " pal 
        find $arq | grep --color $pal $arq        
        
        echo -e "\n"
        esperar
    elif [ $opcion -eq 4 ]
    then
        read -p "Dame o primeiro número: " num1
        read -p "Dame o segundo número: " num2 
        resultadoSuma=$(( $num1 + $num2 ))
        echo "Suma: $resultadoSuma"
        resultadoResta=$(( $num1 - $num2 ))
        echo "Resta: $resultadoResta"
        resultadoMultiplicacion=$(( $num1 * $num2 ))
        echo "Multiplicacion: $resultadoMultiplicacion"
        
        echo -e "\n"
        esperar

    elif [ $opcion -eq 5 ]
    then
        read -p "En cantos minutos queres que se apague o equipo?" mins
        sudo shutdown $mins 
        esperar

    elif [ -z $opcion ]
    then 
        sair=1
    else  
        sair=1
        echo -e "\nPrograma rematado\n"
    fi

done