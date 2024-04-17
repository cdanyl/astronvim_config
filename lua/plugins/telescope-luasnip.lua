return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "benfowler/telescope-luasnip.nvim" },
    keys = {
      {
        "<leader>fs",
        "<cmd>Telescope luasnip<CR>",
        desc = "Browse Snippets",
      },
    },
    opts = function() require("telescope").load_extension "luasnip" end,
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { mini = true } },
  },
}
