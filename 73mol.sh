#!/bin/bash
####################################
#              `73mol`             #
#           script answer          #
#             08/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################
start=$(date +%s)
max=100
min=0
number=$[($RANDOM % ($[$max - $min] + 1)) + $min]
echo "$number"
echo "Entrez un nombre"
read -a saisi < saisi.txt
while [ $saisi != $number ]
do
        if [ $saisi -lt $number ]
        then
                number2=$[($RANDOM % ($[$max - $saisi] + 1)) + $min]
                truncate -s 0 saisi.txt
                echo "$number2" >> saisi.txt
                echo "$number2"
                read -a saisi < saisi.txt

        elif [ $saisi -gt $number ]
        then
                number3=$[($RANDOM % ($[$saisi - $min] + 1)) + $min]
                truncate -s 0 saisi.txt
                echo "$number3" >> saisi.txt
                echo "$number2"
                read -a saisi < saisi.txt
        fi
sleep 0.5
done
echo "vous avez trouvez"
end=$(date +%s)
runtime=$((end-start))
echo "Le script a mis $runtime seconde à trouver"
