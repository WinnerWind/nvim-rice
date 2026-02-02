local keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

keymap('<S-Up>', ':m-2<CR>')
keymap('<S-Down>', ':m+<CR>')

-- BarBar
-- meta key = alt
keymap('<M-Right>', ':tabnext<CR>')
keymap('<M-Left>', ':tabprevious<CR>')
keymap('<M-x>', ':BufferClose<CR>')
keymap('<M-n>', ':tabnew<CR>')
keymap('<M-p>', ':BufferPin<CR>')
keymap('<M-X>', ':BufferRestore<CR>')
keymap('<M->>', ':BufferCloseBuffersRight<CR>')
keymap('<M-lt>', ':BufferCloseBuffersLeft<CR>')

-- Move between splits with alt direction
keymap('<C-S-Up>', ':wincmd k<CR>')
keymap('<C-S-Down>', ':wincmd j<CR>')
keymap('<C-S-Left>', ':wincmd h<CR>')
keymap('<C-S-Right>', ':wincmd l<CR>')

keymap('<M-Bslash>',':vsplit<CR>')
keymap('<M-->',':split<CR>')

keymap('<C-Up>', '<C-w>K')
keymap('<C-Left>', '<C-w>H')
keymap('<C-Down>', '<C-w>J')
keymap('<C-Right>', '<C-w>L') 

keymap('<M-[>', '<C-w><') -- decrease width
keymap('<M-]>', '<C-w>>') -- increase width
keymap('<M-{>', '<C-w>-') -- decrease height
keymap('<M-}>', '<C-w>+') -- increase height

