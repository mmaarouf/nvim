#!/usr/bin/env bash
set -eu

test_nvim_should_be_able_to_write_to_a_file() {
    # write string into a file using nvim
    nvim --headless +'exe ":normal i" . "hello"' +'w!/tmp/testfile' +qa &> /dev/null

    local -r actual=$(cat /tmp/testfile)
    local -r expected="hello"

    assert_equals "$expected" "$actual" "Writing to a file using nvim failed"
}

test_plugin_installation_should_have_zero_errors() {
    nvim --headless +'PlugStatus' +'w!/tmp/plugin-status' +qa &> /dev/null
    local -r actual=$(grep -o " 0 error(s)" /tmp/plugin-status)
    local -r expected=" 0 error(s)"

    assert_equals "$expected" "$actual" "Plugin installation has errors"
}

test_plugins_should_be_installed_successfully() {
    nvim --headless +'PlugStatus' +'w!/tmp/plugin-status' +qa &> /dev/null

    local -r plugins=(
        'vim-polyglot'
        'fzf'
        'fzf-lua'
        'nerdtree-git-plugin'
        'vim-autoclose'
        'vim-gitgutter'
        'nvim-lspconfig'
        'vim-airline'
        'rustaceanvim'
        'nerdtree'
        'editorconfig-vim'
    )

    for plugin in "${plugins[@]}"; do
        local actual
        actual=$(grep -o "$plugin: OK" /tmp/plugin-status)
        local expected
        expected="$plugin: OK"
        assert_equals "$expected" "$actual" "Plugin $plugin installation failed"
    done
}