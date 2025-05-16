--- ~/.config/kickstart/lua/config/plugins/lastplace.lua

-- Resume editing at the same location.

return {
  "ethanholz/nvim-lastplace",
  opts = {
    lastplace_ignore_bufftype = {
      "quickfix",
      "nofile",
      "help",
    },
    lastplace_ignore_filetype = {
      "gitcommit",
      "gitrebase",
    },
    lastplace_open_folds = true,
  },
}
