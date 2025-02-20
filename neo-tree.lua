return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_gitignored = false,
        },
        always_show_by_pattern = { 
          ".env*",
          ".github",
          ".gitignore",
        },
      },
      window = {
        position = "right",       
      },
    },
 
  },
}
