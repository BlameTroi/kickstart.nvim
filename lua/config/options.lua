--- ~/.config/kickstart/lua/config/options.lua

--- The various option settings to make Neovim my own. ------------------------

-- And I finally learned the difference between vim.o and vim.opt.

--- General appearance.

vim.g.have_nerd_font = true
vim.o.background = "dark"
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.o.cursorline = true
vim.o.scrolloff = 3

--- Popup and floating behavior and appearance.

vim.o.winborder = "rounded"
vim.o.winminwidth = 5
-- More popups, generally values 0/1 except for pumwidth.
-- o.pumblend = 10
-- vim.cmd("hi PmenuSel blend=0")
-- o.pumheight = 10
-- o.pummaxwidth = 50
-- o.pumwidth = 15
-- o.winblend = 10

--- Textual behavior.

vim.o.breakindent = true
vim.o.linebreak = true
vim.o.wrap = false

--- Case-insensitive searching UNLESS \C or one or more capital letters in the search term

vim.o.ignorecase = true
vim.o.smartcase = true

--- Options that might help completion.

vim.o.infercase = true
-- vim.o.isexpand = ????

--- Prose and text.

-- While more text/writing support is needed, for now I'll enable spelling and
-- thesaurus. Note that my dictionary additions are in my config and not under
-- stdpath(data).

vim.opt.spelllang = { "en_us" }
vim.o.spellsuggest = "best,10"
local spelldir = vim.fn.stdpath("config") .. "/spell"
vim.o.spellfile = spelldir .. "/en.utf-8.add"
vim.o.thesaurus = spelldir .. "/thesaurus.txt"

--- Mouse disabled, I don't like accidental clicks.

vim.o.mouse = ""

--- Sync clipboard between OS and Neovim.

-- Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
   vim.o.clipboard = "unnamedplus"
end)

--- Save undo history.

vim.o.undofile = true

--- Decrease update time.

vim.o.updatetime = 250

--- Decrease mapped sequence wait time.

vim.o.timeoutlen = 300

--- Configure how new splits should be opened.

vim.o.splitright = true
vim.o.splitbelow = true

--- Preview substitutions live, as you type!

vim.o.inccommand = "split"

--- Don't accidently lose changes.

vim.o.confirm = true
