local status, indent = pcall(require, "indent_blankline")
if not status then return end

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

indent.setup({
    show_current_content = true,
    show_end_of_line = true,
})
