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

local notify = require("notify")
vim.notify = notify

local severity_map = {
  [vim.diagnostic.severity.ERROR] = vim.log.levels.ERROR,
  [vim.diagnostic.severity.WARN]  = vim.log.levels.WARN,
  [vim.diagnostic.severity.INFO]  = vim.log.levels.INFO,
  [vim.diagnostic.severity.HINT]  = vim.log.levels.DEBUG,
}

vim.diagnostic.handlers.notify = {
  show = function(_, bufnr, diagnostics, _)
    for _, d in ipairs(diagnostics) do
      notify(string.format("%d:%d %s", d.lnum+1, (d.col or 0)+1, d.message), severity_map[d.severity], {
        title = "LSP",
      })
    end
  end,
}


vim.o.updatetime = 300
