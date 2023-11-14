---@type ChadrcConfig
local M = {}

vim.opt.relativenumber = true

M.ui = {
  theme = "chadracula",
  transparency = true,
}

M.plugins = 'custom.plugins'

M.mappings = require "custom.mappings"

return M
