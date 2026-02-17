return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          layout_config = {
            horizontal = {
              preview_width = 0.6,
            },
          },
        },
        extensions = {
          ["ui-select"] = require("telescope.themes").get_dropdown({}),
        },
      })

      telescope.load_extension("ui-select")

      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    end,
  },
}

