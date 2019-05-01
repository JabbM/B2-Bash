#!/bin/bash
####################################################################
#                           `8save`                                #
#           save personnal repository (without bonus)              #
#                           09/1O/2018                             #
#                       Gabriel Clémençon                          #
#                         Jullian Bacle                            #
####################################################################
backupdate=$(date +%Y-%m-%d''%H:%M:%S)
dirbackup=/opt/backup-$backupdate
count=$(ls -1 /opt/ | wc -l)

if [ "$count" -ge 5 ]; then
    find /opt/ ! -newer $(ls /opt/ -t | sed '5!d') -exec rm {} ;
fi

mkdir -p $dirbackup
zip $dirbackup /home && rsync -av $dirbackup /opt
ls -A -l /opt | grep -v total | sed '1 d'