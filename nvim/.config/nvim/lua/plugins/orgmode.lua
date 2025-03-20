local org_directory = '~/Toma de notas/Org/'
return {
    'chipsenkbeil/org-roam.nvim',
    tag = '0.1.1',
    dependencies = {
        {
            'nvim-orgmode/orgmode',
            --tag = '0.3.7',
            config = function()
                require('orgmode').setup({
                    org_agenda_files = org_directory .. '**/*',
                    org_default_notes_file = org_directory .. 'refile.org',
                    org_capture_templates = {
                        r = {
                            description = 'Repo',
                            template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
                            target = org_directory .. 'repos.org',
                        },
                    },
                })
            end,
        },
    },
    config = function()
        require('org-roam').setup({
            directory = org_directory,
            -- optional
            --org_files = {
                --    '~/another_org_dir',
                --    '~/some/folder/*.org',
                --    '~/a/single/org_file.org',
                --}
            })
        end
    }
