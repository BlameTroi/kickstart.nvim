--- ~/.config/kickstart/lua/config/plugins/vimdirdiff.lua

-- A very good diff tool.

return {
  "zsaberlv0/zfvimdirdiff",
  dependencies = {
    "ZSaberLv0/ZFVimJob",
    "ZSaberLv0/ZFVimIgnore",
    "ZSaberLv0/ZFVimBackup",
  },
  cmd = "ZFDirDiff",
}
