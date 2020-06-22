#!/usr/bin/env bash
set -ue

function main() {
  if grep 'swapfile' /etc/fstab >/dev/null; then
    echo "すでにswap領域が存在するので終了します"
    return
  fi
  make_swap
}

function make_swap() {
  sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
  sudo chmod 600 /swapfile
  sudo mkswap /swapfile
  sudo swapon /swapfile
  sudo echo "/swapfile swap swap defaults 0 0" >>/etc/fstab
  free -m
}

main
