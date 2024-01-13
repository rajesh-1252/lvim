lvim.plugins = {

  -- {
  --   "ThePrimeagen/harpoon",
  -- },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end,   desc = "Flash" },
      -- { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o",               function() require("flash").remote() end, desc = "Remote Flash" },
      {
        "R",
        mode = { "o", "x" },
        function() require("flash").treesitter_search() end,
        desc =
        "Treesitter Search"
      },
      {
        "<c-s>",
        mode = { "c" },
        function() require("flash").toggle() end,
        desc =
        "Toggle Flash Search"
      },
    },
  },
  -- {
  --   "nvim-neorg/neorg",
  --   ft = "norg",   -- lazy-load on filetype
  --   config = true, -- run require("neorg").setup()
  -- },
  -- {
  --   "AckslD/nvim-neoclip.lua",
  --   config = function()
  --     require('neoclip').setup()
  --   end,
  -- },
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
  -- { "tpope/vim-surround" },
  -- {
  --   "phaazon/hop.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("hop").setup({
  --       keys = 'asdghklqwertyuiopzxcvbnmfj'
  --     })
  --     vim.api.nvim_set_keymap("n", "f", ":HopChar2<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
  --   end,
  -- },
  -- {
  --   'AckslD/nvim-trevJ.lua',
  --   config = 'require("trevj").setup()',
  --   init = function()
  --     vim.keymap.set('n', '<leader>j', function()
  --       require('trevj').format_at_cursor()
  --     end)
  --   end,
  -- },
}
