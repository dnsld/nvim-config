-- line number defaults
vim.wo.number = true

-- spacing
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2


-- enable mouse mode
vim.o.mouse = 'a'

-- sync clipboard between OS and nvim
-- remove option if they should be indpependent
-- see `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


