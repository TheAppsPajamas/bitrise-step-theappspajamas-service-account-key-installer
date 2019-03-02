#!/bin/bash
set -ex

# Required parameters
if [ -z "${service_account_key}" ] ; then
  echo " [!] Missing required input: service_account_key"
  exit 1
fi


CONFIG_tap_security_path="${bitrise_source_dir}/tapsecurity.json"

printf "{\n  \x22ServiceUserAccessKey\x22: \x22${service_account_key}\x22\n}" > $CONFIG_tap_security_path

echo " TheAppsPajamas Service Account Key Installed to ${CONFIG_tap_security_path}"

envman add --key "TAP_SECURITY_PATH" --value "${CONFIG_tap_security_path}"
