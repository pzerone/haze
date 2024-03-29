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
return require('lazy').setup({

'navarasu/onedark.nvim',

'windwp/nvim-autopairs',

{
    'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim', lazy = true },
    },

{
    'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true },
    },
})
