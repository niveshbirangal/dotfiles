return {
  "andrewferrier/wrapping.nvim",
  init = function()
    require("wrapping").setup({
      notify_on_switch = false,
      create_keymaps = false,
    })
    vim.keymap.set("n", "<leader>wm", function()
      require("wrapping").toggle_wrap_mode()
    end, {
      desc = "Toggle wrap mode",
      unique = true,
    })
  end,
}
