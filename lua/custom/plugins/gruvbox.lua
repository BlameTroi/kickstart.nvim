return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.

  -- I forked my own copy from  'ellisonleao/gruvbox.nvim',
  -- so I could tweak it there since I am still struggling
  -- with overrides in Lua.
  dir = '~/Projects/nvim/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  -- vim.cmd("colorscheme gruvbox"),
  init = function()
    vim.o.background = 'dark'
    --vim.o.contrast = "hard"
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
    vim.cmd.colorscheme 'gruvbox'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
