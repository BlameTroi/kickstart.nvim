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
-- and other people. I've seen cases of space as leader messing up some configs.
-- The best way to resolve that seems to be no op space first.

vim.cmd("nnoremap <space> <nop>")
vim.cmd("vnoremap <space> <nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- And this is pretty straight forward. Bootstrap lazy.nvim and then fire things
-- up. The following grouping seems reasonable to me.

require("config.bootstrap")
require("config.options")
require("config.mapping")
require("config.load")
require("config.autocmds")
