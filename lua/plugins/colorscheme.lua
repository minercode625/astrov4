return {
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    config = function()
      require("tokyonight").setup {
        style = "moon",
        light_style = "day",
      }
    end,
  },
  {
    "Everblush/nvim",
    name = "everblush",
    event = "VeryLazy",
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup {
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,
      }
    end,
  },
}
