return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- vim.g.vimtex_compiler_method = "latex"
    -- vim.g.vimtex_compiler_method = "pdftex"
    vim.g.vimtex_view_method = "skim"

    -- vim.g.vimtex_quickfix_latexlog = {}
    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_quickfix_enabled = 0
    -- vim.g.vimtex_quickfix_ignore_all_warnings = 0
  end,
}

-- skim
-- alias skim='/Applications/Skim.app/Contents/MacOS/Skim'
-- in skim preferences -> sync -> preset = custom, command = nvim,
-- arguments = --headless -c "VimtexInverseSearch %l '%f'"

-- BUG?
-- There is no ; in font nullfont
-- This is not a bug, but rather an expected behavior due to how TikZ and pgfplots interact with LaTeX.
-- The \draw command from the TikZ package requires a semicolon at the end, while the \addlegendimage command from pgfplots does not.
-- Consequently, when a second semicolon is used, it becomes part of the output.
-- However, within the tikzpicture environment, the font is set to \nullfont to prevent accidental text from being rendered.
--  Since \nullfont lacks any characters, the semicolon is effectively missing, leading to the "Missing character" message.
