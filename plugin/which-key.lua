lvim.builtin.which_key.mappings['f'] = {}
lvim.builtin.which_key.mappings["ff"] = {
    function()
      require("lvim.core.telescope.custom-finders").find_project_files { previewer = false }
    end,
    "Find File",
}

lvim.builtin.which_key.mappings["fw"] = {
    "<cmd> Telescope live_grep <CR>" , "Search word in entire project"

}

lvim.builtin.which_key.mappings["fo"] = {
    "<cmd> Telescope oldfiles<CR>" , "Find oldfiles"
}

lvim.builtin.which_key.mappings["fz"] = {
    "<cmd> Telescope current_buffer_fuzzy_find<CR>" , "Find in current buffe"
}
