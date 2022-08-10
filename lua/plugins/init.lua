-- [[ plug.lua ]]

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- [[ Plugin Go Here ]]
	use 'wbthomason/packer.nvim'

	use {
		'kyazdani42/nvim-tree.lua',						-- filesystem navigation
		requires = 'kyazdani42/nvim-web-devicons'		-- filesystem icons
	}

	-- [[ Theme ]]
	use { 'mhinz/vim-startify' }						-- start screen
	use { 'DanilaMihailov/beacon.nvim' }				-- cursor jump
	use {												-- statusline
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons',
					opt = true }
	}
	use { 'Mofiqul/dracula.nvim' }						-- colorscheme

	-- [[ Dev ]]
	use {												-- fuzzy finder
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim'} }
	}
	use { 'majutsushi/tagbar' }							-- code structure
	use { 'Yggdroot/indentLine' }						-- see indentation
	use { 'tpope/vim-fugitive' }						-- git integration
	use { 'junegunn/gv.vim' }							-- commit history
	use { 'windwp/nvim-autopairs' }						-- auto close brackets, etc.

	use { 'neovim/nvim-lspconfig' }							-- config for nvim lsp

	use { 'lewis6991/impatient.nvim' }						-- speed up startup time
	use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"} -- treesitter, syntax highlighting
	use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
	use { 'windwp/nvim-ts-autotag' }
	use { 'p00f/nvim-ts-rainbow' }
    use { 'folke/which-key.nvim',
       config = function()
	        require("which-key").setup{}
		end
		}
end)
