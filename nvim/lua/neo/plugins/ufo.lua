return {
  "https://github.com/kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },

  init = function()
    vim.o.foldcolumn = "1" -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    -- "za fold and unfold specific block"
    vim.keymap.set("n", "zR", require("ufo").openAllFolds)
    -- "zr" unfold nested
    vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    vim.keymap.set("n", "zK", function()
      local winid = require("ufo").peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end, { desc = "Peek Fold" })
    require("ufo").setup({
      provider_selector = function(bufnr, filetypem, buftype)
        return { "lsp", "indent" }
        -- choose between lsp and tressiter? lsp gives little bit better code folding
      end,
    })
  end,
}
