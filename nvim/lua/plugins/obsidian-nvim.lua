return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  dependencies = {
    "hrsh7th/nvim-cmp",
    "folke/snacks.nvim",
  },
  event = {"BufReadPre */vault/*.md" },
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        path = "~/workspace/obsidian/vault/",
      },
    },
    templates = {
      subdir = "templates",
      data_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    daily_notes = {
      enable = true,
      folder = "daily",
      date_format = "%Y-%m-%d",
    },
    note_frontmatter_func = function (note)
      -- local out = { date = "[[" .. os.date "%Y-%m-%d" .. "]]" }
      -- if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then 
      --   for k, v in pairs(note.metadata) do
      --     out[k] = v
      --   end
      -- end
      -- return out
    end,
  },
}
