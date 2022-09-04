local status, telescope = pcall(require, "telescope")
if not status then
    return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local previewers = require('telescope.previewers')

vim.keymap.set("n", "<leader>ff", function() builtin.find_files() end)
vim.keymap.set("n", "<leader>fg", function() builtin.live_grep() end)
vim.keymap.set("n", "<leader>fb", function() builtin.buffers() end)
vim.keymap.set("n", "<leader>ft", function() builtin.tags() end)
vim.keymap.set("n", "<leader>fh", function() builtin.help_tags() end)
vim.keymap.set("n", "<leader>fx", 
    function ()
        telescope.extensions.file_browser.file_browser()
    end
)

telescope.load_extension("file_browser")
telescope.setup({
    defaults = {
        file_previewer = previewers.vim_buffer_cat.new,
        grep_previewer = previewers.vim_buffer_vimgrep.new,
        qflist_previwer = previewers.vim_buffer_qflist.new,
        buffer_previwer_maker = previewers.buffer_previewer_maker,
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
        file_browser = {
            theme = "dropdown",
        }
    }
})
