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
}


