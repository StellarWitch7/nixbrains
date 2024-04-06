#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
nix-shell $SCRIPT_DIR/../env/rust.nix --run rust-rover
