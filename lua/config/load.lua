--- ~/.config/kickstart/lua/config/load.lua

-- So maybe this is a bit too modular :)

--- Load the plugins ----------------------------------------------------------

require("lazy").setup({
  import = "config.plugins",
  checker = {
    enabled = true,
    notify = false,
  },
})
