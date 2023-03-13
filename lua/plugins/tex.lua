return {
  {
    "lervag/vimtex",
    opt = false,
    lazy = false,
    config = function()
      -- vim.opt.conceallevel = 1
      -- vim.g.tex_conceal = "abdmg"
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_format_enabled = 0
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_matchparen_enabled = 0
    end,
    -- enabled = false,
  },
  {
    "donRaphaco/neotex",
    keys = {
      { "<leader>nn", "<cmd>NeoTexOn<CR>", desc = "Continually compile tex" },
      { "<leader>nk", "<cmd>NeoTexOff<CR>", desc = "Stop compile tex" },
    },
    config = function()
      vim.g.neotex_pdflatex_alternative = "xelatex"
      vim.g.neotex_delay = 200
      vim.g.neotex_pdflatex_add_options = "-output-driver='xdvipdfmx -z3'"
    end,
    ft = "tex",
  },
  {
    "andymass/vim-matchup",
    setup = function()
      -- may set any options here
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
      -- vim.g.matchup_override_vimtex = 1
      -- vim.g.matchup_matchparen_deferred = 1
    end,
  },
}
