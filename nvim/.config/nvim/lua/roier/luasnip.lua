if vim.g.snippets ~= "luasnip" then
  return
end

local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
  history = true,

  updateevents = "TextChanged,TextChangedI",

  enable_autosnippets = true,

  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<-", "Error" } },
      },
    },
  },
}

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/roier/luasnip.lua<CR>")
