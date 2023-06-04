return  {
  "prashantt492/luasnip-latex-snippets.nvim",
  -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
  -- using treesitter.
  dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
  config = function()
    require'luasnip-latex-snippets'.setup({use_treesitter = true})
--     setup({ use_treesitter = true })
  end,
  -- treesitter is required for markdown
  ft = { "tex", "markdown" },
  }

