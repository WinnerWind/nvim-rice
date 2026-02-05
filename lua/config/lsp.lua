vim.lsp.enable("gdscript")
vim.lsp.enable("basedpyright")

local severity = vim.diagnostic.severity

vim.diagnostic.config({
	signs = {
		text = {
			[severity.ERROR] = " ",
			[severity.WARN] = " ",
			[severity.HINT] = "󰠠 ",
			[severity.INFO] = " ",
		},
	},
	float = {
		border = "rounded",
		source = "if_many",
	},
})

vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, {
			focus = false,
			scope = "line",
		})
	end,
})

vim.o.updatetime = 0
