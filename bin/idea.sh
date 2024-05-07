#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
idea_edition="idea-community"

if command -v idea-ultimate &> /dev/null; then
  idea_edition="idea-ultimate"
fi

nix-shell $SCRIPT_DIR/../env/java.nix --run $idea_edition
