return {
  -- Coqtail: Interactive Coq proofs in Neovim
  {
    "whonore/Coqtail",
    ft = "coq",
    config = function()
      -- Set Coqtail keybindings
      vim.g.coqtail_auto_set_proof_diffs = 1

      -- Optional: Configure keymaps
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "coq",
        callback = function()
          local opts = { buffer = true, silent = true }
          vim.keymap.set("n", "<leader>cc", "<Plug>CoqStart", opts)
          vim.keymap.set("n", "<leader>cq", "<Plug>CoqStop", opts)
          vim.keymap.set("n", "<leader>cj", "<Plug>CoqNext", opts)
          vim.keymap.set("n", "<leader>ck", "<Plug>CoqUndo", opts)
          vim.keymap.set("n", "<leader>cl", "<Plug>CoqToLine", opts)
          vim.keymap.set("n", "<leader>cg", "<Plug>CoqToTop", opts)
          vim.keymap.set("n", "<leader>cG", "<Plug>CoqJumpToEnd", opts)
        end,
      })
    end,
  },

  -- Optional: LSP support with coq-lsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        coq_lsp = {
          filetypes = { "coq" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("_CoqProject", "dune-project")(fname)
          end,
        },
      },
    },
  },
}
