return {
  {
    "easymotion/vim-easymotion",
    event = "VeryLazy",
  },
  {
    "vhyrro/luarocks.nvim",
    opts = {
      luarocks_build_args = {
        "--with-lua-include=/usr/include",
      },
    },
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
