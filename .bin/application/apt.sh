#!/bin/bash -eu

if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

function main() {
  apt update &&
    apt upgrade -y &&
    apt install -y jq vim ntpdate &&
    apt autoremove -y

    ntpdate -q ntp.nict.jp

  # apt install -y cron
  # systemctl enable cron && systemctl restart cron
}

main
