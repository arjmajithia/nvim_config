require('telescope').setup {
	defaults = {
		file_ignore_patterns = { ".ogg", ".ttf", ".wav", ".jpg", ".png", ".vcxproj", "^./.git/", "^node_modules/", "3p", "bin", "Debug"}
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>se', builtin.find_files, {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
