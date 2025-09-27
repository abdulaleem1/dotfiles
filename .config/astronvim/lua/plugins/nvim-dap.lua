return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require "dap"
    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
          -- return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/src/", "file")
          return vim.fn.input(
            "Path to dll: ",
            vim.fn.getcwd() .. "/Soti.Cloud.LocalConsoleHost/bin/Debug/net8.0/Soti.Cloud.LocalConsoleHost.dll",
            "file"
          )
        end,

        -- justMyCode = false,
        -- stopAtEntry = false,
        -- -- program = function()
        -- --   -- todo: request input from ui
        -- --   return "/path/to/your.dll"
        -- -- end,
        -- env = {
        --   ASPNETCORE_ENVIRONMENT = function()
        --     -- todo: request input from ui
        --     return "Development"
        --   end,
        --   ASPNETCORE_URLS = function()
        --     -- todo: request input from ui
        --     return "http://localhost:5050"
        --   end,
        -- },
        -- cwd = function()
        --   -- todo: request input from ui
        --   return vim.fn.getcwd()
        -- end,
      },
    }
  end,
}
