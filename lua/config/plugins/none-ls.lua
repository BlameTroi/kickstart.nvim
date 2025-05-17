--- ~/.config/kickstart/lua/config/plugins/none-ls.lua

-- Use none-ls to provide both formatting and linting beyond what conform
-- and just an lsp provides. These recommendation came from a blog site that
-- I am unable to find again. It's not for lack of trying.
--
-- I changed a few of the tooling choices. Ruff is still a bit rough around
-- the edges so I have pylsp set up to lint and yapf here to format.
--
-- I'm not sure this is better than conform, I may clip it out and restore
-- conform, hence the gate.

if false then
  return {}
else
  return {
    "nvimtools/none-ls.nvim",

    dependencies = {
      "nvimtools/none-ls-extras.nvim",
      "jayp0521/mason-null-ls.nvim",
    },

    config = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting -- to setup formatters
      local diagnostics = null_ls.builtins.diagnostics -- to setup linters

      -- list of formatters & linters for mason to install
      require("mason-null-ls").setup({
        ensure_installed = {
          "checkmake",
          "prettier", -- ts/js formatter
          "stylua", -- lua formatter
          "eslint_d", -- ts/js linter
          "shfmt",
          "yapf",
          --        "ruff",
        },
        -- auto-install configured formatters & linters (with null-ls)
        automatic_installation = true,
      })

      local sources = {
        diagnostics.checkmake,
        formatting.prettier.with({ filetypes = { "html", "json", "yaml", "markdown" } }),
        formatting.stylua,
        formatting.shfmt.with({ args = { "-i", "4" } }),
        formatting.yapf,
        -- require("none-ls.formatting.ruff").with({ extra_args = { "--extend-select", "I" } }),
        -- require("none-ls.formatting.ruff_format"),
      }

      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      null_ls.setup({
        -- debug = true, -- Enable debug mode. Inspect logs with :NullLsLog.
        sources = sources,
        -- you can reuse a shared lspconfig on_attach callback here
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ async = false })
              end,
            })
          end
        end,
      })
    end,
  }
end
