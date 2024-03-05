return {
  "p00f/nvim-ts-rainbow",
  requires = "nvim-treesitter/nvim-treesitter",

  config = function()
    require("nvim-treesitter.configs").setup {
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000,
      },
    }
  end,
}
