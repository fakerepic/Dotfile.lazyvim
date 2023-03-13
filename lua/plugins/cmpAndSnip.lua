return {
  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },

  {
    "iurimateus/luasnip-latex-snippets.nvim",
    -- branch = "markdown",
    -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
    -- using treesitter.
    -- requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
    config = function()
      -- require("luasnip-latex-snippets").setup({ use_treesitter = true })
      require("luasnip-latex-snippets").setup()
      -- or setup({ use_treesitter = true })
    end,
    -- ft = { "tex", "markdown" },
    ft = "tex",
  },

  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip").setup({
        load_ft_func = require("luasnip.extras.filetype_functions").extend_load_ft({
          markdown = { "latex", "tex" },
        }),
      })
    end,
  },

  -- Use <tab> for completion and snippets (supertab)
  -- -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  -- {
  --   "L3MON4D3/LuaSnip",
  --   keys = function()
  --     return {}
  --   end,
  -- },
  -- then: setup supertab in cmp
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-emoji",
  --   },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local has_words_before = function()
  --       unpack = unpack or table.unpack
  --       local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  --       return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  --     end
  --
  --     local luasnip = require("luasnip")
  --     local cmp = require("cmp")
  --
  --     opts.mapping = vim.tbl_extend("force", opts.mapping, {
  --       ["<Tab>"] = cmp.mapping(function(fallback)
  --         if cmp.visible() then
  --           cmp.select_next_item()
  --           -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
  --           -- they way you will only jump inside the snippet region
  --         elseif luasnip.expand_or_jumpable() then
  --           luasnip.expand_or_jump()
  --         elseif has_words_before() then
  --           cmp.complete()
  --         else
  --           fallback()
  --         end
  --       end, { "i", "s" }),
  --       ["<S-Tab>"] = cmp.mapping(function(fallback)
  --         if cmp.visible() then
  --           cmp.select_prev_item()
  --         elseif luasnip.jumpable(-1) then
  --           luasnip.jump(-1)
  --         else
  --           fallback()
  --         end
  --       end, { "i", "s" }),
  --     })
  --   end,
  -- },

  -- add latex snippets for LuaSnip
}
