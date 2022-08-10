--[[ init.lua ]]

require('impatient')

-- IMPORTS
 require('vars') 	-- Variables
 require('opts')	-- Options
 require('keybindings')	-- Keymaps
 require('plugins')	-- Plugins

 -- PLUGINS
require('lspconfig').csharp_ls.setup{}

-- PLUGINS configuration
require('treesitter-config')
require('lualine-config')
require('bufferline-config')
require('nvim-tree-config')
require('nvim-autopairs-config')
require('which-key-config')
require('telescope-config')
