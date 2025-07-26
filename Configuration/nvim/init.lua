-- ================================
--       MINIMAL SETUP NEOVIM
-- ================================

vim.o.showmatch = true
vim.o.matchtime = 1

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.number = true
vim.o.relativenumber = false
vim.o.cursorline = true
vim.o.termguicolors = true

vim.o.completeopt = "menuone,noselect"
vim.cmd("set shortmess+=c")

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

vim.o.timeoutlen = 120
vim.o.updatetime = 8

vim.o.autoread = true
vim.cmd("autocmd FocusGained * checktime")

vim.opt.termguicolors = true
vim.cmd("syntax enable")
vim.cmd("set t_Co=0")
vim.cmd("set whichwrap+=<,>,[,],l,h")
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]

vim.opt.shortmess:append("sI")
vim.opt.fillchars = { eob = ' ' }

-- ========================================
--          Set Keymap
-- ========================================
vim.keymap.set('n', 'w',  ':w<CR>', { noremap = true, silent = true })    -- w -> :w
vim.keymap.set('n', 'q',  ':q<CR>', { noremap = true, silent = true })    -- q -> :q
vim.keymap.set('n', 'qq', ':q!<CR>', { noremap = true, silent = true })   -- qq -> :q!
vim.keymap.set('n', 'wq', ':wq<CR>', { noremap = true, silent = true })   -- wq -> :wq
vim.keymap.set('n', 'wqq', ':wq!<CR>', { noremap = true, silent = true }) -- wqq -> :wq!

require("nvim-web-devicons")
require("status_line")
require("neo_tree")
require("theme")
require("auto")
