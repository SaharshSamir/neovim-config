--key maps
local Utils = require('utils')

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
-- local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
-- local nmap = Utils.nmap
-- local xmap = Utils.xmap

vim.g.mapleader = "`"
vim.g.maplocalleader = "`"

-- kj to normal mode
inoremap("kj", "<Esc>")

-- nnoremap("<leader>ff", "")
