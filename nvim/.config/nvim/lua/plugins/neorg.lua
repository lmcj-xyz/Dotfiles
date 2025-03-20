return {
    {
        'nvim-neorg/neorg',
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = '*', -- Pin Neorg to the latest stable release
        ft = 'norg',
        opts = {
            load = {
                ['core.defaults'] = {},
                ['core.concealer'] = {},
                ['core.dirman'] = {
                    config = {
                        workspaces = {
                            playground = '~/Proyectos/playground-neorg'
                        },
                        default_workspace = 'playground',
                    }
                },
                ---- This is just for latex rendering
                --["core.integrations.image"] = {},
                --["core.latex.renderer"] = {},
            },
        },
    },
}
