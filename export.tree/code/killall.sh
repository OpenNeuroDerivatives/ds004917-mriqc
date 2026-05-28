#!/bin/bash
#
# if setup went wrong, delete everything

[[ "$(read -e -p 'Are you sure you want to delete everything? [yes_sure!/NO]> '; echo $REPLY)" == yes_sure! ]] && echo KILLALLNOW || exit

# delete wrong input & output RIA stores + aliases
rm -rf /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/353/82e2c-a737-42e1-b8a2-607a2b07279c
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/alias/ds004917-mriqc
rm -rf https://hub.trr379.de/f.hoffstaedter/ds004917-mriqc
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/alias/ds004917-mriqc

# remove faulty dataset 
cd ..
datalad drop --what datasets --reckless kill -r -d ds004917-mriqc
