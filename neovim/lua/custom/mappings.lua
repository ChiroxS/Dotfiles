local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>dbb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dbc"] = {
      "<cmd> DapContinue <CR>",
      "Continue/run"
    },
    ["<leader>dbs"] = {
      "<cmd> DapStepOver <CR>",
      "Step over"
    },
    ["<leader>dbt"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate"
    },
    ["<leader>dus"] = {
      function()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test();
      end,
      "Debug Go test"
    }
  }
}

return M
