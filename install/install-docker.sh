#/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

function main () {
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
}

main
