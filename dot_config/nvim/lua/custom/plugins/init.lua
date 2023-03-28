local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  ["folke/which-key.nvim"] = { disable = false },

  [  "ahmedkhalf/project.nvim"] ={
  config = function()
    require("project_nvim").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    }
  end
},

  -- ["nvim-neorg/neorg"] ={
  --   ft = "norg",
  --   run = ":Neorg sync-parsers",
  --   after = "nvim-treesitter",
  --   config = function()
  --     require('neorg').setup {
  --       load = {
  --         ["core.defaults"] = {},
  --         ["core.norg.dirman"] = {
  --           config = {
  --             workspaces = {
  --               work = "~/Document/Notes/work",
  --               home = "~/Document/Notes/home",
  --             }
  --           }
  --         }
  --   }
  --       }
  --   end,
  --   requires = "nvim-lua/plenary.nvim"
  -- },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },


  -- Install a plugin
  -- ["max397574/better-escape.nvim"] = {
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
