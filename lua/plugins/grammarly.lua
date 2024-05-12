return {
  "znck/grammarly",
  config = function()
    require("lspconfig").grammarly.setup {
      on_attach = function(client, bufnr)
        -- LaTeX 파일에만 Grammarly LSP 활성화
        if vim.bo[bufnr].filetype == "tex" then client.resolved_capabilities.document_formatting = true end
      end,
      filetypes = { "markdown", "tex", "text" }, -- LaTeX 파일에서 Grammarly LSP를 활성화
      -- 추가 설정이 필요한 경우 여기에 작성
    }
  end,
}
