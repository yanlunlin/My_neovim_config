return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {
      opts = { enable_close = true, enable_rename = true, enable_close_on_slash = true },
    },
    per_filetpe = {},
  },
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
}
