require("config.lazy")
require("config.lsp")

require("config.keybinds")
require("config.flags")
require("config.autoquit-neotree")

require("config.sessions")
-- Theme
-- vim.cmd.colorscheme("gruvbox")
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none"})
vim.api.nvim_set_hl(0, 'LineNr', { bg='none', fg='#292929'})

-- Auto update
local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("VimEnter", {
	group = augroup("autoupdate"),
	callback = function()
			if require("lazy.status").has_updates then
					require("lazy").update({ show = false, })
			end
	end,
})
