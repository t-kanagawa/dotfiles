#!/bin/bash -eu

readonly SCRIPT_DIR=$(cd $(dirname $0);pwd)

cd ${SCRIPT_DIR}

brew update \
&& brew upgrade