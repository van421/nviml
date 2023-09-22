local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "▶",
          arrow_open = "▼",
        },
      },
    },
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
