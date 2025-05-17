-- ~/.config/kickstart/lua/config/plugins/diagnostics.lua

-- Diagnostic support is built in, this seems a good place to add this.

vim.diagnostic.config({
  virtual_text = { source = "if_many" },
  severity_sort = true,
  float = { source = "if_many" },
})

return {}
