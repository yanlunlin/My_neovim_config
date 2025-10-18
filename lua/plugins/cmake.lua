return {
  { "nvim-lua/plenary.nvim" },
  {
    "Civitasv/cmake-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      cmake_compile_commands_options = {
        action = "lsp",
      },
      cmake_runner = {
        name = "toggleterm",
        default_opts = {
          toggleterm = {
            derection = "horizontal",
          },
        },
      },
    },
  },
}
