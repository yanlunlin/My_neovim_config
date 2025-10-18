return {
  {
    "nvim-mini/mini.surround",
    version = "*",
    opts = {
      mappings = {
        add = "<leader>sa",
        delete = "<leader>sd",
        find = "",
        find_left = "",
        highlight = "",
        update_n_lines = "",
        replace = "",
      },
    },
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          css = true,
          rgb_fn = true,
          hsl_fn = true,
          mode = "background",
          virtualtext = "■",
        },
      })
    end,
  },
}
