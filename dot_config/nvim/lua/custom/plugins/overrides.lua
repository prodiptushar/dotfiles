local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "python",
    "typescript",
    "c",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    "bash-language-server",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}
-- TODO  add this to the nvchad plugins telescope.lua files mappings
        -- i = {
        --   ["<C-n>"] = require("telescope.actions").cycle_history_next,
        --   ["<C-p>"] = require("telescope.actions").cycle_history_prev,
        --   ["<C-j>"] = require("telescope.actions").move_selection_next,
        --   ["<C-k>"] = require("telescope.actions").move_selection_previous,
        -- },

return M
