local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
-- Packer can manage itself
use "wbthomason/packer.nvim"

-- Colorscheme
use "RRethy/nvim-base16"

-- Language stuff
use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
use "windwp/nvim-autopairs"
use "neovim/nvim-lspconfig"
use "onsails/lspkind-nvim"
use "sbdchd/neoformat"

-- Other
use "kyazdani42/nvim-web-devicons"
use "kyazdani42/nvim-tree.lua"
use "hrsh7th/nvim-compe"
use "vim-airline/vim-airline"
use "vim-airline/vim-airline-themes"
use "airblade/vim-gitgutter"
use 'andweeb/presence.nvim'
use {"nerdthatnoonelikes/nvim-owoifier", run=":UpdateRemotePlugins"}

-- Telescope
use {"nvim-lua/popup.nvim"}
use {"nvim-lua/plenary.nvim"}
use {"nvim-telescope/telescope.nvim"}
use {"nvim-telescope/telescope-fzy-native.nvim"}

end)
