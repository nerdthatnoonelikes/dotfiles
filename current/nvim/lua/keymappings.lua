-- Set leader key
vim.g.mapleader = " "

-- NvimTree related keymappings
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", {})

-- Easier movement between splits
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', {noremap = true})

-- Telescope related keymappings 
vim.api.nvim_set_keymap("n", "<leader>f", ":Telescope find_files<CR>", {})
vim.api.nvim_set_keymap(
    "n",
    "<Leader>fp",
    [[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]],
    {}
)

-- Copy things to clipboard
vim.api.nvim_set_keymap("v", "<leader>j", ":!xclip -f -sel clip<CR>", {})

-- Remap <esc>
vim.api.nvim_set_keymap("i", "jk", "<esc>", {})
