return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.clangd.setup({}) --installed with dnf
            lspconfig.ruff.setup({}) --installed with uv
            lspconfig.pyright.setup({ --installed with pip
                settings = {
                    pyright = {
                        -- Using Ruff's import organizer
                        disableOrganizeImports = true,
                    },
                    python = {
                        analysis = {
                            -- Ignore all files for analysis to exclusively use Ruff for linting
                            ignore = { '*' },
                        },
                    },
                },
            })
            lspconfig.lua_ls.setup({}) --installed from releases (https://github.com/LuaLS/lua-language-server/releases)
            lspconfig.elmls.setup({}) --installed with npm
            lspconfig.hls.setup({}) --installed with GHCup
            local eng_dict = {}
            for word in io.open(vim.fn.stdpath("config") .. "/spell/en.utf-8.add", "r"):lines() do
                table.insert(eng_dict, word)
            end
            lspconfig.ltex.setup({ --installed from releases (https://github.com/valentjn/ltex-ls/releases)
                filetypes = { "latex", "tex", "bib", },
                settings = {
                    ltex = {
                        enabled = {'bib', 'context', 'latex', 'plaintex', 'tex'},
                        language = 'en-GB',
                        dictionary = {
                            ["en-GB"] = eng_dict,
                        },
                    }
                }
            })
            lspconfig.harper_ls.setup({}) --installed from releases (https://github.com/Automattic/harper/releases)
        end,
        dependencies = {
            'folke/lazydev.nvim',
            ft = 'lua', -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
                },
            },
        },
    },
}
