require("keymappings")
require("plugins")
require("settings")
require("treesitter")
require("nvimtree")
require("compe-config")
require("lsp")
require("telescope-config")
require("lspkind-settings")

require('nvim-autopairs').setup()
require("presence"):setup({
	enable_line_number = true,
})

vim.cmd("source ~/.config/nvim/airline.vim")
vim.cmd("source ~/.config/nvim/terminal.vim")
vim.cmd("filetype plugin indent on")
vim.cmd("autocmd BufWritePre *.js Neoformat prettier")
vim.cmd("autocmd BufWritePre *.py Neoformat autopep8")
vim.cmd("autocmd BufWritePre *.rs Neoformat rustfmt")

local colorscheme = require('base16-colorscheme')

colorscheme.setup('gruvbox-dark-hard')
