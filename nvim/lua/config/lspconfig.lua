local lspconfig = require('lspconfig')
local coq = require('coq')

lspconfig.solargraph.setup(coq.lsp_ensure_capabilities{})
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities{})
