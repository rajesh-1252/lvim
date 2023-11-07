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
  {
    'Mofiqul/vscode.nvim',
  },
  { 'styled-components/vim-styled-components' },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-ui" },
  -- { "kristijanhusak/vim-dadbod-completion" },
  --

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require('nvim-treesitter.configs').setup({

        autotag = {
          enable = true,
        }
      })
    end
  },
  { "mattn/emmet-vim" },
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
    config = function()
      require('todo-comments').setup()
    end
  },
}
