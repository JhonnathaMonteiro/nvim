if not pcall(require, "kanagawa") then
  return
end

require("kanagawa").setup {
  compile = false,        -- enable compiling the colorscheme
  undercurl = true,       -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = true,               -- do not set background color
  dimInactive = false,               -- dim inactive window `:h hl-NormalNC`
  terminalColors = true,             -- define vim.g.terminal_color_{0,17}
  overrides = function(colors)       -- add/modify highlights
    return {}
  end,
  theme = "wave",          -- Load "wave" theme when 'background' option is not set
  background = {           -- map the value of 'background' option to a theme
    dark = "wave",         -- try "dragon" !
    light = "lotus"
  },
  colors = {
    palette = {
      -- change all usages of these colors
      sumiInk3 = "#16161D",
      -- fujiWhite = "#FFFFFF",
    },
    theme = {
      all = {
        ui = {
          bg_gutter = "none"
        }
      }
    }
  }
}

require("kanagawa").load("wave")
