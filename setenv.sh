#!/usr/bin/env bash

logger "Processing ENVRIOMENT variables"

ENV_PROFILE=${HOME}/.environmentrc

function set_envrion() {
    logger "Setting environment variable $1, it's value is $2" 
    /bin/launchctl setenv $1 "$2"
}

if [[ ! -e ${ENV_PROFILE}  ]]; then
    exit
fi

source ${ENV_PROFILE}

for env in $(cat ${ENV_PROFILE}); do
    env_name=$(echo ${env} | cut -d= -f1)
    set_envrion ${env_name} ${!env_name}
done
