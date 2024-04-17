return {
  "crusj/hierarchy-tree-go.nvim",
  enabled = false,
  event = "VeryLazy",
  config = function() require("hierarchy-tree-go").setup() end,
  keys = {
    {
      "<leader>mi",
      function() require("hierarchy-tree-go").incoming() end,
      desc = "Call incoming under cursorword",
    },
    {
      "<leader>mo",
      function() require("hierarchy-tree-go").outgoing() end,
      desc = "Call outgoing under cursorword",
    },
    {
      "<leader>mfo",
      function() require("hierarchy-tree-go").open() end,
      desc = "Open hierarchy window",
    },
    {
      "<leader>mfc",
      function() require("hierarchy-tree-go").close() end,
      desc = "Close hierarchy window",
    },
    {
      "<leader>mu",
      function() require("hierarchy-tree-go").focus() end,
      desc = "Focus hierarchy window",
    },
    {
      "<leader>mo",
      function() require("hierarchy-tree-go").expand() end,
      desc = "Expand or collapse hierarchy",
    },
  },
}
