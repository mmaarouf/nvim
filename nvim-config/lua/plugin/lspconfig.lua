local plugin = {}

function plugin.install(plug)
    plug "neovim/nvim-lspconfig"
end

local function typescript_setup()
    -- locating the ts-ls bin through a env var
    -- enables ability to point to a script that invokes
    -- the binary within a containerised environment
    local ts_ls_path = os.getenv('TS_LS_PATH')

    if ts_ls_path then
        require 'lspconfig'.ts_ls.setup {
            before_init = function(params)
                params.processId = vim.NIL -- without this the TS Server quits for some reason
            end,
            cmd = { ts_ls_path, '--stdio' }
        }
    end
end

function plugin.init()
    typescript_setup()
end

return plugin;
