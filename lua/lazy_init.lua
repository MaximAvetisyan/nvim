local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    spec = "plugins",
})
--  {'nvim-java/nvim-java'},
--  { 'numToStr/Comment.nvim', opts = {} },
--
--require('java').setup()
--require'lspconfig'.jdtls.setup{}

--local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*.go",
--  callback = function()
--   require('go.format').gofmt()
--  end,
--  group = format_sync_grp,
--})
