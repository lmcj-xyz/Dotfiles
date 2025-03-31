return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd.colorscheme('rose-pine-dawn')
        end
    }
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    --     config = function()
    --         vim.cmd.colorscheme('tokyonight-night')
    --     end
    -- }
}
