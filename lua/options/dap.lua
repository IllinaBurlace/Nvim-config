local dap = require("dap")

dap.adapters.godot = {
	type = "server",
	host = "127.0.0.1",
	port = 6006,
}

dap.configurations.cs = {
	{
		type = "godot",
		request = "launch",
		name = "Launch Scene",
		project = "${workspaceFolder}",
	}
}

dap.configurations.gdscrips = {
	{
		type = "godot",
		request = "launch",
		name = "Launch Scene",
		project = "${workspaceFolder}",
	}
}
