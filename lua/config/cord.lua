return {
	editor = {
		tooltip = 'Are you seriously that bored?',
	},
	display = {
		theme = 'void',
	},
	text = {
		workspace = function(opts) return "on "..opts.cursor_line..":"..opts.cursor_char end,
	},
}
