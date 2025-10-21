return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "clangd",
        "stylua",
        "bash-language-server",
        "clangd",
        "cmake-language-server",
        "css-lsp",
        "docker-language-server",
        "doctoc",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "prettierd",
        "pyright",
        "rust-analyzer",
        "stylua",
        "texlab",
        "typescript-language-server",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      local function ensure_installed()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end
      if mr.refresh then
        mr.refresh(ensure_installed)
      else
        ensure_installed()
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },

    -- example calling setup directly for each LSP
    config = function()
      vim.diagnostic.config({
        underline = false,
        signs = false,
        update_in_insert = false,
        virtual_text = { space = 2, prefix = "•" },
        severity_sort = true,
        float = {
          border = "rounded",
        },
      })
      local capabilities = require("blink.cmp").get_lsp_capabilities()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang_format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },
}
