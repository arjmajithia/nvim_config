local ensure_packer = function ()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git','clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme packs 
  -- use ({ "ellisonleao/gruvbox.nvim", as = 'gruvbox', config = function() vim.cmd('colorscheme gruvbox') end})
  use ({ "folke/tokyonight.nvim", as = 'tokyonight' })

  -- telescope (fuzzy search) 
  use { "nvim-lua/plenary.nvim" }
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { {'nvim-lua/plenary.nvim'} } }

 -- treesitter
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use ( 'nvim-treesitter/playground')
  -- undotree 
  use { 'mbbill/undotree' }

  -- comments
  use { "terrortylor/nvim-comment" }

  -- custom status line 
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- diagrams 
  use { 'jbyuki/venn.nvim' }

  -- shellcheck
  use { 'itspriddle/vim-shellcheck' }

  -- context
  use { 'nvim-treesitter/nvim-treesitter-context' }

  -- homepage
  use{
	  "goolord/alpha-nvim",
	  requires = {"kyazdani42/nvim-web-devicons"},
	  config = "require('arjun.alpha')",
	  cmd = {
		  "Alpha",
		  "AlphaRedraw"
	  },
	  event="BufWinEnter"
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},

		  -- Autocompletion
          -- Installation
          {'L3MON4D3/LuaSnip'},
          {'hrsh7th/nvim-cmp',
              config = function ()
                  require'cmp'.setup {
                      snippet = {
                          expand = function(args)
                              require'luasnip'.lsp_expand(args.body)
                          end
                      },

                      sources = {
                          { name = 'luasnip' },
                      },
                  }
              end
          },
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
	  }
  }
end)
