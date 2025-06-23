return {
	"folke/edgy.nvim",
	event = "VeryLazy",
	opts = {
		bottom = {
			{
				name = "Terminal",
				ft = "toggleterm",
				size = { height = 0.3 },
				filter = function(buf, win)
					return vim.api.nvim_win_get_config(win).relative == ""
				end,
			},
			"Trouble",
			{
				ft = "diagnostics",
				name = "Diagnostics",
			},
		},
		left = {
		      -- Neo-tree filesystem always takes half the screen height
		      {
			title = "Neo-Tree",
			ft = "neo-tree",
			filter = function(buf)
			  return vim.b[buf].neo_tree_source == "filesystem"
			end,
			size = { height = 0.5 },
		      },
		      {
			title = "Neo-Tree Git",
			ft = "neo-tree",
			filter = function(buf)
			  return vim.b[buf].neo_tree_source == "git_status"
			end,
			pinned = true,
			open = "Neotree position=right git_status",
		      },
		      {
			title = "Neo-Tree Buffers",
			ft = "neo-tree",
			filter = function(buf)
			  return vim.b[buf].neo_tree_source == "buffers"
			end,
			pinned = true,
			open = "Neotree position=top buffers",
		      },
		      {
			title = function()
			  local buf_name = vim.api.nvim_buf_get_name(0) or "[No Name]"
			  return vim.fn.fnamemodify(buf_name, ":t")
			end,
			ft = "Outline",
			pinned = true,
			open = "SymbolsOutlineOpen",
		      },
		      -- any other neo-tree windows
		      "neo-tree",
	    },
	}
}
