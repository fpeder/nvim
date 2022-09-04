local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup({
    highlight = {
        enable = true, 
        disable = {}
    },
    indent = {
        enable = true, 
        disable = {"python"}
    },
    autotag = {
        enable = true,
    },
    yati = {enable = true},
})

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
