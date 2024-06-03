return {
  "znck/grammarly",
  config = function()
    require("lspconfig").grammarly.setup {
      on_attach = function(client, bufnr)
        if vim.bo[bufnr].filetype == "tex" then client.resolved_capabilities.document_formatting = true end
      end,
      filetypes = { "markdown", "tex", "text" },
    }
  end,
}
