#!/usr/bin/env bash
set -ue

readonly SCRIPT_DIR=$(
  cd $(dirname $0)
  pwd
)
if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

timedatectl set-timezone Asia/Tokyo
ntpdate time.google.com
localectl set-locale LANG=ja_JP.utf8
localectl set-keymap jp106
