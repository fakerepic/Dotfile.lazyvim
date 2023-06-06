return {
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
  },
  {
    "lervag/vimtex",
    -- opt = false,
    -- lazy = false,
    init = function()
      -- vim.opt.conceallevel = 1
      -- vim.g.tex_conceal = "abdmg"
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_syntax_enabled = 0

      -- vim.g.vimtex_view_method = "texshop"
      -- vim.g.vimtex_view_texshop_sync = 1
      -- not work

      -- vim.g.vimtex_view_general_viewer = "open -g -a texshop" --defaults write TeXShop BringPdfFrontOnAutomaticUpdate NO

      vim.g.vimtex_format_enabled = 0
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_matchparen_enabled = 0
    end,
  },
  {
    "donRaphaco/neotex",
    keys = {
      {
        "<leader>nn",
        function()
          vim.cmd("NeoTexOn")
          vim.notify("Continually compile tex", vim.log.levels.INFO, { title = "NeoTex", timeout = 1000 })
        end,
        desc = "Continually compile tex",
      },
      {
        "<leader>nk",
        function()
          vim.cmd("NeoTexOff")
          vim.notify("Stopped compiling tex", vim.log.levels.INFO, { title = "NeoTex", timeout = 1000 })
        end,
        desc = "Stop compile tex",
      },
    },
    init = function()
      -- vim.g.neotex_pdflatex_alternative = "xelatex"
      -- vim.g.neotex_pdflatex_add_options = "-output-driver='xdvipdfmx -z3'"
      vim.g.neotex_delay = 200
    end,
    ft = "tex",
  },
  {
    "andymass/vim-matchup",
    init = function()
      -- may set any options here
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
      vim.g.matchup_override_vimtex = 1
      vim.g.matchup_matchparen_deferred = 1
    end,
  },
}
