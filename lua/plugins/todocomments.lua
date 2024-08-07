return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup {} end,
    event = "User AstroFile",
  },
  {
    "danymat/neogen",
    config = true,
    event = "User AstroFile",
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
}
