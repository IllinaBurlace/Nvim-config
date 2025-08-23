return {
	"jay-babu/mason-nvim-dap.nvim",
	opts = {
		handlers = {},
		automatic_installation = {
			exclude = {
				"delve",
				"python",
			},
		},

		ensure_installed = {
			"bash",
			"codelldb",
			"php",
			"python",
		},
	},
	dependencies = {
		"mfussenegger/nvim-dap",
		"williamboman/mason.nvim",
	},
}
