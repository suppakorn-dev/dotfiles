local M = {}

M.disabled = {
  n = {
    ["<C-u>"] = "",
    ["<C-d>"] = "",
    ["n"] = "",
    ["N"] = "",
  }
}

M.dap = {
  n = {
    ["n"] = {"nzzzv", "Place cursor at the middle of page when navigate on search result"},
    ["N"] = {"Nzzzv", "Place cursor at the middle of page when navigate on search result"},
    ["<C-u>"] = {"<C-u>zz", "Go up half page and place the cursor at the middle of page"},
    ["<C-d>"] = {"<C-d>zz", "Go down half page and place the cursor at the middle of page"},
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "Add breakpoint at line"},
    ["<leader>dr"] = {"<cmd> DapContinue <CR>", "Run or continue the debugger"}
  },
}

return M
