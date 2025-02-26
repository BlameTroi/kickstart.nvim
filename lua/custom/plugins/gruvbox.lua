return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.

  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  -- vim.cmd("colorscheme gruvbox"),
  init = function()
    vim.o.background = 'light'
    --vim.o.contrast = "hard"
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
    vim.cmd.colorscheme 'gruvbox'
  end,
  opts = { -- these are from the config example on github, main change is contrast
    show_warnings = true,
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = 'hard', -- can be "hard", "soft" or empty string
    dim_inactive = false,
    transparent_mode = false,
  },
}
-- vim: ts=2 sts=2 sw=2 et
