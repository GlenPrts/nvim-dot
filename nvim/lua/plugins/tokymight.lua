return {
    {
      "folke/tokyonight.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lualine/lualine.nvim",
        "utilyre/barbecue.nvim",
        "SmiteshP/nvim-navic"
      },
      opts = { style = "storm" },
      config = function()
        vim.cmd[[colorscheme tokyonight-storm]]
        require('lualine').setup({
          options = {
              theme = 'tokyonight'
          }
        })
        require('barbecue').setup {
          theme = 'tokyonight',
        }
      end,
    },
  }
