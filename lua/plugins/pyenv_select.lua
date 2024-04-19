return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  config = function()
    require("venv-selector").setup {
      -- search = false,
      -- search_workspace = false,
      -- search_venv_managers = true,
      -- dap_enabled = false,
      -- notify_user_on_activate = true,
      -- pyenv_path = "/home/xxx/.pyenv/versions",
      anaconda_base_path = "/opt/homebrew/Caskroom/miniforge/base",
      anaconda_envs_path = "/opt/homebrew/Caskroom/miniforge/base/envs",
    }
  end,
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
  },
  event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  -- keys = {
  --   -- Keymap to open VenvSelector to pick a venv.
  --   { "<leader>vs", "<cmd>VenvSelect<cr>" },
  --   -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  --   { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
  -- },
}
