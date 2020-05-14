#!/bin/bash
getal=$((1 + RANDOM % 10))
kansen=1

read -p "welkom wat is uw naam wij ghebruiken deze enkel voor het scorebord." naam


echo 'probeer het getal tussen 1 en 10 te raden'

while [ $kansen -le 3 ]; do

    echo 'poging nummer '$guesses

    read -p "uw getal om te raden is? [n]: " geraden


    if [ $geraden -eq $getal ]; then

        echo "u hebt het geraden het te raden getal was: " $getal

	gewonnen=TRUE

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

    gewonnen=FALSE

fi


if [ $geraden -eq 4 ]; then ((kansen-=1)); fi;


echo " " >> ./scorebord.txt

echo " speler: $naam" >> ./scorebord.txt

echo " datum: $(date) " >> ./scorebord.txt

echo " speler is gewonnen? $gewonnen " >> ./scorebord.txt

echo " aantal beurten: $kansen" >> ./scorebord.txt

echo " " >> ./scorebord.txt
