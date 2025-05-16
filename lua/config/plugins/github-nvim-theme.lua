--- ~/.config/kickstart/lua/config/plugins/github-nvim-theme.lua

-- Finally, a color scheme that holds up for my old eyes and my early stage
-- cataracts. Contrast alone is not enough, the color choices must be right as
-- well.

return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        -- Style tweaks to syntax groups. There is a long list of options
        -- but italic and bold are enough for me. See :h attr-list.
        styles = {
          comments = "italic",
          functions = "NONE",
          keywords = "bold,italic",
          variables = "NONE",
          conditionals = "NONE",
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
