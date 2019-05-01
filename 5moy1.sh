#!/bin/bash
####################################
#               `5moy`             #
#         calculate average        #
#             02/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################

echo "Entrez vos notes"
read note

while [ "$note" != "q" ]
do
        if [[ $note -ge 0 && $note -le 20 && $note =~ ^[0-9]$ ]]
        then
                ((moyenne=$moyenne+$note))
                i=$((i+1))
                echo "Entrez une note ou "q" pour quitter"
                read note
        else
                echo "Ceci n'est pas un nombre"
                echo "Entrez une note ou "q" pour quitter"
                read note
        fi
done
((result=$moyenne/$i))
echo "$result"
