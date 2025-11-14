#!/usr/bin/env bash
set -eu


main() {
    local -r tmp_dir="$(mktemp -d)"
    pushd "$tmp_dir"

    curl -L https://github.com/mmaarouf/nvim/releases/download/latest/nvim.tar.gz -o nvim.tar.gz
    tar -xzf nvim.tar.gz
    bash installer/install.sh

    popd
}

main