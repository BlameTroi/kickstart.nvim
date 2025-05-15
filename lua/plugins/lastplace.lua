return {
  -- Pick up where I left off.
  "ethanholz/nvim-lastplace",
  opts = {
    lastplace_ignore_bufftype = { "quickfix", "nofile", "help" },
    lastplace_ignore_filetype = { "gitcommit", "gitrebase" },
    lastplace_open_folds = true,
  },
}
