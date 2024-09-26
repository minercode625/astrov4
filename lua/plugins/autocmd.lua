vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.tex", "*.txt", "*.md", "*.norg" },
  command = "set wrap linebreak noautoindent",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua", "c", "cpp" }, -- disable spellchecking for these filetypes
  command = "setlocal nospell",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "matlab", "python", "c", "cpp" },
  command = "setlocal tabstop=4 shiftwidth=4 expandtab",
})

if vim.fn.has "mac" == 1 and vim.fn.filereadable "/usr/local/lib/libInputSourceSwitcher.dylib" == 1 then
  vim.g.XkbSwitchEnabled = 1
  vim.g.XkbSwitchLib = "/usr/local/lib/libInputSourceSwitcher.dylib"
end

return {}
