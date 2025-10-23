local plugins = {}

local function require_plugins(...)
    local plugin_modules = {...}
    local plugins = {}

    for _,plugin in ipairs(plugin_modules) do
        table.insert(plugins, require(plugin))
    end

    return plugins
end

local function install_plugins(plugins)
    local plug = vim.fn['plug#']
    vim.call('plug#begin')

    for _,plugin in ipairs(plugins) do
        plugin.install(plug)
    end

    vim.call('plug#end')
end

local function init_plugins(plugins)
    for _,plugin in ipairs(plugins) do
        plugin.init()
    end
end

function plugins.init()
    local plugins = require_plugins(
        'plugin.standalone',
        'plugin.nerdtree',
        'plugin.fzf',
        'plugin.rustaceanvim',
        'plugin.lspconfig'
        )

    install_plugins(plugins)
    init_plugins(plugins)
end

return plugins
