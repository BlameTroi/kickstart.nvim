--- ~/.config/kickstart/lua/config/mapping.lua

-- Many mappings are set in Lazy plugin specs. It seems unavoidable.

--- Assorted utility. ---------------------------------------------------------

-- Clear highlights on search when pressing <Esc> in normal mode.

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Turn off arrow keys in normal, input, and visual modes. The uber vimmers
-- do this to demonstrate superiority. I do it avoid inadvertant touchpad
-- clicks moving the cursor or changing a selection. But yeah, maybe it will
-- make me less un-uber.

vim.keymap.set({ "n", "i", "v" }, "<left>", "")
vim.keymap.set({ "n", "i", "v" }, "<right>", "")
vim.keymap.set({ "n", "i", "v" }, "<up>", "")
vim.keymap.set({ "n", "i", "v" }, "<down>", "")

--- Use <A-hjkl> for shifting lines in a buffer. ------------------------------

vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

--- Do the right thing with j/k for wrapped text. -----------------------------

vim.keymap.set({ "n", "x" }, "j", [[v:count == 0 ? 'gj' : 'j']], { expr = true })
vim.keymap.set({ "n", "x" }, "k", [[v:count == 0 ? 'gk' : 'k']], { expr = true })

--- Window split creation and navigation. -------------------------------------

-- Create a split.

vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- Move around splits.

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize splits. (respecting `v:count`)

vim.keymap.set("n", "<C-Left>", '"<Cmd>vertical resize -" . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = "Decrease window width" })
vim.keymap.set("n", "<C-Down>", '"<Cmd>resize -"          . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = "Decrease window height" })
vim.keymap.set("n", "<C-Up>", '"<Cmd>resize +"          . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = "Increase window height" })
vim.keymap.set("n", "<C-Right>", '"<Cmd>vertical resize +" . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = "Increase window width" })

--- What am I looking at? -----------------------------------------------------

-- Ask Treesitter about the current node.

vim.keymap.set("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
vim.keymap.set("n", "<leader>uI", function()
  vim.treesitter.inspect_tree()
  vim.api.nvim_input("I")
end, { desc = "Inspect Tree" })

-- LSP support steals K, moving it from :keywordprg to vim.lsp.buf.hover(). Use
-- <leader>K for :keywordprg. This is usually just :man.

vim.keymap.set("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

--- Terminal commands. --------------------------------------------------------

vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
