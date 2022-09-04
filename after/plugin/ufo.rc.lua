local status, ufo = pcall(require, "ufo")
if not status then return end

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

ufo.setup({
    close_fold_kinds = {"imports", "comments"},
    provider_selector = function(bufnr, filetype, buftype)
        return {"treesitter", "indent"}
    end
})

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith)
