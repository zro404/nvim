-- Remap Leader to SpaceBar
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Window Title
vim.opt.titlestring = "neovim"
vim.cmd("set title")

-- Line Numbers
vim.wo.number = true
-- vim.wo.relativenumber = true

-- Tabstops
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.api.nvim_exec([[
  autocmd FileType javascript,javascriptreact,typescript,typescriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=2
]], false)

-- Comments
 require('nvim_comment').setup()

require('plugins')
require('keymap')
require('treeSitter')
require('lsp')
require('luaLine')


-- Theme
vim.g.material_style = "oceanic"
vim.cmd [[
        silent! colorscheme material
        hi Normal guibg=#263238
    ]]



-- ClipBoard
vim.cmd("set clipboard+=unnamedplus")
