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
  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    -- cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
    config = function()
      vim.cmd("let g:minimap_width = 10")
      vim.cmd("let g:minimap_auto_start = 0")
      vim.cmd("let g:minimap_highlight_range = 1")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          width = 30,
        },
        buffers = {
          follow_current_file = true,
        },
        filesystem = {
          follow_current_file = true,
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              "node_modules"
            },
            never_show = {
              ".DS_Store",
              "thumbs.db"
            },
          },
        },
      })
    end
  },

  -- git
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
  {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require('neoclip').setup()
    end,
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end
  },
  {
    'VonHeikemen/fine-cmdline.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim'
    },
    config = function()
    end,
  }

}
