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

-- Simple Autoclose
local brackets = {
  ['"'] = '"',
  ["'"] = "'",
  ["("] = ")",
  ["["] = "]",
}
for open, close in pairs(brackets) do
  vim.keymap.set("i", open, function()
    return open .. close .. "<Left>"
  end, { expr = true, noremap = true })
 end

-- ========================================
--          Set Keymap
-- ========================================
vim.keymap.set('n', 'w',  ':w<CR>', { noremap = true, silent = true })    -- w -> :w
vim.keymap.set('n', 'q',  ':q<CR>', { noremap = true, silent = true })    -- q -> :q
vim.keymap.set('n', 'qq', ':q!<CR>', { noremap = true, silent = true })   -- qq -> :q!
vim.keymap.set('n', 'wq', ':wq<CR>', { noremap = true, silent = true })   -- wq -> :wq
vim.keymap.set('n', 'wqq', ':wq!<CR>', { noremap = true, silent = true }) -- wqq -> :wq!

-- ========================================
--          Load Nvim-Web-Devicons
-- ========================================
require("nvim-web-devicons")

-- ========================================
--          LuaLine - Bubble config
-- ========================================

local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}
local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}
require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', --[[ add your center components here in place of this comment ]]
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}


-- ===================================
--          NetRW Explorer File
-- ===================================
--vim.keymap.set('n', '<C-e>', ':Lexplore<CR>', { noremap = true, silent = true })
--vim.g.netrw_banner = 0
--vim.g.netrw_liststyle = 3
--vim.g.netrw_browse_split = 0
--vim.g.netrw_winsize = 24
--vim.g.netrw_altv = 1

-- =====================================
--          Nvim-Tree
-- =====================================
vim.g.mapleader = " "
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach = my_on_attach,
})
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- =====================================
--          Auto Indent
-- =====================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.keymap.set("i", "<CR>", function()
      local col = vim.fn.col('.') - 1
      local line = vim.fn.getline('.')
      local prev_char = line:sub(col, col)

      if prev_char == "{" then
        return "<CR>}<Esc>i<Cr><Esc>ki<Tab>"
      else
        return "<CR>"
      end
    end, { expr = true, buffer = true })
  end
})


-- ====================================
--          Gruvbox Dark
-- ====================================

-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
