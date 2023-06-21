-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disabling treesitter highlighting for vimtex
-- require 'nvim-treesitter.configs'.setup {
--        highlight = {
--          enable = true,
--          disable = { "latex" },
--        },
-- more stuff here
-- }
-- LSP setups
require("lspconfig").texlab.setup({})
require("lspconfig").clangd.setup({})
