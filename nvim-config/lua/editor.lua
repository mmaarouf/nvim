local function set_vim_options()
    vim.opt.nu = true
    vim.opt.ic = true
    vim.opt.hlsearch = true
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.listchars = 'eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_'
    vim.opt.list = false --hide whitespace chars
    vim.opt.cursorline = true
    vim.opt.colorcolumn = '100'
    vim.opt.guicursor = '' -- keep cursor to block
    vim.opt.inccommand = 'nosplit' -- interactive string substitution
end

local function set_keymaps()
    vim.keymap.set('i', 'jj', '<Esc>')
end

local function set_diagnostics()
    vim.diagnostic.config({ virtual_text = true })
end

local editor = {}

function editor.init()
    set_vim_options()
    set_keymaps()
    set_diagnostics()
end

return editor