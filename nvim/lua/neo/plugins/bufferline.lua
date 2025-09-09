-- vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#323232" })

return {

  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",

  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
    },
  },

  -- bg = function()
  --   require("bufferline").setup({
  --
  --     background = {
  --       fg = "#fffff",
  --       bg = "#fffff",
  --     },
  --   })
  -- end,

  -- config = function()
  --   local bufferline = require("bufferline")
  --   bufferline.setup({
  --     options = {
  --       style_preset = bufferline.style_preset.minimal,
  --     },
  --   })
  -- end,
}
