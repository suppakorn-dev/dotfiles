local dap, dapui = require("dap"), require('dapui')
local dapgo = require("dap-go")



dapgo.setup()
dapui.setup()

local close_dap_ui = function ()
  dapui.close()
end

local open_dap_ui = function ()
  dapui.open()
end

dap.listeners.after.event_initialized["dapui_config"] = open_dap_ui
dap.listeners.before.event_terminated["dapui_config"] = close_dap_ui
dap.listeners.before.event_exited["dapui_config"] = close_dap_ui

-- Nodejs
dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = 8443,
  executable = {
    command = "node-debug2-adapter",
  }
}

for _, language in ipairs { "typescript", "javascript" } do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
      runtimeExecutable = "node",
    },
  }
end
