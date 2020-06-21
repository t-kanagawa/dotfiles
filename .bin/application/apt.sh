#!/usr/bin/env bash
set -ue

#
# Docker Composeインストール
#

function main () {
  sudo apt update \
  && sudo apt upgrade -y \
  && sudo apt install -y \
  jq \ # json変換
  vim \ # Vim
  cron # 定期実行

  sudo systemctl enable cron && sudo systemctl restart cron
}

main