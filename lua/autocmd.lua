
-- spellcheck in markdown
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	command = "setlocal spell wrap",
})

-- disable automatic comment on new line
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank( { timeout = 50 } )
	end,
})

-- restore cursor pos on file open
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if line  > 1 and line <= vim.fn.line("$") then
			vim.cmd("normal! g'\"")
    end
  end,
})
