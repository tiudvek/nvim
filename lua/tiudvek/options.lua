local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = false

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.termguicolors = true

opt.ignorecase = true
opt.smartcase = true

opt.mouse = "a"

opt.whichwrap:append "<>[]hl"

g.mapleader = ","
