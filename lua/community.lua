-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.colorscheme.catppuccin" },

  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  -- { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.recipes.neovide" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.markdown" },

  -- { import = "astrocommunity.programming-language-support.rest-nvim" },

  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },

  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-surround" },

  { import = "astrocommunity.diagnostics.trouble-nvim" },

  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.lsp.nvim-lsp-file-operations" },

  { import = "astrocommunity.syntax.hlargs-nvim" },

  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.utility.telescope-coc-nvim" },

  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },

  -- { import = "astrocommunity.completion.coq_nvim" },

  { import = "astrocommunity.search.nvim-hlslens" },

  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },

  { import = "astrocommunity.project.nvim-spectre" },

  { import = "astrocommunity.markdown-and-latex.glow-nvim" },

  { import = "astrocommunity.git.neogit" },

  -- { import = "astrocommunity.workflow.bad-practices-nvim" },
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
}
