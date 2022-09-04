local keymap = vim.keymap

keymap.set("n", "<C-l>", ":noh<CR><CR>")
keymap.set("n", "<leader>xs", ":update<CR>")
keymap.set("n", "<leader>xc", ":bd<CR>")
keymap.set("n", "<leader>xq", ":q<CR>")
keymap.set("n", "<leader>xb", ":Telescope buffers<CR>")
