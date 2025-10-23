local plugin = {}

function plugin.install(plug)
    plug 'mrcjkb/rustaceanvim'
end

function plugin.init()
    -- locating the rust-analyzer lib through a env var
    -- enables ability to point to a script that invokes
    -- the binary within a containerised environment
    local rust_analyzer_path = os.getenv('RUST_ANALYZER_PATH')

    if rust_analyzer_path then
        vim.g.rustaceanvim = {
          server = {
              cmd = function()
                  return { rust_analyzer_path }
              end,
          }
        }
    end
end

return plugin;
