return {
  { import = "lazyvim.plugins.extras.neo-tree.nvim" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
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
