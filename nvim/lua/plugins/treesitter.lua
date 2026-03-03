return {
	"nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {"c", "cpp", "python", "lua", "javascript"},
      sync_install = false,
      highlight = {
        enable = true,

        -- we can specify a disable function as well

        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end
}
