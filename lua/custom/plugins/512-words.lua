-- 512 words a day plugin --
return {
  'BlameTroi/512-words',
  vim.keymap.set('n', 'gW', function()
    require('512-words').open()
  end),
  opts = {
    buffer = {
      textwidth = 80,
    },
    words = 0x100,
    storage_directory = '~/Notepad/0x100-Words',
  },
}
-- vim: ts=2 sts=2 sw=2 et
