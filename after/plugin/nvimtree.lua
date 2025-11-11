local api = require('nvim-tree.api')

vim.keymap.set('n', '<leader>e', api.tree.toggle)

-- empty setup using defaults
require("nvim-tree").setup({
	filters = {
		git_ignored = false,
	},
})
