#!/bin/bash
####################################
#               `5moy`             #
#         calculate average        #
#             02/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################

i=0
check_note()
{
        for i in "${tmp[@]}"
        do
                nb=$((nb + 1))
                ((resultat=$resultat + $i))
        done
}

read valeur

        while ! [[ $valeur == "q" ]]
        do
                if [[ "$i" =~ ^[0-9]$ ]]
                then
                        echo "Ce n'est pas un chiffre"
                fi
                read -r -a tmp <<< "$valeur"
                check_note
                read valeur
        done

        ((moy = $resultat/$nb))
        echo "$moy"