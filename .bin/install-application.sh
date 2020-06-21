#!/usr/bin/env bash
set -ue

function main () {
  sudo set-timezone Asia/Tokyo

  SCRIPT_DIR=$(cd $(dirname $0); pwd)
  . ${SCRIPT_DIR}/application/apt.sh
  . ${SCRIPT_DIR}/application/docker.sh
  . ${SCRIPT_DIR}/application/docker-compose.sh
}

main