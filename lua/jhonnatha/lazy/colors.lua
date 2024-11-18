function ColorMyPencils(color)
    -- color = color or "vague"
    color = color or "gruvbox-material"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

    {
        "vague2k/vague.nvim",
        config = function()
            require("vague").setup({
                -- optional configuration here
            })
        end
    },
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.gruvbox_material_enable_italic = true
            vim.gruvbox_material_transparent_background = true
            vim.cmd.colorscheme('gruvbox-material')
        end
    },
    --     {
    --         "rebelot/kanagawa.nvim",
    --         config = function()
    --             -- Default options:
    --             require('kanagawa').setup({
    --                 compile = false,  -- enable compiling the colorscheme
    --                 undercurl = true, -- enable undercurls
    --                 commentStyle = { italic = true },
    --                 functionStyle = {},
    --                 keywordStyle = { italic = true },
    --                 statementStyle = { bold = true },
    --                 typeStyle = {},
    --                 transparent = false,   -- do not set background color
    --                 dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    --                 terminalColors = true, -- define vim.g.terminal_color_{0,17}
    --                 colors = {
    --                     theme = {
    --                         all = {
    --                             ui = {
    --                                 bg_gutter = "none"
    --                             }
    --                         }
    --                     }
    --                 },
    --                 overrides = function(_) -- add/modify highlights
    --                     return {}
    --                 end,
    --                 theme = "wave",    -- Load "wave" theme when 'background' option is not set
    --                 background = {     -- map the value of 'background' option to a theme
    --                     dark = "wave", -- try "dragon" !
    --                     light = "lotus"
    --                 },
    --             })
    --
    --             -- setup must be called before loading
    --             vim.cmd("colorscheme kanagawa")
    --         end
    --     },
}
