local nnoremap = function(shortcut, result)
  vim.keymap.set('n', shortcut, result, { noremap = true, silent = true })
end

local vnoremap = function(shortcut, result)
  vim.keymap.set('v', shortcut, result, { noremap = true, silent = true })
end

-- Navigate vim panes better
nnoremap('<c-k>', ':wincmd k<CR>')
nnoremap('<c-j>', ':wincmd j<CR>')
nnoremap('<c-h>', ':wincmd h<CR>')
nnoremap('<c-l>', ':wincmd l<CR>')

nnoremap('<c-]>', ':bnext<CR>')
nnoremap('<c-[>', ':bprevious<CR>')

vnoremap('<', '<gv')
vnoremap('>', '>gv')

nnoremap('<leader><esc>', ':nohlsearch<CR>')
nnoremap('<leader>q', ':q<CR>')
