return {
  {
    "easymotion/vim-easymotion",
    event = "VeryLazy",
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
    event = "VeryLazy",
  },
}
