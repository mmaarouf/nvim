local fzf_plugin = {
}

function fzf_plugin.install(plug)
    plug('junegunn/fzf', { ['do'] = './install --all' })
    plug 'ibhagwan/fzf-lua'
end

function fzf_plugin.init()
    require('fzf-lua').setup {
        'fzf-native',
        backdrop = 100, -- prevents weird background colours when the popup is open
    }
    vim.keymap.set('', '<c-t>', ':lua require("fzf-lua").files()<cr>')
end

return fzf_plugin