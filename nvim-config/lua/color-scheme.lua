local color_scheme = {}

function color_scheme.init()
    local white=231
    local dark_grey=233
    local semi_dark_grey=239
    local light_grey=237
    local yellow=227
    local green=85
    local pink=204
    local light_blue=123
    local blue=45
    local purple=213

    vim.o.termguicolors = false

    vim.api.nvim_set_hl(0, 'ColorColumn', { ctermfg=white, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Conceal', { ctermfg=yellow,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Cursor', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'lCursor', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'CursorIM', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'CursorColumn', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'CursorLine', { ctermbg=light_grey })
    vim.api.nvim_set_hl(0, 'Directory', { ctermfg=green ,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'DiffAdd', { ctermfg=green ,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'DiffChange', { ctermfg=yellow,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'DiffDelete', { ctermfg=pink,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'DiffText', { ctermfg=dark_grey ,  ctermbg=yellow })
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'ErrorMsg', { ctermfg=pink,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'VertSplit', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Folded', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'FoldColumn', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SignColumn', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'IncSearch', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'LineNr', { ctermfg=semi_dark_grey,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'LineNrAbove', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'MatchParen', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'ModeMsg', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'MoreMsg', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'NonText', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Pmenu', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'PmenuSel', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'PmenuSbar', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'PmenuThumb', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Question', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'QuickFixLine', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Search', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpecialKey', { ctermfg=51 ,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpellBad', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpellCap', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpellLocal', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpellRare', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'StatusLine', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'StatusLineNC', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'StatusLineTerm', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'StatusLineTermNC', { ctermfg=white, cterm,bg=dark_grey })
    vim.api.nvim_set_hl(0, 'TabLine', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'TabLineFill', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'TabLineSel', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Terminal', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Title', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Visual', { ctermbg=light_grey })
    vim.api.nvim_set_hl(0, 'VisualNOS', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'WarningMsg', { ctermfg=white,  ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'WildMenu', { ctermfg=white,  ctermbg=dark_grey })

    vim.api.nvim_set_hl(0, 'Normal', { ctermfg=white, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Comment', { ctermfg=semi_dark_grey, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Constant', { ctermfg=purple, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Identifier', { ctermfg=light_blue, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Statement', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'PreProc', { ctermfg=blue, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Type', { ctermfg=green, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Special', { ctermfg=green, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Underlined', { ctermfg=white, ctermbg=dark_grey, cterm={ underline=true } })
    vim.api.nvim_set_hl(0, 'Ignore', { ctermfg=white, ctermbg=dark_grey, cterm={ italic=true } })
    vim.api.nvim_set_hl(0, 'Error', { ctermfg=pink, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Todo', { ctermfg=pink, ctermbg=dark_grey })

    vim.api.nvim_set_hl(0, 'String', { ctermfg=purple, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Character', { ctermfg=purple, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Number', { ctermfg=purple, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Boolean', { ctermfg=purple, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Float', { ctermfg=purple, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Function', { ctermfg=light_blue, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Conditional', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Repeat', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Label', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Operator', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Keyword', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Exception', { ctermfg=pink, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Include', { ctermfg=blue , ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Define', { ctermfg=blue , ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Macro', { ctermfg=green , ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'PreCondit', { ctermfg=green , ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'StorageClass', { ctermfg=green , ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Structure', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Typedef', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpecialChar', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Tag', { ctermfg=light_blue, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Delimiter', { ctermfg=yellow, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'SpecialComment', { ctermfg=light_blue, ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'Debug', { ctermfg=light_blue, ctermbg=dark_grey })

    -- Tab line colours
    vim.api.nvim_set_hl(0, 'TabLine', { ctermfg=light_grey })
    vim.api.nvim_set_hl(0, 'TabLineFill', { ctermbg=dark_grey })
    vim.api.nvim_set_hl(0, 'TabLineSel', { ctermbg=light_grey })

    -- Autocomplete pop up menu colours
    vim.api.nvim_set_hl(0, 'Pmenu', { ctermbg=dark_grey, ctermfg=purple })
    vim.api.nvim_set_hl(0, 'PmenuSel', { ctermbg=purple, ctermfg=white })

     -- Highlight trailing whitespace. Note must be set after colorscheme.
    vim.cmd('match ExtraWhitespace /\\s\\+$/')
    vim.api.nvim_set_hl(0, 'Extrawhitespace', { ctermbg=pink, bg=pink })
end

return color_scheme