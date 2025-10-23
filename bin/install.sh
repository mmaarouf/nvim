#!/usr/bin/env bash
set -eu

XDG_CONFIG_HOME=$HOME/.config/
XDG_DATA_HOME=$HOME/.local/share/
NVIM_DIR="$(realpath "$(dirname "$0")"/..)"

print_colour() {
    local colour="$1"
    local text="$2"
    local no_colour=$'\033[0m'
    printf "%s%s%s\n" "$colour" "$text" "$no_colour"
}

print_heading() {
    local green=$'\033[0;32m'
    print_colour "$green" "$1"
}

print_error() {
    local red=$'\033[0;31m'
    print_colour "$red" "$1"
}


install_package () {
    local install_cmd
    local os
    os=$(uname -s)

    if [[ "${os}" == "Linux" ]];
    then
        local alpine_text
        alpine_text=$(grep -c "Alpine" /etc/os-release || echo "0")
        if [[ "${alpine_text}" != "0" ]];
        then
            install_cmd="apk add"
        else
            install_cmd="apt update && apt install -y"
        fi
    elif [[ "${os}" == "Darwin" ]];
    then
        install_cmd="yes | brew install"
    else
        print_error "Unknown OS ${os}"
        exit 1
    fi

    echo "${install_cmd} $*" | bash
}

install_prerequisites() {
    print_heading "** Installing prerequisites **"
    install_package curl git
}

install_plugin_manager() {
    print_heading "** Downloading plugin manager **"
    curl -fLo "${XDG_DATA_HOME}"/nvim/site/autoload/plug.vim \
        --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_nvim() {
    print_heading "** Installing nvim **"
    install_package neovim
}

install_config() {
    print_heading "** Copying over nvim configuration **"
    mkdir -p "$XDG_CONFIG_HOME/nvim"
    cp -rp "$NVIM_DIR"/nvim-config/* "$XDG_CONFIG_HOME"/nvim/
}

init_nvim() {
    nvim --headless +'PlugInstall' +qa
}

main () {
    install_prerequisites
    install_nvim
    install_config
    install_plugin_manager
    init_nvim
    print_heading "** Finished installing nvim **"
}

main