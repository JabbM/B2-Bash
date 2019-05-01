#!/bin/bash
####################################
#               `1date`            #
#           show the date          #
#             25/09/2018           #
#         Gabriel Clémençon        #
#           Jullian Bacle          #
####################################
dayDay=$(date +%A)
dayDD=$(date +%d)
monthMonth=$(date +%B)
yearYYYY=$(date +%Y)
echo "Nous sommes $dayDay , le $dayDD $monthMonth de $yearYYYY"
