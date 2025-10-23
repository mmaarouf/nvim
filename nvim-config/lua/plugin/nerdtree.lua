local nerdtree_plugin = {}

function nerdtree_plugin.install(plug)
    plug 'Xuyuanp/nerdtree-git-plugin'
    plug 'scrooloose/nerdtree'
end

function nerdtree_plugin.init()
    vim.keymap.set('', '<c-n>', ':NERDTreeToggle<cr>')
    vim.keymap.set('n', ',n', ':NERDTreeFind<cr>')
end

return nerdtree_plugin
