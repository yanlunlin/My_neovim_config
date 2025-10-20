local vim = vim

vim.keymap.set("i", "jj", "<esc>", { desc = "退出插入模式" })
vim.keymap.set("n", "H", "^", { desc = "移動到行首" })
vim.keymap.set("n", "L", "$", { desc = "跳轉到行尾" })

vim.keymap.set("n", "<leader>p", "<CMD>NvimTreeToggle<CR>", { desc = "切換檔案樹" })

vim.keymap.set("n", "<leader>bc", "<CMD>BufferClose<CR>", { desc = "關閉當前緩衝區" })
vim.keymap.set("n", "<c-l>", "<CMD>BufferNext<CR>", { desc = "下一個緩衝區" })
vim.keymap.set("n", "<c-h>", "<CMD>BufferPrevious<CR>", { desc = "上一個緩衝區" })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "清除 search highlight" })

vim.keymap.set("n", "<leader>g", function()
  require("snacks").lazygit()
end, { desc = "開啟 Lazygit" })

vim.keymap.set("n", "<leader>r", function()
  local filename = vim.api.nvim_buf_get_name(0)
  local ext = filename:match("^.+(%..+)$")
  if ext == ".c" then
    vim.cmd([[
      TermExec cmd="clang % -lm"
      TermExec cmd="./a.out"
    ]])
  elseif ext == ".cpp" then
    vim.cmd([[
      TermExec cmd="clang++ %"
      TermExec cmd="./a.out"
    ]])
  elseif ext == ".py" then
    vim.cmd([[
      TermExec cmd="python3 %"
    ]])
  elseif ext == ".rs" then
    vim.cmd([[
      TermExec cmd="cargo run"
    ]])
  end
end, { desc = "執行程式碼" })
