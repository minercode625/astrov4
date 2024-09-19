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
}
