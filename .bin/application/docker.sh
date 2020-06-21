#!/usr/bin/env bash
set -ue

#
# Dockerインストール
#

function main () {
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  # グループ作成（多分すでに作成済）
  sudo groupadd docker
  # ユーザをdockerグループに追加
  sudo usermod -aG docker $USER
  # dockerサービス再起動
  sudo systemctl enable docker.service

  # インスタンスの再起動を行わないとsudoなしでdockerコマンドが使えない
}

main