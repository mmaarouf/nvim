local function init(...)
    local modules = {...}
    for _,module in ipairs(modules) do
        require(module).init()
    end
end

init(
    'plugins',
    'editor',
    'color-scheme'
    )
