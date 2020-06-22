#!/usr/bin/env bash
set -ue

#
# Docker Composeインストール
#

function main() {
  sudo apt update &&
    sudo apt upgrade -y &&
    sudo apt install -y \
      jq \
      vim \
      cron #定期実行

  # cronサービス起動
  sudo systemctl enable cron && sudo systemctl restart cron
}

main
