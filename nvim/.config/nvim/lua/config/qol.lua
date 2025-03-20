--see vim.highlight.on_yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Keymaps
-- Not do anything if only space is pressed in normal or visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
-- Allows you to change wrapped lines within long lines
-- Essentially, if there is no count before the commands k or j it makes a gk or gj
-- so that you move to what is directly below you, rather than to the next line
-- if there is a count then it moves on lines
-- You can simply use gk or gj if you don't want these mappings
--vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
--vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

require('lualine').setup({})
