#!/bin/bash -eu

readonly SCRIPT_DIR=$(
  cd $(dirname $0)
  pwd
)
if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

apt update &&
  apt upgrade -y &&
  apt autoremove -y
