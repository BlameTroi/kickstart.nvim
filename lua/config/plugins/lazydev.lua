--- ~/.config/kickstart/lua/config/plugins/lazydev.lua

-- Configure lua langauge server to deal with Neovim runtime and plugin
-- signatures.

return {
  "folke/lazydev.nvim",
  ft = "lua",
  opts = {
    library = {
      -- Load luvit types when the `vim.uv` word is found
      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
  },
}
