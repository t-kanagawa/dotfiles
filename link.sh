#/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

function main () {
  for f in .??*; do
    [[ "$f" == ".git" ]] && continue 
    [[ "$f" == ".DS_Store" ]] && continue 

    ln -s "${SCRIPT_DIR}/${f}" ~/.config
  done
}

main
