local lint = require("lint")

lint.linters_by_ft = {
  javascript = {"eslint_d"},
  typescript = {"eslint_d"},
  go = {"golangcilint"}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
