#!/bin/bash
set -ue

readonly SCRIPT_DIR=$(
  cd $(dirname $0)
  pwd
)
if [ "$(whoami)" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# need reboot
usermod -aG docker $USER
rm get-docker.sh

# docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
