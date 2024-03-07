return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      css = { 
        mode = 'foreground',
        rgb_fn = true;
      },
      scss = { 
        mode = 'foreground',
        rgb_fn = true; 
      },
      javascript = { mode = 'foreground' },
      typescript = { mode = 'foreground' },
      html = { mode = 'foreground' },
    }, { mode = 'foreground'})
  end,
}

