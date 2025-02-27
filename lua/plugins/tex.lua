return {
  {
    "znck/grammarly",
    config = function()
      require("lspconfig").grammarly.setup {
        on_attach = function(client, bufnr)
          if vim.bo[bufnr].filetype == "tex" then client.server_capabilities.documentFormattingProvider = true end
        end,
        filetypes = { "markdown", "tex", "text" },
      }
    end,
  },
  {
    "jhofscheier/nvim-texis",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "lervag/vimtex",
    event = "BufEnter",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_indent_enabled = 0
      vim.g.vimtex_quickfix_mode = 0
    end,
  },
}
