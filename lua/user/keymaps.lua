lvim.keys.normal_mode["<S-l>"] = ":bn<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bp<CR>"
lvim.keys.normal_mode['<esc>'] = ':noh<CR>'
lvim.builtin.cmp.completion.keyword_length = 2

lvim.builtin.telescope.theme = "center"
-- lvim.keys.normal_mode["gd"] = ":Telescope lsp_definitions<CR>"
lvim.keys.normal_mode["gd"] = "<cmd>Telescope lsp_definitions<cr>"
lvim.keys.normal_mode["gr"] = ":Telescope lsp_references<CR>"
lvim.keys.normal_mode["gR"] = ":lua vim.lsp.buf.incoming_calls()<CR>"
