-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd([[

set wrap
set whichwrap=lh

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

let g:vimtex_syntax_enabled = 0
let g:vimtex_syntax_conceal_disable = 1


set conceallevel=2
let g:tex_conceal='abdmg'

let maplocalleader = ","
inoremap <C-d> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-d> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

]])

vim.api.nvim_set_keymap("i", "<C-y>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-y>", "<Plug>luasnip-next-choice", {})

-- hop.nvim keybindings
-- local hop = require('hop')
-- local directions = require('hop.hint').HintDirection
-- vim.keymap.set('n', 'f', function()
--   hop.hint_words()
-- end, {remap=true})
-- vim.keymap.set('n', 'F', function()
--   hop.hint_char2()
-- end, {remap=true})
-- vim.keymap.set('n', 't', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
-- vim.keymap.set('n', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})
