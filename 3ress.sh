#!/bin/bash
####################################
#              `3ress`             #
#            machine ETA 1         #
#             25/09/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################

free -h | awk -F ' ' '{print $3}' | sed -n '2p'
df -h / | awk -F ' ' '{print $5}' | sed -n '2p'
echo "Utilisation CPU : $(sar -u 1 1 | sed -n '4p' | cut -c25-30 )"
