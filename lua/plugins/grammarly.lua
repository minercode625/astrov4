return {
  "znck/grammarly",
  config = function()
    require("lspconfig").grammarly.setup {
      on_attach = function(client, bufnr)
        if vim.bo[bufnr].filetype == "tex" then client.server_capabilities.documentFormattingProvider = true end
      end,
      filetypes = { "markdown", "tex", "text" },
    }
  end,
}
