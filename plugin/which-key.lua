local kind = require('user.kind')
local wk = lvim.builtin.which_key

-- lvim.builtin.which_key.mappings['f'] = {}
-- lvim.builtin.which_key.mappings["ff"] = {
--   function()
--     require("lvim.core.telescope.custom-finders").find_project_files { previewer = false }
--   end,
--   "Find File",
-- }

-- lvim.builtin.which_key.mappings["fw"] = {
--   "<cmd> Telescope live_grep <CR>", "Search word in entire project"

-- }

-- lvim.builtin.which_key.mappings["fo"] = {
--   "<cmd> Telescope oldfiles<CR>", "Find oldfiles"
-- }

-- lvim.builtin.which_key.mappings["fb"] = {
--   function()
--     require("telescope.builtin").buffers()
--   end, "Find buffers"
-- }

-- lvim.builtin.which_key.mappings["fW"] = {
--   function()
--     require("telescope.builtin").grep_string()
--   end, "Find word under cursor"
-- }

-- lvim.builtin.which_key.mappings["fs"] = {
--   function()
--     require("telescope.builtin").lsp_document_symbols()
--   end, "Find Symbols"
-- }


lvim.builtin.which_key.mappings["esc"] = {
}

wk.mappings['f'] = {
  f = { "<cmd>lua require('lvim.core.telescope.custom-finders').find_project_files { previewer = false }<CR>",
    "Find File" },
  w = { "<cmd>Telescope live_grep<CR>", "Search word in entire project" },
  o = { "<cmd>Telescope oldfiles<CR>", "Find old files" },
  b = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Find buffers" },
  W = { "<cmd>Telescope grep_string<CR>", "Find word under cursor" },
  s = { "<cmd>Telescope lsp_document_symbols<CR>", "Find Symbols" },
}

-- lvim.keys.normal_mode[''] = false
lvim.builtin.which_key.mappings["fz"] = {
  "<cmd> Telescope current_buffer_fuzzy_find<CR>", "Find in current buffe"
}

wk.mappings["S"] = {
  name = " persistence.nvim",
  s = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. " Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. " Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. " Quit without saving session" },
}
