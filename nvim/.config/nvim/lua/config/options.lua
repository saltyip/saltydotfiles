-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.breakindent = true

-- search
vim.opt.hlsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true -- case-sensitive when uppercase present

-- ui
vim.opt.title = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.cmdheight = 0
vim.opt.laststatus = 3 -- single global statusline
vim.opt.showcmd = true

-- splits
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

-- behaviour
vim.opt.backup = false
vim.opt.undofile = true -- persistent undo
vim.opt.updatetime = 250 -- faster LSP hover/CursorHold
vim.opt.timeoutlen = 300 -- snappier keymaps
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })

-- lazyvim
vim.g.autoformat = false
