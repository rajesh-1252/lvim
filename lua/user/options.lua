vim.opt.number                        = true
vim.opt.cursorline                    = false
lvim.format_on_save                   = true
lvim.transparent_window               = false
lvim.colorscheme                      = "catppuccin"
-- lvim.builtin.nvimtree.active          = false -- NOTE: using neo-tree
lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, 'neoclip')
end
-- lvim.colorscheme        = "vscode"
vim.opt.wrap                          = true
-- vim.opt.textwidth       = 90
-- vim.opt.linebreak       = true
-- vim.opt.wrapmargin      = 2
vim.opt.relativenumber                = true
vim.opt.cursorline                    = true
