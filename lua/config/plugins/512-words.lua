return {
  "BlameTroi/512-words",
  opts = {
    buffer = { textwidth = 75 },
    words = 0x100,
    storage_directory = "~/Notepad",
    date_prefix = "#",
    file_extension = ".md",
  },
  init = function(_)
    vim.keymap.set("n", "gw", function()
      require("512-words").open()
    end)
  end,
}
