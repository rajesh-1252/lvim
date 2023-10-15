lvim.plugins = {

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },
  { 'jose-elias-alvarez/typescript.nvim' },
  { "christoomey/vim-tmux-navigator" },
  { "tpope/vim-surround" },
  {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require('hop').setup()
    end
  },
  {
    'AckslD/nvim-trevJ.lua',
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set('n', '<leader>j', function()
        require('trevj').format_at_cursor()
      end)
    end,
  },
{
  "folke/todo-comments.nvim",
  event = "BufRead",
  config = function ()
    require('todo-comments').setup()
  end
}
}
