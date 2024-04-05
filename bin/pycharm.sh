#!/usr/bin/env bash

pycharm_edition="pycharm-community"

if command -v pycharm-professional &> /dev/null; then
  pycharm_edition="pycharm-professional"
fi

nix-shell ~/.env/python3.nix --run $pycharm_edition
