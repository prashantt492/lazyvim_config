-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd([[


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" For pc
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'

" For android
" let g:vimtex_compile_method='tectonic'

let g:vimtex_quickfix_mode=0

let g:vimtex_syntax_enabled = 0
let g:vimtex_syntax_conceal_disable = 1


let g:tex_conceal='abdmg'

inoremap <C-d> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-d> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

]])

vim.opt.wrap = true
vim.opt.whichwrap = "lh"
vim.opt.conceallevel = 2
vim.g.maplocalleader = ","

vim.api.nvim_set_keymap("i", "<C-y>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-y>", "<Plug>luasnip-next-choice", {})
