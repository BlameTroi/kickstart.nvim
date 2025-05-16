--- ~/.config/kickstart/lua/config/plugins/statusline.lua

-- Searching for the right status line.

return {
   "nvim-lualine/lualine.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   opts = {
      sections = {
         lualine_x = {
            {
               "fileformat",
               icons_enabled = true,
               symbols = {
                  unix = "LF",
                  dos = "CRLF",
                  mac = "CR",
               },
            },
         },
      },
   },
}
