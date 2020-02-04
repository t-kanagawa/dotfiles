#!/bin/bash -eu
# -e
# エラー発生時シェル終了
# -u
# 未定義の変数使用時に終了

apt update && apt upgrade -y
