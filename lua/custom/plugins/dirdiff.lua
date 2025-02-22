-- I'm not 100% sure I want the dependencies, but I'll try them for now. Most
-- of the diff plugins seem geared toward git repos, but this one looks more
-- like something I want.
return {
  {
    'zsaberlv0/zfvimdirdiff',
    dependencies = {
      'ZSaberLv0/ZFVimJob',
      'ZSaberLv0/ZFVimIgnore',
      'ZSaberLv0/ZFVimBackup',
    },
    cmd = 'ZFDirDiff',
  },
}
