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
    ["<leader>dr"] = {
      function ()
        require('dap').continue()
      end,
      "Run or continue the debugger"
    },
    ["<leader>dn"] = {
      function ()
        require('dap').step_over()
      end,
      "Step over"
    },
    ["<leader>di"] = {
      function ()
        require('dap').step_into()
      end,
      "Step into"
    },
    ["<leader>do"] = {
      function ()
        require('dap').step_out()
      end,
      "Step out"
    },
    ["<leader>dc"] = {
      function ()
         require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
      end,
      "Toggle breakpoint with conditions"
    },
    ["<leader>dt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>db"] = {
      function ()
        require('dap').toggle_breakpoint()
      end,
    "Add breakpoint at line"
    },
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
