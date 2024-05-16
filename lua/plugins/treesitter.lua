return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Ensure Treesitter parsers are up to date
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true, -- Enable syntax highlighting
        },
        indent = {
          enable = true, -- Enable indent functionality
        },
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",  -- Auto tag plugin for HTML/XML and more
    config = function()
      require('nvim-ts-autotag').setup({
        filetypes = { "html", "xml", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue" }
      })
    end
  },
  {
    "windwp/nvim-autopairs",  -- Auto pairs for brackets, quotes, etc.
    config = function()
      require('nvim-autopairs').setup({
        check_ts = true,  -- Use treesitter to check for pairs (advanced matching)
        ts_config = {
          lua = {'string'},  -- it will not add a pair on that treesitter node
          javascript = {'template_string'},
          java = false,  -- Don't check treesitter on java
        }
      })
    end
  }
}

