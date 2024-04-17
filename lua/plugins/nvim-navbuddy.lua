return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
      opts = { lsp = { auto_attach = true } },
      keys = {
        {
          "<leader>fv",
          function() require("nvim-navbuddy").open() end,
          desc = "Navigate File Symbols",
        },
      },
    },
  },
}
