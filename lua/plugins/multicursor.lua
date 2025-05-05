return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = "VeryLazy",
  init = function()
    vim.g.VM_default_mappings = 1 -- usa os atalhos padrão
    vim.g.VM_maps = {
      ["Find Under"]         = "<C-d>", -- mesmo atalho que você usava
      ["Find Subword Under"] = "<C-d>",
      ["Select All"]         = "\\A",   -- você pode customizar
      ["Add Cursor Up"]      = "<C-Up>",
      ["Add Cursor Down"]    = "<C-Down>",
    }
  end,
}
