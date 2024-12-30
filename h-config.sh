#!/usr/bin/env bash

# Apply settings from HiveOS
[[ -z $CUSTOM_TEMPLATE ]] && echo -e "${YELLOW}CUSTOM_TEMPLATE is empty${NOCOLOR}" && return 1
[[ -z $CUSTOM_URL ]] && echo -e "${YELLOW}CUSTOM_URL is empty${NOCOLOR}" && return 1
[[ -z $CUSTOM_PASS ]] && CUSTOM_PASS="x"

# Generate config command
conf=" -pool $CUSTOM_URL -user $CUSTOM_TEMPLATE -pass $CUSTOM_PASS"

[[ ! -z $CUSTOM_USER_CONFIG ]] && conf+=" $CUSTOM_USER_CONFIG"

echo "$conf" > $CUSTOM_CONFIG_FILENAME 