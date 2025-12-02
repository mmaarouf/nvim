local plugin = {}

function plugin.install(plug)
    plug "neovim/nvim-lspconfig"
end

local function typescript_setup()
    -- locating the ts-ls bin through a env var
    -- enables ability to point to a script that invokes
    -- the binary within a containerised environment
    local tsgo_path = os.getenv('TSGO_PATH')

    if tsgo_path then
        vim.lsp.config('tsgo', {
            cmd = { tsgo_path, '--lsp', '--stdio' }
        })
        vim.lsp.enable('tsgo')
    end
end

function plugin.init()
    typescript_setup()
end

return plugin