vim.lsp.config["java_language_server"] = {
	cmd = { "/home/illinab/java-language-server/dist/lang_server_linux.sh" }
}

vim.lsp.enable("java_language_server")
vim.lsp.enable("kotlin_language_server")
vim.lsp.enable("csharp_ls")
vim.lsp.enable("lua_ls")
