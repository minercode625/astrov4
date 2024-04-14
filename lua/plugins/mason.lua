if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "prettier",
        "stylua",
        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "python", "codelldb" },
      handlers = {
        python = function(source_name)
          local dap = require "dap"

          -- dap.adapters.codelldb = {
          --   type = "executable",
          --   command = "/Users/wd_seo/.local/share/nvim/mason/bin/codelldb",
          --   name = "lldb",
          --   host = "127.0.0.1",
          --   port = 13000,
          -- }
          dap.adapters.cpp = {
            type = "executable",
            name = "codelldb", -- Updated name to match the adapter definition
            command = globals.dap.cpp.adapter.command,
          }

          -- C++ Configuration
          dap.configurations.cpp = {
            {
              name = "LCPP",
              type = "codelldb", -- Updated to use the correct adapter name
              request = "launch",
              program = "${file}",
              cwd = "${workspaceFolder}",
              stopOnEntry = false,
              args = {},
              runInTerminal = true,
            },
          }

          dap.adapters.python = {
            type = "executable",
            command = globals.dap.python.adapter.command,
            args = {
              "-m",
              "debugpy.adapter",
            },
          }

          dap.configurations.python = {
            {
              type = "python",
              request = "launch",
              name = "Launch file",
              program = "${file}", -- This configuration will launch the current file if used.
            },
          }
        end,
      },
    },
    event = "BufRead",
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       "python",
  --       -- add more arguments for adding more debuggers
  --     })
  --   end,
  -- },
}
