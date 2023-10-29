local M = {}

M.disabled = {
  n = {
    ["<C-u>"] = "",
    ["<C-d>"] = "",
    ["n"] = "",
    ["N"] = "",
  }
}

M.navigation = {
   n = {
    ["n"] = {"nzzzv", "Place cursor at the middle of page when navigate on search result"},
    ["N"] = {"Nzzzv", "Place cursor at the middle of page when navigate on search result"},
    ["<C-u>"] = {"<C-u>zz", "Go up half page and place the cursor at the middle of page"},
    ["<C-d>"] = {"<C-d>zz", "Go down half page and place the cursor at the middle of page"},
  },

}

M.dap = {
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "Add breakpoint at line"},
    ["<leader>dr"] = {"<cmd> DapContinue <CR>", "Run or continue the debugger"}
  },
}

M.harpoon = {
  n = {
    ["ha"] = {
      function ()
        require("harpoon.mark").add_file()
      end,
      "Harpoon adds mark"
    },
    ["hv"] = {
      function ()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Toggle harpoon menu"
    },
    ["hn"] = {
      function ()
        require("harpoon.ui").nav_next()
      end,
      "Next harpoon mark"
    },
    ["hp"] = {
      function ()
        require("harpoon.ui").nav_prev()
      end,
      "Previous harpoon mark"
    }
  }
}

return M
