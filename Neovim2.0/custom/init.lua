vim.opt.relativenumber = true
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.metal"},
  command = "setfiletype metal",
})
