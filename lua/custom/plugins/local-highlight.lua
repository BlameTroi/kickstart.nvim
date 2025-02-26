return {
  'tzachar/local-highlight.nvim',
  config = function()
    require('local-highlight').setup {
      file_types = { 'scheme', 'c', 'lua', 'racket', 'fortran', 'f90', 'pascal' }, -- If this is given only attach to this
      -- OR attach to every filetype except:
      disable_file_types = { 'tex' },
      hlgroup = 'LocalHighlight',
      cw_hlgroup = nil,
      -- Whether to display highlights in INSERT mode or not
      insert_mode = false,
      min_match_len = 1,
      max_match_len = math.huge,
      highlight_single_match = true,
      animate = { -- requires snacks
        enabled = false,
        --   char_by_char = true,
        --   easing = 'linear',
        --   duration = {
        --     step = 10, -- ms per step
        --     total = 100, -- maximum duration
        --   },
      },
      debounce_timeout = 200,
    }
  end,
}
