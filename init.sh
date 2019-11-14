#/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

function main () {


  echo 'export XDG_CONFIG_HOME="${HOME}/.config"' >> ${HOME}/.bashrc
  echo 'export XDG_CACHE_HOME="${HOME}/.cache"' >> ${HOME}/.bashrc

}

main
