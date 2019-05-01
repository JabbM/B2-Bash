#!/bin/bash
####################################
#              `72mol`             #
#         script using .txt        #
#             08/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################

max=100
min=0
number=$[($RANDOM % ($[$max - $min] + 1)) + $min]
echo "$number"
echo "Entrez un nombre"
touch saisi.txt
read -a saisi > saisi.txt
while [ $saisi != $number ]
do
        if [ $saisi -lt $number ]
        then
                truncate -s 0 saisi.txt
                echo "votre nombre est trop petit" >> saisi.txt
                vi saisi.txt
                read -a saisi < saisi.txt

                 vi saisi.txt
                read -a saisi < saisi.txt

        elif [ $saisi -gt $number ]
        then
                truncate -s 0 saisi.txt
                echo "votre nombre est trop grand" >> saisi.txt
                vi saisi.txt
                read -a saisi < saisi.txt
        fi
done
echo "vous avez trouvez"
