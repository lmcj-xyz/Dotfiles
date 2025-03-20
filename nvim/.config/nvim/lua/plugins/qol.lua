return {
    { 'folke/which-key.nvim', opts = {} },
    { 'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },
    --{ '3rd/image.nvim', },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        options = { theme = 'rose-pine' }
    }
}
