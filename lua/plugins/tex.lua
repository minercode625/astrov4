return {
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
