-- Fast reload
vim.opt.compatible = false

-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Display
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "no"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- timeout
vim.opt.timeoutlen = 180
vim.opt.updatetime = 15

-- UI
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- Leader
vim.g.mapleader = " "

-- Keymap
vim.keymap.set('n', 'w', ':w<CR>')
vim.keymap.set('n', 'q', ':q<CR>')
vim.keymap.set('n', 'qq',':q!<CR>')
vim.keymap.set('n', 'wqq', ':wq!<CR>')
vim.keymap.set('n', 't', ':term<CR>')

-- Others
vim.opt.fillchars = { eob=" " }
vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.laststatus = 0
vim.opt.cmdheight = 0

-- Require package
require("colorscheme")
require("pair")
require("folder_tree")
require("lsp_config")
require("telescope_conf")
