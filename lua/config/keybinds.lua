local keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

keymap('<S-Up>', ':m-2<CR>')
keymap('<S-Down>', ':m+<CR>')
keymap('<S-L>', '3zl')
keymap('<S-H>', '3zh')

keymap('<M-w>', ':set wrap!<CR>')

-- uncomment below to use neotree instead
-- keymap('<M-e>', ':Neotree toggle=true<CR>')
keymap('<M-e>', ':NnnPicker<CR>')

keymap('<M-L>', ':set hlsearch!<CR>')

keymap('<C-n>', ':set relativenumber!<CR>')

-- Lazygit 
keymap('<C-g>', ':LazyGit<CR>')

-- BarBar
-- meta key = alt
keymap('<M-Right>', ':BufferNext<CR>')
keymap('<M-Left>', ':BufferPrevious<CR>')

keymap('<M-S-Right>', ':BufferMoveNext<CR>')
keymap('<M-S-Left>', ':BufferMovePrevious<CR>')

keymap('<M-x>', ':BufferClose<CR>')
keymap('<M-n>', ':tabnew<CR>')
keymap('<M-p>', ':BufferPin<CR>')
keymap('<M-X>', ':BufferRestore<CR>')
keymap('<M->>', ':BufferCloseBuffersRight<CR>')
keymap('<M-lt>', ':BufferCloseBuffersLeft<CR>')

-- Move between splits with alt direction
keymap('<C-Up>', ':wincmd k<CR>')
keymap('<C-Down>', ':wincmd j<CR>')
keymap('<C-Left>', ':wincmd h<CR>')
keymap('<C-Right>', ':wincmd l<CR>')

-- Create the splits
keymap('<M-Bslash>',':vsplit<CR>')
keymap('<M-->',':split<CR>')

-- Move the splits themselves
keymap('<C-S-Up>', '<C-w>K')
keymap('<C-S-Left>', '<C-w>H')
keymap('<C-S-Down>', '<C-w>J')
keymap('<C-S-Right>', '<C-w>L') 

-- Width managment
keymap('<M-[>', '5<C-w><') -- decrease width
keymap('<M-]>', '5<C-w>>') -- increase width
keymap('<M-{>', '5<C-w>-') -- decrease height
keymap('<M-}>', '5<C-w>+') -- increase height

