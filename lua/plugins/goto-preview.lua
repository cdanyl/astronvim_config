return {
  {
    "rmagatti/goto-preview",
    opts = {
      dismiss_on_move = false,
      default_mappings = false,
    },
    dependencies = {
      { "AstroNvim/astroui", opts = { icons = { GotoPreview = "󰹰" } } },
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          local prefix = "gp"
          maps.n[prefix] = { desc = require("astroui").get_icon("GotoPreview", 1, true) .. "GotoPreview" }

          maps.n[prefix .. "d"] = {
            function() require("goto-preview").goto_preview_definition() end,
            desc = "Goto Preview Definition",
          }
          maps.n[prefix .. "t"] = {
            function() require("goto-preview").goto_preview_type_definition() end,
            desc = "Goto Preview Type Definition",
          }
          maps.n[prefix .. "i"] = {
            function() require("goto-preview").goto_preview_implementation() end,
            desc = "Goto Preview Implementation",
          }
          maps.n[prefix .. "D"] = {
            function() require("goto-preview").goto_preview_declaration() end,
            desc = "Goto Preview Declaration",
          }
          maps.n[prefix .. "r"] = {
            function() require("goto-preview").goto_preview_references() end,
            desc = "Goto Preview References",
          }
          maps.n[prefix .. "c"] = {
            function() require("goto-preview").close_all_win() end,
            desc = "Goto Preview Close All Windows",
          }
        end,
      },
    },
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { GotoPreview = true } },
  },
}
