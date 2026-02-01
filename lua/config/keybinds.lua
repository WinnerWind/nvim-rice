local keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

keymap('<S-Up>', ':m-2<CR>')
keymap('<S-Down>', ':m+<CR>')

