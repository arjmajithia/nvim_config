vim.api.nvim_create_user_command('Q', 'q!', {})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- paste to clipboard
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>Y", "\"+P")

-- delete to clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>me", ":%s/\\s\\+$<CR>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>rm", ":call delete(expand('%')) | bdelete!<CR>", { silent = true })

vim.keymap.set("i", "<C-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<C-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<C-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<C-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
