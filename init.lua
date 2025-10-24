require("config.lazy")
require("config.keymap")
require("config.autocmd")

vim.wo.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = ">-", trail = "-" }
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- after/syntax/c.lua
vim.cmd([[
  syntax match cFormat "%\(\d\+\$\)\=[-+' #0]*\(\d\+\|\*\)\=\(\.\(\d\+\|\*\)\)\=\([hlL]\|ll\|hh\)\=[cCdiouxXeEfgGaAnps%]"
  highlight link cFormat Special
]])

vim.g.tex_flavor = "latex"
