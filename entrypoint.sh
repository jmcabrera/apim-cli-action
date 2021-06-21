#!/bin/sh
printf'#######'
echo $*
printf'#######'
env
printf'#######'
echo sh -c "/apim/scripts/apim.sh -h '${APIM_HOST}' -u '${APIM_USER}' -p '${APIM_PASS}' -port '${APIM_PORT}' -force -returnCodeMapping 10:0 $*"
sh -c "/apim/scripts/apim.sh -h '${APIM_HOST}' -u '${APIM_USER}' -p '${APIM_PASS}' -port '${APIM_PORT}' -force -returnCodeMapping 10:0 $*"