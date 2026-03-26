local keymap = function(lhs, rhs, desc)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- Helper function to cycle wrap modes
function toggle_wrap()
    if not vim.wo.wrap then
        -- Mode 1: Standard Wrap (on)
        vim.wo.wrap = true
        vim.wo.linebreak = false
        print("Wrap: On (Standard)")
    elseif vim.wo.wrap and not vim.wo.linebreak then
        -- Mode 2: Linebreak (wrap at words)
        vim.wo.wrap = true
        vim.wo.linebreak = true
        print("Wrap: On (Linebreak/Word)")
    else
        -- Mode 3: No Wrap
        vim.wo.wrap = false
        vim.wo.linebreak = false
        print("Wrap: Off")
    end
end

function toggle_expandtab()
    if vim.bo.expandtab then
        -- Mode NoExpandTab
        vim.bo.expandtab = false
        print("TAB: Tabulators")
    else
        -- Mode ExpandTab
        vim.bo.expandtab = true
        print("TAB: Spaces")
    end
end

local builtin = require("telescope.builtin")
function telescope()
  local pickers = {
    { name = "Find Files", fn = builtin.find_files },
    { name = "Live Grep", fn = builtin.live_grep },
    { name = "Buffers", fn = builtin.buffers },
  }

  vim.ui.select(pickers, {
    prompt = "Select Telescope Picker",
    format_item = function(item)
      return item.name
    end,
  }, function(choice)
    if choice then
      choice.fn()
    end
  end)
end

keymap('?', ':WhichKey<CR>')

keymap('<M-w>', ':lua toggle_wrap()<CR>', "Change wrapping mode")
keymap('<C-f>', ':lua telescope()<CR>', "Telescope menu")

-- keymap('<M-w>', ':set wrap!<CR>')

-- uncomment to train use of hjkl
-- keymap('<Up>', '<Nop>')
-- keymap('<Down>', '<Nop>')
-- keymap('<Left>', '<Nop>')
-- keymap('<Right>', '<Nop>')

keymap('<S-Up>', ':m-2<CR>', "Move current line up")
keymap('<S-Down>', ':m+<CR>', "Move current line down")
keymap('<S-L>', '3zl', "Move view right")
keymap('<S-H>', '3zh', "Move view left")


-- uncomment below to use neotree instead
-- keymap('<M-e>', ':Neotree toggle=true<CR>')
keymap('<M-e>', ':NnnPicker<CR>', "Open file picker")

keymap('<M-L>', ':set hlsearch!<CR>', "Remove highlight")
keymap('<M-t>', ':lua toggle_expandtab()<CR>', "Set Tabs/Spaces")

keymap('<C-n>', ':set relativenumber!<CR>', "Toggle relative line number")

-- Lazygit 
keymap('<C-g>', ':LazyGit<CR>', "Lazygit")

-- BarBar
-- meta key = alt
keymap('<M-Right>', ':BufferNext<CR>', "Tab Next")
keymap('<M-Left>', ':BufferPrevious<CR>', "Tab Previous")

keymap('<M-S-Right>', ':BufferMoveNext<CR>', "Tab Move Right")
keymap('<M-S-Left>', ':BufferMovePrevious<CR>', "Tab Move Left")

keymap('<M-x>', ':BufferClose<CR>', "Tab Close")
keymap('<M-n>', ':tabnew<CR>', "Tab New")
keymap('<M-p>', ':BufferPin<CR>', "Tab Pin")
keymap('<M-X>', ':BufferRestore<CR>', "Tab Restore")
keymap('<M->>', ':BufferCloseBuffersRight<CR>', "Tab Close All Right")
keymap('<M-lt>', ':BufferCloseBuffersLeft<CR>', "Tab Close All Left")

-- Move between splits with alt direction
keymap('<C-Up>', ':wincmd k<CR>', "Move cursor to upper split")
keymap('<C-Down>', ':wincmd j<CR>', "Move cursor to lower split")
keymap('<C-Left>', ':wincmd h<CR>', "Move cursor to left split")
keymap('<C-Right>', ':wincmd l<CR>', "Move cursor to right split")

-- Create the splits
keymap('<M-Bslash>',':vsplit<CR>', "Split vertical")
keymap('<M-->',':split<CR>', "Split horizontal")

-- Move the splits themselves
keymap('<C-S-Up>', '<C-w>K', "Split move up")
keymap('<C-S-Left>', '<C-w>H', "Split move left")
keymap('<C-S-Down>', '<C-w>J', "Split move down")
keymap('<C-S-Right>', '<C-w>L', "Split move right") 

-- Width managment
keymap('<M-[>', '5<C-w><',"Split decrease width") -- decrease width
keymap('<M-]>', '5<C-w>>', "Split increase width") -- increase width
keymap('<M-{>', '5<C-w>-', "Split decrease height") -- decrease height
keymap('<M-}>', '5<C-w>+', "Split increase height") -- increase height

