lvim.keys.normal_mode["<S-l>"] = ":bn<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bp<CR>"
lvim.keys.normal_mode['<esc>'] = ':noh<CR>'
lvim.builtin.cmp.completion.keyword_length = 2

lvim.lsp.buffer_mappings.normal_mode['gr'] = nil
lvim.lsp.buffer_mappings.normal_mode['gd'] = nil
lvim.builtin.telescope.theme = "center"


lvim.keys.normal_mode["<esc>"] = "<cmd>lua require('goto-preview').close_all_win()<CR>"

lvim.keys.normal_mode['<esc>'] = ':noh<CR>'

lvim.keys.normal_mode["gd"] = "<cmd>Telescope lsp_definitions<cr>"
lvim.keys.normal_mode["gr"] = ":Telescope lsp_references<CR>"
lvim.keys.normal_mode["gR"] = ":lua vim.lsp.buf.incoming_calls()<CR>"
lvim.keys.normal_mode["<leader>e"] = "<cmd>NvimTreeFindFileToggle<cr>"
lvim.keys.normal_mode["<leader>l"] = "za"
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
-- lvim.keys.normal_mode["c"] = "<cmd>NvimTreeCollapse<cr>"
