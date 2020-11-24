#!/bin/bash
set -ue

readonly SCRIPT_DIR=$(
  cd $(dirname $0)
  pwd
)
if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

function main() {
  apt update &&
    apt upgrade -y &&
    apt install -y jq vim ntpdate

  # apt install -y cron
  # systemctl enable cron && systemctl restart cron
}

main
