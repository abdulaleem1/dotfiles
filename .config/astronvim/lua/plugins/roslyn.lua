return {
  "seblyng/roslyn.nvim",
  config = function() vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" }) end,
}
