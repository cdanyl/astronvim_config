-- install gotags with -> go install github.com/jstemmer/gotags@v1.4.1
return {
  "crusj/structrue-go.nvim",
  branch = "main",
  config = function() require("structrue-go").setup() end,
  keys = {
    {
      "<leader>ms",
      function() require("structrue-go").toggle() end,
      desc = "Toggle structure-go",
    },
  },
}
