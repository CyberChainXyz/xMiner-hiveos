#!/usr/bin/env bash

cd `dirname $0`

# Get config options
[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo -e "${YELLOW}No config found${NOCOLOR}" && exit 1
[[ ! -f $CUSTOM_CONFIG_FILENAME ]] && echo -e "${YELLOW}Config file not found${NOCOLOR}" && exit 1

config_params=`cat $CUSTOM_CONFIG_FILENAME`

# Run the miner
./xMiner $config_params 2>&1 | tee $CUSTOM_LOG_BASENAME.log 