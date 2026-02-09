return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	event = "VeryLazy",
	build = ":TSUpdate",
	config = require("config.treesitter")
}
