---@brief
---
--- https://github.com/godotengine/godot
---
--- Language server for GDScript, used by Godot Engine.

local port = os.getenv 'GDScript_Port' or '6005'
local cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port))

---@type vim.lsp.Config
return {
  cmd = cmd,
  filetypes = { 'gd', 'gdscript', 'gdscript3' },
  root_markers = { 'project.godot', '.git' },
}

local lspconfig = require('lspconfig')

lspconfig.gdscript.setup({
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, silent = true }
    
    -- Regular LSP Hover (Brief docs)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- Extended Docs (Full Godot Manual for word under cursor)
    vim.keymap.set("n", "<leader>gd", ":GodotDoc <C-R><C-W><CR>", opts)
    
    -- Search Godot Docs (Manual input)
    vim.keymap.set("n", "<leader>gs", ":GodotDoc ", { buffer = bufnr })
  end,
})
