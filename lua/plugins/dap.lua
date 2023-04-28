if true then return {} end
return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint" },
      { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", desc = "Continue" },
      { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", desc = "Step Into" },
      { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", desc = "Step Over" },
      { "<leader>du", "<cmd>lua require'dap'.step_out()<cr>", desc = "Step Out" },
      { "<leader>dr", "<cmd>lua require'dap'.repl.open()<cr>", desc = "Open REPL" },
      { "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", desc = "Run Last" },
      { "<leader>ds", "<cmd>lua require'dap'.close()<cr>", desc = "Stop" },
      { "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint" },
    },

    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
    },

    config = function()
      local dap = require("dap")
      -- dap for cpp
      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          -- CHANGE THIS to your path!
          command = "codelldb",
          args = { "--port", "${port}" },
          -- On windows you may have to uncomment this:
          -- detached = false,
        },
      }
      dap.configurations.cpp = {
        {
          name = "Launch",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
          -- runInTerminal = true,
        },
      }
      -- reuse configuration for c and rust
      dap.configurations.c = dap.configurations.cpp
      dap.configurations.rust = dap.configurations.cpp

      -- Define your new icons
      vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_define("DapStopped", { text = "", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_define("DapLogPoint", { text = "", texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_define("DapFrame", { text = "", texthl = "", linehl = "", numhl = "" })
      -- highlight
    end,
  },
  {
    --nvim-dap-ui
    "rcarriga/nvim-dap-ui",
    keys = {
      { "<leader>dv", "<cmd>lua require'dapui'.toggle()<cr>", desc = "Toggle Dap UI" },
      { "<leader>de", "<cmd>lua require'dapui'.eval()<cr>", desc = "Evaluate An Expr" },
      -- { "<leader>da", "<cmd>lua require'dapui'", desc = "Evaluate An Expr" },
    },
    -- lazy = true,
    opts = {},
    added = function()
      vim.keymap.set({ "n", "v" }, "<leader>de", "<cmd>lua require'dapui'.eval()<cr>", { desc = "Evaluate An Expr" })
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = true,
    opts = {},
  },
}
