--vim.cmd("autocmd!")

vim.scriptencoding = 'uft-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.breakindent = true
vim.opt.smarttab = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.backspace = { 'start', 'eol', 'indent'}

vim.g.mapleader = " "

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[ %s/\s\+$//e ]],
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.py"},
    command = [[ set tabstop=4 softtabstop=4 shiftwidth=4 fileformat=unix ]]
})
