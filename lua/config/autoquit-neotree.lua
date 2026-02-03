vim.api.nvim_create_autocmd('BufEnter', {
	callback = function()
		local wins = vim.api.nvim_list_wins()
		if #wins == 1 then
			local buf = vim.api.nvim_win_get_buf(wins[1])
			if vim.bo[buf].filetype == 'neo-tree' then
				vim.cmd('quit')
			end
		end
	end,
})

