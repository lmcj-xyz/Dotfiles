-- [ Options ]
-- Explore options using the :options command
-- notice that vim.o and vim.opt are not the same
-- vim.o is much more powerful and for the most part you don't need it
-- You want to use vim.opt for most options
-- or vim.opt_local or vim.opt_global when you want to specify the scope
vim.opt.encoding = "utf-8"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.hlsearch = false

vim.opt.wrap = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = 'unnamedplus' --sync system's and neovim's clipboard

vim.opt.scrolloff = 999

vim.opt.virtualedit = 'block' --allow for all the screen to be available in block mode

vim.opt.inccommand = 'split' --show matches from search and replace in a split window

vim.opt.ignorecase = true --ignore cases in search, command completion, etc
vim.opt.smartcase = true --overrides ignorecase when convenient

vim.opt.termguicolors = true

vim.opt.breakindent = true --keep line breaks indented

vim.wo.signcolumn = 'yes' --makes the sign column be always present, helpful to avoid the shifting when the LSP parses

vim.opt.completeopt = 'menu,menuone,noselect,preview'

vim.opt.spell = true
vim.opt.spelllang = { 'en', 'es_mx' }

vim.opt.colorcolumn = { 80 } --draw line on 80th column

vim.opt.updatetime = 250 --writes to swap file after 250ms
vim.opt.timeout = true --waits after part of a mapped key sequence has been pressed
vim.opt.timeoutlen = 1000 --1000 is the default. I put it on 300 but it was not enough for some vimtex imaps

vim.opt.cursorcolumn = true
vim.opt.cursorline = true

vim.opt.foldenable = false

vim.opt.conceallevel = 2

vim.opt.showmode = false --removes mode from command line

-- [ Variables ]
-- These are much more general than options and close to the editor in nature

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
