local status, lualine = pcall(require, "lualine")
if not status then
    return
end

lualine.setup({
    options = {
        icons_enables = true,
        theme = "gruvbox-material",
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {}
    },
    sections = {
        lualine_b  = {
            {"diagnostics",
            sources = {"nvim_diagnostic"},
            sections = {"error", "warn", "info", "hint"},
            --colored = false,
            update_in_insert = false,}
        },
        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {},
        lualine_z = {"progress"},
    },
})
