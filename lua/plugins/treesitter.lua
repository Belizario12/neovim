return {
  "nvim-treesitter/nvim-treesitter", 
  "nvim-treesitter/nvim-treesitter-angular",
  build = ":TSUpdate",
  config = function ()
    local config = require ("nvim-treesitter.configs")
    config.setup({
    auto_install = true,
    highlight = { enabled = true },
    indent = { enabled = true },
    rainbow = {
      enable = true,
      query = 'rainbow-parens',
      strategy = require('ts-rainbow').strategy.global,
  }
    })
  end
}
