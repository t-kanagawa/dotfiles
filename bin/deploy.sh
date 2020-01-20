#/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

function main () {
  for f in .??*; do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    echo ${f}
    ln -si "${SCRIPT_DIR}/${f}" ~/
  done
}

main
