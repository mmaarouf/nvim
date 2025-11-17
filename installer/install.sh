#!/usr/bin/env bash
set -eu

XDG_CONFIG_HOME="$HOME/.config/"
XDG_DATA_HOME="$HOME/.local/share/"
NVIM_CONFIG_DIR="$XDG_CONFIG_HOME/nvim"
NVIM_DATA_DIR="$XDG_DATA_HOME/nvim"
PROJECT_DIR="$(realpath "$(dirname "$0")"/..)"

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

maybe_sudo() {
    if [[ $(which sudo) ]];
    then
        sudo "$@"
    else
        # container images may not contain sudo
        "$@"
    fi
}

uninstall_package() {
    if [[ $(which apt) ]];
    then
        maybe_sudo apt remove -y "$@"
    elif [[ $(which apk) ]];
    then
        maybe_sudo apk del "$@"
    elif [[ $(which brew) ]];
    then
        maybe_sudo uninstall "$@"
    else
        echo "Could not find a supported package manager"
        exit 1
    fi
}

install_package() {
    if [[ $(which apt) ]];
    then
        maybe_sudo apt update && maybe_sudo apt install -y "$@"
    elif [[ $(which apk) ]];
    then
        maybe_sudo apk add "$@"
    elif [[ $(which brew) ]];
    then
        maybe_sudo brew install "$@"
    else
        echo "Could not find a supported package manager"
        exit 1
    fi
}

install_prerequisites() {
    print_heading "** Installing prerequisites **"
    install_package curl git
}

install_plugin_manager() {
    print_heading "** Downloading plugin manager **"
    curl -fLo "${NVIM_DATA_DIR}"/site/autoload/plug.vim \
        --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_nvim() {
    print_heading "** Installing nvim **"
    install_package neovim
}

remove_existing_installation() {
    rm -rf "$NVIM_CONFIG_DIR" "$NVIM_DATA_DIR"
    if [[ $(which nvim) ]];
    then
        uninstall_package neovim
    fi
}

install_config() {
    print_heading "** Copying over nvim configuration **"
    mkdir -p "$NVIM_CONFIG_DIR"
    cp -rp "$PROJECT_DIR"/nvim-config/* "$XDG_CONFIG_HOME"/nvim/
}

init_nvim() {
    nvim --headless +'PlugInstall' +qa
}

main () {
    remove_existing_installation
    install_prerequisites
    install_nvim
    install_config
    install_plugin_manager
    init_nvim
    print_heading "** Finished installing nvim **"
}

main