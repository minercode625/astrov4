return {
  "CRAG666/code_runner.nvim",
  event = "BufRead",
  -- dependencies = "nvim-lua/plenary.nvim",
  cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
  config = function()
    require("code_runner").setup {
      filetype = {
        cpp = {
          "cd $dir &&",
          "clang++ -g -arch arm64 *.cpp -o $fileNameWithoutExt &&",
          "./$fileNameWithoutExt",
        },
      },
    }
  end,
}
