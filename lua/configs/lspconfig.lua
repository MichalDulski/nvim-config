require("nvchad.configs.lspconfig").defaults()

local servers = {
    "html", "cssls",
    "docker_compose_language_service", "docker_language_server",
    "lua_ls", "marksman", "postgres_lsp",
    "ts_ls", -- https://github.com/typescript-language-server/typescript-language-server

}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
vim.lsp.config("roslyn", {})
