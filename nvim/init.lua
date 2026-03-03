require("config.lazy")
require("config.keymaps")


-- Tabs
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.expandtab = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Misc
vim.opt.number = true
vim.opt.colorcolumn = "80"

vim.api.nvim_create_user_command(
  "ChangeTabSize",
  function(opts)
    local length = tonumber(opts.args)
    vim.opt.tabstop=length
    vim.opt.shiftwidth=length
    vim.opt.softtabstop=length
    print("Bruh: " .. length)
  end,
  {
    nargs = 1,
    desc = "Change the tab size to the argument provided"
  }
)
