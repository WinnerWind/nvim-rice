return {
	-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
	-- animation = true,
	-- insert_at_start = true,
	-- …etc.
	sidebar_filetypes = {
		 ['neo-tree'] = {
			event = 'BufWipeout',
		},
	},
	icons = {
		preset = 'default',
		buffer_index = 'superscript',
			diagnostics = {
				[vim.diagnostic.severity.ERROR] = {enabled = true, icon},
				[vim.diagnostic.severity.WARN] = {enabled = true},
				[vim.diagnostic.severity.INFO] = {enabled = false},
				[vim.diagnostic.severity.HINT] = {enabled = false},
			},
			gitsigns = {
				added = {enabled = true},
				changed = {enabled = true},
				deleted = {enabled = true},
			},
	},
}


