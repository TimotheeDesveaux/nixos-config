#! /usr/bin/env bash

set -euo pipefail

pushd /home/stolen/.config/nixos

if [ -z "$(git status --porcelain)" ]; then
    echo "No changes detected, exiting."
    popd
    exit 0
fi

git diff

sudo nixos-rebuild switch --flake .

current=$(
    nixos-rebuild list-generations --flake .config/nixos \
        | grep current \
        | tr -s ' ' \
        | cut -d ' ' -f 1,3-6
)

git commit -am "$current"

popd
