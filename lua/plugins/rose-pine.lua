return {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "main", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive_windows = true,
            extend_background_behind_borders = true,
            enable = {
                terminal = true,
                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                migrations = true, -- Handle deprecated options automatically
            },

            styles = {
                bold = false,
                italic = false,
                transparency = false,
            },

            palette = {
                 main = {
                     base = '#000000',
                 },
            },

            highlight_groups = {
                -- Comment = { fg = "foam" },
                -- VertSplit = { fg = "muted", bg = "muted" },
            },

            groups = {
                --
            },

            before_highlight = function(group, highlight, palette)
            end
    })
          vim.cmd.colorscheme("rose-pine")
          end,
}
