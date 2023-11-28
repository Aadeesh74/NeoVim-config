-- auto format on save
local englishGrp = vim.api.nvim_create_augroup("English", { clear = true })
local autoFmtGroup = vim.api.nvim_create_augroup("AutoFmtGrp", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.dart,*.cpp,*.c,*.hpp,*.h,*.hh,*.cc" },
	command = "lua vim.lsp.buf.format()",
	group = englishGrp,
})
