local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "command mode", opts = { nowait = true } },
    ["[b"] = {":bp<CR>", opts = { silent = true } },
   ["]b"] = {":bn<CR>", opts = { silent = true } },
  },
  i = {
    ["kj"] = {"<ESC>"}
  },
}

-- more keybinds!

return M
