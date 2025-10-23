local standalone_plugins = {}

function standalone_plugins.install(plug)
    plug 'airblade/vim-gitgutter'
    plug 'townk/vim-autoclose'
    plug 'editorconfig/editorconfig-vim'
    plug 'vim-airline/vim-airline'
    plug 'sheerun/vim-polyglot'
end

function standalone_plugins.init()
end

return standalone_plugins
