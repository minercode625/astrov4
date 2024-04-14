return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          [":"] = { "<cmd>FineCmdline<CR>" },
          ["<leader>tc"] = { ":!code .<cr><cr>" },
          ["/"] = { "<Plug>(easymotion-sn)" },
          ["n"] = { "<Plug>(easymotion-next)" },
          ["N"] = { "<Plug>(easymotion-prev)" },
          ["w"] = { "<cmd>lua require('spider').motion('w')<CR>" },
          ["e"] = { "<cmd>lua require('spider').motion('e')<CR>" },
          ["b"] = { "<cmd>lua require('spider').motion('b')<CR>" },
          ["<leader>sa"] = { "<cmd>lua require('spectre').open()<CR>" },
          ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>" },
          ["<leader>s"] = { "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader>T"] = { "<cmd>TroubleToggle<cr>", desc = "Trouble Toggle" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
