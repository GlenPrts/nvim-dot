return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            -- windows
            {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
            },
            -- linux
            -- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        }
    },
    cmd = {
        "Telescope"
    },
    keys = {
      { '<leader>fr', "<cmd>lua require('telescope.builtin').oldfiles()<cr>" },
      { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers({ sort_mru = true })<cr>" },
      { "<leader>/",
          function()
              -- You can pass additional configuration to telescope to change theme, layout, etc.
              require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                  winblend = 10,
                  previewer = false,
              })
          end
      },
      { '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>" },
      { '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
      { '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>" },
      { '<leader>fp', "<cmd>lua require('telescope.builtin').builtin()<cr>" },
      { '<leader>fm', "<cmd>lua require('telescope.builtin').marks()<cr>" },
      { '<leader>qf', "<cmd>lua require('telescope.builtin').quickfix()<cr>" },
      { '<leader>km', "<cmd>lua require('telescope.builtin').keymaps()<cr>" },
      { '<c-p>',      "<cmd>lua require('telescope.builtin').commands()<cr>" },
  },
    config = function()
        require('telescope').setup {
            extensions = {
              fzf = {
                fuzzy = true,                    -- false will only do exact matching
                override_generic_sorter = true,  -- override the generic sorter
                override_file_sorter = true,     -- override the file sorter
                case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                                 -- the default case_mode is "smart_case"
              }
            }
          }
          -- To get fzf loaded and working with telescope, you need to call
          -- load_extension, somewhere after setup function:
          require('telescope').load_extension('fzf')
    end
}