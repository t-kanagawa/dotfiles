#!/bin/bash -eu

readonly SCRIPT_DIR=$(
  cd $(dirname $0)
  pwd
)
if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

function main() {
  free -m
  if grep 'swapfile' /etc/fstab >/dev/null; then
    echo "すでにswap領域が存在するので終了します"
    return
  fi
  make_swap
}

# 2GBのスワップファイルを作成する
function make_swap() {
  dd if=/dev/zero of=/swapfile bs=1M count=2048
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  echo "/swapfile swap swap defaults 0 0" >>/etc/fstab
  free -m
}

main
