local prefix = "gp"

return {
  "dnlhc/glance.nvim",
  enabled = false,
  dependencies = {
    { "AstroNvim/astroui", opts = { icons = { Glance = "" } } },
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n[prefix] = { desc = require("astroui").get_icon("Glance", 1, true) .. "Glance" }
      end,
    },
  },
  cmd = "Glance",
  keys = {
    { "gpd", "<cmd>Glance definitions<CR>", desc = "Glance Definitions" },
    { "gpr", "<cmd>Glance references<CR>", desc = "Glance References" },
    { "gpy", "<cmd>Glance type_definitions<CR>", desc = "Glance Type Definitions" },
    { "gpi", "<cmd>Glance implementations<CR>", desc = "Glance Implementations" },
  },
  opts = function()
    local actions = require("glance").actions
    return {
      folds = {
        fold_closed = "󰅂", -- 󰅂 
        fold_open = "󰅀", -- 󰅀 
        folded = true,
      },
      mappings = {
        list = {
          ["<C-u>"] = actions.preview_scroll_win(5),
          ["<C-d>"] = actions.preview_scroll_win(-5),
          ["sg"] = actions.jump_vsplit,
          ["sv"] = actions.jump_split,
          ["st"] = actions.jump_tab,
          ["p"] = actions.enter_win "preview",
        },
        preview = {
          ["q"] = actions.close,
          ["p"] = actions.enter_win "list",
        },
      },
    }
  end,
}
