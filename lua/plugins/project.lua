return {
  {
    "Civitasv/cmake-tools.nvim",
    lazy = true,
    keys = {
      { "<leader>mb", "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
      { "<leader>mc", "<cmd>CMakeClean<cr>", desc = "CMake Clean" },
      -- { "<leader>md", "<cmd>CMakeDebug<cr>", desc = "CMake Debug" },
      { "<leader>mg", "<cmd>CMakeGenerate<cr>", desc = "CMake Generate" },
      { "<leader>mi", "<cmd>CMakeInstall<cr>", desc = "CMake Install" },
      { "<leader>mo", "<cmd>CMakeOpen<cr>", desc = "CMake Open" },
      { "<leader>mr", "<cmd>CMakeRun<cr>", desc = "CMake Run" },
      { "<leader>md", "<cmd>CMakeStop<cr>", desc = "CMake Stop" },
      { "<leader>mm", "<cmd>CMakeSelectBuildType<cr>", desc = "Select Build Mode" },
      { "<leader>mt", "<cmd>CMakeSelectBuildTarget<cr>", desc = "Select Build Target" },
      { "<leader>mk", "<cmd>CMakeSelectKit<cr>", desc = "Select Kit" },
    },
    config = function()
      require("cmake-tools").setup({
        cmake_command = "cmake",
        cmake_build_directory = "build",
        -- cmake_build_directory_prefix = "cmake_build_", -- when cmake_build_directory is "", this option will be activated
        cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
        cmake_build_options = {},
        cmake_console_size = 10, -- cmake output window height
        cmake_console_position = "belowright", -- "belowright", "aboveleft", ...
        cmake_show_console = "always", -- "always", "only_on_error"
        cmake_dap_configuration = { name = "cpp", type = "codelldb", request = "launch" }, -- dap configuration, optional
        cmake_variants_message = {
          short = { show = true },
          long = { show = true, max_length = 40 },
        },
      })
    end,
  },
  --code_runner.nvim
  {
    "CRAG666/code_runner.nvim",
    keys = {
      { "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
      { "<leader>rc", "<cmd>RunClose<cr>", desc = "Run Close" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      filetype = {
        python = "python3 -u",
        cpp = "cd $dir && g++ -g -std=c++17 $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        rust = "cargo run",
      },
    },
  },
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
      -- { "<leader>dv", "<cmd>lua require'dap'.ui.variables()<cr>", desc = "Variables" },
      -- { "<leader>df", "<cmd>lua require'dap'.ui.frames()<cr>", desc = "Frames" },
      -- { "<leader>dw", "<cmd>lua require'dap'.ui.watches()<cr>", desc = "Watches" },
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
