local vim = vim

vim.keymap.set("i", "jj", "<esc>", { desc = "退出插入模式" })
vim.keymap.set("n", "H", "^", { desc = "移動到行首" })
vim.keymap.set("n", "L", "$", { desc = "跳轉到行尾" })

vim.keymap.set("n", "<leader>p", "<CMD>NvimTreeToggle<CR>", { desc = "切換檔案樹" })

vim.keymap.set("n", "<leader>bd", "<CMD>BufferClose<CR>", { desc = "關閉當前緩衝區" })
vim.keymap.set("n", "<leader>bn", "<CMD>BufferNext<CR>", { desc = "下一個緩衝區" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "左視窗" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "下視窗" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "上視窗" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "右視窗" })

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
	end
end, { desc = "執行程式碼" })
