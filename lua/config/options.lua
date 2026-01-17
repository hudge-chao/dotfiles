-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.g.autoformat = true

local opt = vim.opt

opt.clipboard = "unnamedplus"

-- 行号
opt.number = true
opt.relativenumber = true

-- 编码问题
opt.fileencodings = "ucs-bom,utf-8,gbk,gb2312,big5"
opt.encoding = "utf-8"

vim.o.encoding = "utf-8"
vim.o.fileencodings = "utf-8,gbk,big5,cp936,gb18030,euc-jp,euc-kr,latin1,ucs-bom,ucs"
-- vim.bo.fileformat = "unix"
-- vim.bo.fileencoding = "utf-8"

if vim.g.vscode then
  vim.opt.fileencodings = "ucs-bom,utf-8,default,latin1"
end

vim.filetype.add({
  extension = {
    vue = "vue",
  },
})
