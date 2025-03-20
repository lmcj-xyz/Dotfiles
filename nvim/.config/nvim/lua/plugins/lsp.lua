return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.clangd.setup({}) --installed with dnf
            lspconfig.pyright.setup({}) --installed with pip
            lspconfig.lua_ls.setup({}) --installed from releases
            --lspconfig.texlab.setup({}) --installed from releases
            lspconfig.ltex.setup({}) --installed from releases
            --lspconfig.ltex.setup({ settings = { ltex = { dictionary = "{'en-GB': ['discretize', 'McKean', 'Vlasov'] }" } } }) --installed from releases
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
