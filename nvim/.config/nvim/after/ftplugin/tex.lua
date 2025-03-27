vim.opt.colorcolumn = "" --remove the line drawn on 80th column for tex files

-- imaps, see :h vimtex-imaps
vim.fn['vimtex#imaps#add_map']({lhs = '---', rhs = '\\textemdash', wrapper = 'vimtex#imaps#wrap_trivial'})
