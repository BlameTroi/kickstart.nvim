-- Found this on reddit as an alternative devdocs client.
-- Leaner and cleaner allegedly.

return {
  'maskudo/devdocs.nvim',
  lazy = false,
  keys = {
    {
      '<leader>ho',
      mode = 'n',
      '<cmd>DevDocs get<cr>',
      desc = 'Get Devdocs',
    },
    {
      '<leader>hi',
      mode = 'n',
      '<cmd>DevDocs install<cr>',
      desc = 'Install Devdocs',
    },
  },
  opts = {
    -- "docs": "bash/c/clojure~1.11/cmake/git/gnu_fortran~14/gnu_make/gnu_cobol/gnuplot/go/homebrew/man/lua~5.4/node/npm/opengl~4/python~3.13/ruby~3.4/sqlite/svg/tcl_tk/typescript/xslt_xpath",
    enure_installed = {
      'bash',
      'c',
      'clojure~1.11',
      'cmake',
      'git',
      'gnu_cobol',
      'gnu_fortran~14',
      'gnu_make',
      'gnuplot',
      'go',
      'homebrew',
      'http',
      'javascript',
      'lua~5.1',
      'man',
      'node',
      'npm',
      'opengl~4',
      'ruby~3.4',
      'sqlite',
      'svg',
      'tcl_tk',
      'typescript',
      'xslt_xpath',
    },
  },
}
