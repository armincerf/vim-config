local sumneko_opts = {
  settings = {
    Lua = {
      diagnostics = { globals = { "hs", "lvim", "vim" }, severity = { "missing-parameter", "Hint" } },
    },
  },
}

require("lvim.lsp.manager").setup("sumneko_lua", sumneko_opts)
