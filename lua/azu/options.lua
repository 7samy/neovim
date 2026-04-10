
-- ~/.config/nvim/lua/user/options.lua

local opt = vim.opt

-- Darstellung
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Einrückung
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Suche
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Verhalten
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.clipboard = "unnamedplus"  -- System-Clipboard nutzen
opt.mouse = ""
opt.scrolloff = 8
opt.sidescrolloff = 8

