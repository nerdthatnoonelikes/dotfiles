-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.rust_analyzer.setup{}

local lspconf = require("lspconfig")
-- LSP Servers
lsp = {"pyright", "tsserver", "rust_analyzer", "denols", "html", "texlab"}

for _, server in ipairs(lsp) do
	lspconf[server].setup{}
end

