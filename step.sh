#!/bin/bash
set -ex

# Required parameters
if [ -z "${service_account_key}" ] ; then
  echo " [!] Missing required input: service_account_key"
  exit 1
fi

printf "{\n  \x22ServiceUserAccessKey\x22: \x22${service_account_key}\x22\n}" > ${BITRISE_SOURCE_DIR}/tapsecurity.json

