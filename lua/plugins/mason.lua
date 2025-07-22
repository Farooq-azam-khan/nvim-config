return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "ruff",
        "docker-compose-language-service",
        "json-lsp",
      },
    },
  },
}
