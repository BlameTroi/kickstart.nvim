return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.

  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        styles = { -- Style to be applied to different syntax groups
          comments = "italic", -- Value is any valid attr-list value `:help attr-list`
          functions = "NONE", -- bold, underline, undercurl, underdouble,
          keywords = "bold,italic", -- underdotted, underdashed, strikethrough,
          variables = "NONE", -- reverse, inverse, italic, standout, altfont,
          conditionals = "NONE", -- nocombine, NONE
          constants = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
        },
      },
    })
    vim.cmd("colorscheme github_dark_high_contrast")
  end,
}
