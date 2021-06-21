#!/bin/sh
sh -c "/apim/scripts/apim.sh -h '${APIM_HOST}' -u '${APIM_USER}' -p '${APIM_PASS}' -port '${APIM_PORT}' -force -returnCodeMapping 10:0 $*"
