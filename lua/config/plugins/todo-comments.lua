--- ~/.config/kickstart/lua/config/plugins/todo-comments.lua

-- Highlight todo, notes, etc in comments. I prefer this todo highlighter, but I
-- still use mini.hipatterns for hex color codes.

return {
  "folke/todo-comments.nvim",
  event = "VimEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = { signs = true },
}
