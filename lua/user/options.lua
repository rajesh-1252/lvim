vim.opt.number                                          = true
lvim.format_on_save                                     = true
lvim.transparent_window                                 = true
lvim.colorscheme                                        = "catppuccin"
-- lvim.builtin.nvimtree.active          = false -- NOTE: using neo-tree
lvim.builtin.telescope.on_config_done                   = function(telescope)
  pcall(telescope.load_extension, 'neoclip')
end
-- lvim.colorscheme        = "vscode"
vim.opt.wrap                                            = true
-- vim.opt.textwidth       = 90
-- vim.opt.linebreak       = true
-- vim.opt.wrapmargin                                   = 2
vim.opt.relativenumber                                  = true
vim.opt.cursorline                                      = true
vim.opt.conceallevel                                    = 2
lvim.builtin.telescope.defaults.file_ignore_patterns    = { "node_modules" }

lvim.builtin.nvimtree.setup.filters.custom              = {}

-- dashboard config
local text                                              = require "lvim.interface.text"
lvim.builtin.alpha.dashboard.section.footer             = {
  type = "text",
  val = text.align_center({ width = 0 }, {
    "",
    "marisa.org",
  }, 0.5),
  opts = {
    position = "center",
    hl = "Number",
  },
}
local quit                                              = lvim.builtin.alpha.dashboard.section.buttons.entries[7]
lvim.builtin.alpha.dashboard.section.buttons.entries[7] = {}
lvim.builtin.alpha.dashboard.section.buttons.entries[7] = {
  "o",
  lvim.icons.ui.Circle .. "  Obsidian",
  "<Cmd>edit  /home/mrnobody/Desktop/knowlegeDB/Welcome.md<CR>"
}
lvim.builtin.alpha.dashboard.section.buttons.entries[8] = quit

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.*" },
  desc = "save view (folds), when closing file",
  command = "mkview",
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.*" },
  desc = "load view (folds), when opening file",
  command = "silent! loadview"
})


-- Auto-command to save the view before formatting
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.*" },
  callback = function()
    vim.cmd('mkview')
  end,
  desc = "Save view before formatting",
})

-- Auto-command to restore the view after formatting
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.*" },
  callback = function()
    vim.cmd('silent! loadview')
  end,
  desc = "Restore view after formatting",
})
