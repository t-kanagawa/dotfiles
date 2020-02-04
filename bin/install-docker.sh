#!/bin/bash

#
# option:
# -e
# エラー発生時シェル終了
# -u
# 未定義の変数使用時に終了
#
set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

function main () {
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
}

main