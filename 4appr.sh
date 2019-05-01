#!/bin/bash
####################################
#               `4appr`            #
#             note 20/20           #
#             02/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################

echo "Veuillez attribuer une note entre 0 et 20"
read valeur

if [[ $valeur =~ ^[0-9]* ]]
then

        if [[ $valeur -ge 0 ]] && [[ $valeur -le 20 ]]
        then

                if [[ $valeur -ge 0 ]] && [[ $valeur -le 5 ]]
                then
                        echo "passable"

                elif [[ $valeur -ge 6 ]] && [[ $valeur -le 10 ]]
                then
                        echo "insuffisant"

                elif [[ $valeur -ge 11 ]] && [[ $valeur -le 15 ]]
                then
                        echo "bien"
elif [[ $valeur -ge 16 ]] && [[ $valeur -le 20 ]]
                then
                        echo "excellent"

                fi
        else
                echo "ERROR : Ecrivez un nombre entre 0 et 20"
        fi
else
        echo "ERROR : La saisie n'est pas un nombre"
fi
