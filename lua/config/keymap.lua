local vim = vim

vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "%")

vim.keymap.set("n", "<leader>p", "<CMD>NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>bd", "<CMD>BufferClose<CR>")
vim.keymap.set("n", "<leader>bn", "<CMD>BufferNext<CR>")

vim.keymap.set("n", "<leader>g", function()
	require("snacks").lazygit()
end, { desc = "Lazygit" })

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
end)
