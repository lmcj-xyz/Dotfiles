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
            lspconfig.lua_ls.setup({}) --installed from releases
            lspconfig.ltex.setup({ --installed from releases
                filetypes = { "latex", "tex", "bib", },
                settings = {
                    ltex = {
                        enabled = {'bib', 'context', 'latex', 'plaintex', 'tex'},
                        language = 'en-GB',
                    }
                }
            })
            lspconfig.harper_ls.setup({}) --installed from releases
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
    }
}
