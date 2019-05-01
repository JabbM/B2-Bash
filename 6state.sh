#!/bin/bash
####################################
#              `6state`            #
#         show machine ETA 2       #
#             02/10/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################

varHostN=$(cat /etc/hostname)
IP=$(ip a | sed -n 15p | awk -F ' ' '{print$2}' )
nmVOS=$(cat /etc/redhat-release)
vKernel=$(uname -or)
threeLastPaquet=$(rpm -qa --last | head -n 3)
fiveLast=$(last -n 5 | awk -F ' ' '{print$1}' | head -n 5)
py=$(python -V 2> /tmp/pyVersion | cat /tmp/pyVersion)
sshStatus=$(systemctl is-active sshd)


echo "le hostname est $varHostN et l'adresse IP est $IP

nom et version de l'OS :
$nmVOS

version du Kernel :
$vKernel

les 3 derniers paquets installés :
$threeLastPaquet

les 5 derniers utilisateurs connectés sont :
$fiveLast

la commande python est disponible et sa version est : $py

Le service SSH est $sshStatus"
