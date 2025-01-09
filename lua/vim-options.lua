vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true -- sets vim.opt.relativenumber
vim.opt.spell = true
vim.opt.signcolumn = "auto" -- sets vim.opt.signcolumn to auto
vim.opt.wrap = false -- sets vim.opt.wrap
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.wrap = true
-- search settings

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

colorcolumn = 80

vim.cmd.highlight('DiagnosticUnderlineError guisp=#ff0000 gui=undercurl')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { signs = true, underline = true, virtual_text = { spacing = 5, }, update_in_insert = true, })
