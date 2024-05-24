return{
    {
        "dstein64/vim-startuptime",
        cond = not(vim.g.vscode),
        cmd = "StartupTime",
        config = function()
          vim.g.startuptime_tries = 10
        end,
    },
  }