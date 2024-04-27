vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.tex", "*.txt" },
  command = "set wrap linebreak noautoindent",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua", "c", "cpp" }, -- disable spellchecking for these filetypes
  command = "setlocal nospell",
})

vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.h", "*.cpp", "*.c", "*.m" },
  command = "set tabstop=4",
})

return {}
