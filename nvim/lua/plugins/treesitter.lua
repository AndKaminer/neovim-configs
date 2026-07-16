return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup()

    -- replaces ensure_installed
    require("nvim-treesitter").install({
      "c", "cpp", "python", "lua", "javascript",
    })

    -- replaces highlight + indent (enabled per-filetype now)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c", "cpp", "python", "lua", "javascript" },
      callback = function()
        pcall(vim.treesitter.start)  -- highlighting; also turns off regex syntax
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
