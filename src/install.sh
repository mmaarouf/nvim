#!/usr/bin/env bash
set -eu

XDG_CONFIG_HOME="$HOME/.config/"
XDG_DATA_HOME="$HOME/.local/share/"
PROJECT_DIR="$(realpath "$(dirname "$0")"/..)"
NVIM_CONFIG_DIR="$XDG_CONFIG_HOME/nvim"
NVIM_DATA_DIR="$XDG_DATA_HOME/nvim"

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

uninstall_package() {
    if [[ $(which apt) ]];
    then
        apt remove -y "$@"
    elif [[ $(which apk) ]];
    then
        apk del "$@"
    elif [[ $(which brew) ]];
    then
        brew uninstall "$@"
    else
        echo "Could not find a supported package manager"
        exit 1
    fi
}

install_package() {
    if [[ $(which apt) ]];
    then
        apt update && apt install -y "$@"
    elif [[ $(which apk) ]];
    then
        apk add "$@"
    elif [[ $(which brew) ]];
    then
        brew install "$@"
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
    uninstall_package neovim
}

install_config() {
    print_heading "** Copying over nvim configuration **"
    mkdir -p "$NVIM_CONFIG_DIR"
    cp -rp "$PROJECT_DIR"/nvim-config/* "$XDG_CONFIG_HOME"/nvim/
}

init_nvim() {
    nvim --headless +'PlugInstall' +qa
}

get_linux_install_cmd() {
    local alpine_text
    alpine_text=$(grep -c "Alpine" /etc/os-release || echo "0")
    if [[ "${alpine_text}" != "0" ]];
    then
        echo "apk del"
    else
        echo "apt update && apt remove -y"
    fi
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