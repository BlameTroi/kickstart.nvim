--- ~/.config/kickstart/init.lua

-- _mirabile dictu_ I have a reasonably clean and working config that I actually
-- understand. After a lot of wheel spinning and rabbit hole spelunking I
-- learned enough about Lua and Neovim start over with kickstart.nvim.
--
-- I tried LazyVim and some others, but until I slowly tried to build my own
-- from scratch using mini.nvim for a guide, it just wasn't stable. I've seen
-- other comments that this is common.
--
-- LazyVim is still a cool kit, but it's too cool. Too many layers of
-- abstraction. Too many bank shots.

--- The common startup. -------------------------------------------------------

-- Set leaders before anything else happens. Changing leader after a plugin has
-- made a mapping based on leader is bad. Space seems to be a good leader for me
-- and other people. I've seen cases of space as leader messing up some configs. The best way
-- to resolve that seems to be no op space first.

vim.cmd("nnoremap <space> <nop>")
vim.cmd("vnoremap <space> <nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--- Bootstrap Lazy.nvim. ------------------------------------------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

--- Run the initialization. ---------------------------------------------------

require("config")
require("autocmds")

require("lazy").setup(
  {
    import = "plugins",
    checker = {
      enabled = true, -- check for plugin updates periodically
      notify = false, -- notify on update
    },                -- automatically check for plugin updates
    performance = {
      rtp = {
        -- disable some rtp plugins
        disabled_plugins = {
          "gzip",
          -- "matchit",
          -- "matchparen",
          -- "netrwPlugin",
          "tarPlugin",
          "tohtml",
          "tutor",
          "zipPlugin",
        },
      },
    },
  },
  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- { import = 'custom.plugins' },
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
  {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = "⌘",
        config = "🛠",
        event = "📅",
        ft = "📂",
        init = "⚙",
        keys = "🗝",
        plugin = "🔌",
        runtime = "💻",
        require = "🌙",
        source = "📄",
        start = "🚀",
        task = "📌",
        lazy = "💤 ",
      },
    },
  }
)

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
