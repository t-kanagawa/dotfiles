#/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

function main () {
  gen_git_config
}

function gen_git_config() {
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
}

main
