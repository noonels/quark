return {
  { "nvim-telescope/telescope.nvim", dependencies = "tsakirist/telescope-lazy.nvim" },
  { "nvim-telescope/telescope-project.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>pf", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
      { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>g", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>o", "<cmd>Telescope oldfiles<cr>", desc = "Old Files" },
      { "<leader>gk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
      { "<leader>pp", ":lua require'telescope'.extensions.project.project{}<CR>", desc = "Projects" },
    },
  },
}
