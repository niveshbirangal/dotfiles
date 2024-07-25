vim.opt.cmdheight = 0
vim.cmd("let g:netrw_liststyle = 3")

-- showing realtive numbers in buffer
local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- 2 space (p default = 2)
opt.shiftwidth = 2 -- 2 space for indent width
opt.expandtab = true -- expand tab into spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when seaching
opt.smartcase = true -- if mix case in search then assumes you want case sensitive

opt.cursorline = true

-- colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to right
opt.splitbelow = true -- split horizontal window to bottom

-- auto scroll
opt.scrolloff = 16
