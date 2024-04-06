#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pycharm_edition="pycharm-community"

if command -v pycharm-professional &> /dev/null; then
  pycharm_edition="pycharm-professional"
fi

nix-shell $SCRIPT_DIR/../env/python3.nix --run $pycharm_edition
