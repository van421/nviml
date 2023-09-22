local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

saga.setup({
  scroll_preview = { scroll_down = "<tab>", scroll_up = "<S-tab>" },
  definition = {
    edit = "<CR>",
  },
  ui = {
    colors = {
      normal_bg = "#033746",
    },
  },
})
