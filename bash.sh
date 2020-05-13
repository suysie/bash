#!/bin/bash
getal=$((1 + RANDOM % 10))
kansen=1

echo 'probeer het getal tussen 1 en 10 te raden'

while [ $kansen -le 3 ]; do

    echo 'poging nummer '$guesses

    read -p "uw getal om te raden is? [n]: " geraden


    if [ $geraden -eq $getal ]; then

        echo "u hebt het geraden het te raden getal was: " $getal

        break;

    else
        if [ $geraden -lt $getal ]; then 

            echo 'het geraden getal is te laag';

        elif [ $geraden -gt $getal ]; then

            echo 'het geraden getal is te hoog';

        fi

    fi

    kansen=$((kansen+1))

done

if [ $geraden -ne $getal ]; then

    echo 'jammer uw 3 pogingen zijn voorbij moesten we meer pogingen geven zou het te gemakkelijk zijn'
    

fi
