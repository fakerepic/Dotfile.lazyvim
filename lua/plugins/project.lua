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
        mma = "cd $dir && wolframscript -f $fileName",
        make = "cd $dir && make",
        typst = "cd $dir && (open -a Skim $(basename $fileName .typ).pdf || typst $fileName)",
      },
    },
  },
}
