#!/usr/bin/env bash -eu

if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.utf8
localectl set-keymap jp106
