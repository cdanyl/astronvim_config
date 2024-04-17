return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "smartpde/telescope-recent-files" },
    keys = {
      {
        "<leader>fR",
        function() require("telescope").extensions.recent_files.pick() end,
        desc = "Browse Recent Files",
      },
    },
    opts = function() require("telescope").load_extension "recent_files" end,
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { mini = true } },
  },
}
