vim.opt.listchars = {
	tab = "≫ ",
	trail = "·",
	extends = "›",
	precedes = "‹",
	nbsp = "␣",
}

-- vim.cmd([[set notermguicolors]])
vim.opt.shellcmdflag = "-ic"
vim.opt.number = true

-- vim.cmd([[set noexpandtab]])
vim.opt.expandtab = false
vim.opt.list = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- disable search highlight in neotree
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'neo-tree',
	callback = function()
		vim.opt_local.hlsearch = false
		vim.opt_local.incsearch = false
	end,
})

