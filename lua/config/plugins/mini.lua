--- ~/.config/kickstart/lua/config/plugins/mini.lua

--The mini.nvim library has several small plugin modules. I prefer many
--of them to others I've seen.

return {
  "echasnovski/mini.nvim",
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require("mini.ai").setup({ n_lines = 500 })

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require("mini.surround").setup()

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    -- local statusline = require("mini.statusline")
    -- set use_icons to true if you have a Nerd Font
    -- statusline.setup({ use_icons = vim.g.have_nerd_font })

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    -- statusline.section_location = function()
    -- return "%2l:%-2v"
    -- end

    -- Jumping via f, F, or <enter>. It works well.
    require("mini.jump").setup()
    require("mini.jump2d").setup()

    -- Highlights and colors #8899aa
    local hipatterns = require("mini.hipatterns")
    hipatterns.setup({
      highlighters = {
        -- fixme = { pattern = "BUG:", group = "MiniHipatternsFixme" },
        -- hack = { pattern = "HACK:", group = "MiniHipatternsHack" },
        -- todo = { pattern = "TODO:", group = "MiniHipatternsTodo" },
        -- note = { pattern = "NOTE:", group = "MiniHipatternsNote" },
        -- TODO: do this only for filetypes that it matters, lua, vim, css
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    })

    -- Split or rejoin function arguments
    require("mini.splitjoin").setup()

    -- Character pairs
    require("mini.pairs").setup()
  end,
}
