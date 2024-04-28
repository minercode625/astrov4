return {
  {
    "easymotion/vim-easymotion",
    event = "VeryLazy",
  },
  {
    "lewis6991/spellsitter.nvim",
    config = function() require("spellsitter").setup() end,
    event = "User AstroFile",
  },
  {
    "chrisgrieser/nvim-spider",
    event = "VeryLazy",
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufRead",
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "BufRead",
  },
}
