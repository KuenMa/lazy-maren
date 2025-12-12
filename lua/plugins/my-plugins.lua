return {

  -- change trouble config
  --   {
  --     "folke/trouble.nvim",
  --     -- opts will be merged with the parent spec
  --     opts = { use_diagnostic_signs = true },
  --   },
  --
  --   -- disable trouble
  --   { "folke/trouble.nvim", enabled = false },
  --
  --   -- override nvim-cmp and add cmp-emoji
  --   {
  --     "hrsh7th/nvim-cmp",
  --     dependencies = { "hrsh7th/cmp-emoji" },
  --     ---@param opts cmp.ConfigSchema
  --     opts = function(_, opts)
  --       table.insert(opts.sources, { name = "emoji" })
  --     end,
  --   },

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
      },
    },
  },

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      vim.g.copilot_no_tab_map = true
    end,
  },
  { "preservim/nerdcommenter" },
}
