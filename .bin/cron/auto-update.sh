#!/usr/bin/env bash
set -ue

sudo apt update \
&& sudo apt upgrade -y \
&& sudo apt autoremove