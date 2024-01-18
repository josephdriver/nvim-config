local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.keymap.set('n', '<C-u>', '<C-u>zz', {remap = true})
vim.keymap.set('n', '<C-d>', '<C-d>zz', {remap = true})

require("vim-options")
require("lazy").setup({{import = "plugins"},{import = "plugins.lsp"}})



