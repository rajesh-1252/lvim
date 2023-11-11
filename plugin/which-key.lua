local kind = require('user.kind')
local wk = lvim.builtin.which_key



wk.mappings["esc"] = {}

-- telescope

wk.mappings['f'] = {
  f = { "<cmd>lua require('lvim.core.telescope.custom-finders').find_project_files { previewer = false }<CR>",
    "Find File" },
  w = { "<cmd>Telescope live_grep<CR>", "Search word in entire project" },
  o = { "<cmd>Telescope oldfiles<CR>", "Find old files" },
  b = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Find buffers" },
  W = { "<cmd>Telescope grep_string<CR>", "Find word under cursor" },
  s = { "<cmd>Telescope lsp_document_symbols<CR>", "Find Symbols" },
}

-- harpoon
wk.mappings['h'] = {
  a = { "<cmd>:lua require('harpoon.mark').add_file()<CR>", "Add file to harpoon" },
  f = { "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>", "Toggle quick menu" },
  p = { "<cmd>:lua require('harpoon.ui').nav_next()<CR>", "prev harpoon file" },
  n = { "<cmd>:lua require('harpoon.ui').nav_prev()<CR>", "next harpoon file" },
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
