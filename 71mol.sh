#!/bin/bash
####################################
#              `71mol`             #
#        game : plus ou moins      #
#             08/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################
max=100
min=0
number=$[($RANDOM % ($[$max - $min] + 1)) + $min]
echo "$number"
echo "Entrez un nombre"
read saisi
while [ $saisi != $number ]
do
        if [ $saisi -lt $number ]
        then
                echo "votre nombre est trop petit"
                read saisi

        elif [ $saisi -gt $number ]
        then
                echo "votre nombre est trop grand"
                read saisi
        fi
done
echo "vous avez trouvez"

