return {
    {
	"AlphaTechnolog/pywal.nvim",
	as = "pywal",
	colorscheme = "pywal",
	-- config = function() vim.cmd.colorscheme("pywal") end
    },
    {
	"dstein64/nvim-scrollview",
	version = "*",
	opts = {
	    insert_at_start = true,
	},
    },
    {
	'SuperBo/fugit2.nvim',
	build = false,
	opts = {
	    width = 100,
	    insert_at_start = true,
	},
	dependencies = {
	    'MunifTanjim/nui.nvim',
	    'nvim-tree/nvim-web-devicons',
	    'nvim-lua/plenary.nvim',
	    {
		'chrisgrieser/nvim-tinygit',
		dependencies = { 'stevearc/dressing.nvim' }
	    },
	},
	cmd = { 'Fugit2', 'Fugit2Diff', 'Fugit2Graph' },
	keys = {
	    { '<C-H>', mode = 'n', '<cmd>Fugit2<cr>' }
	}
    },
    {
	"m4xshen/autoclose.nvim",
	version = "*",
	opts = {
	    insert_at_start = true,
	},
    },
    {
	"nvim-tree/nvim-tree.lua",
	version = "*",
        lazy = false,
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
        },
	config = function()
        require("nvim-tree").setup {}
	end,
    },
    {
	"johnfrankmorgan/whitespace.nvim",
	version = '*',
	opts = {
	    insert_at_start = true,
	},
    },
    {
	'gelguy/wilder.nvim',
	opts = {
	    insert_at_start = true,
	},
    },
    {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
	    insert_at_start = true,
	},
	dependencies = {
	    "MunifTanjim/nui.nvim",
	    "rcarriga/nvim-notify",
        },
	version = '*',
    },
    {
	"romgrk/barbar.nvim",
	dependencies = {
	    'lewis6991/gitsigns.nvim', -- git status
	    'nvim-tree/nvim-web-devicons', -- icons
	},
	init = function() vim.g.barbar_auto_setup = false end,
	opts = {
	    insert_at_start = true,
	},
	version = '^1.0.0',
    },
    {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
	    insert_at_start = true,
	},
    },
    {
	'VonHeikemen/searchbox.nvim',
	dependencies = {
	    'MunifTanjim/nui.nvim',
	},
    },
    {
	"folke/tokyonight.nvim",
	colorscheme = "tokyonight",
	config = function() vim.cmd.colorscheme("tokyonight") end
    },
    {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	keys = {
	    { "<leader>ff", ":Telescope find_files<cr>" }
	},
	dependencies = "nvim-lua/plenary.nvim"
    },
    {
	"ggandor/leap.nvim",
	keys = { "s", "S" },
	config = function() require("leap").create_default_mappings() end
    },
    {
	"nvim-lualine/lualine.nvim",
	-- opts = { options = { theme = "pywal-nvim" } }
	opts = {}
    },
    {
	"akinsho/toggleterm.nvim",
	opts = {},
	keys = {
	    { "<leader>tt", ":ToggleTerm<cr>" }
	}
    },
    {
	"lewis6991/gitsigns.nvim",
	opts = {}
    },
    {
	"folke/trouble.nvim",
	keys = {
	    { "<leader>tr", ":Trouble<cr>" }
	}
    },
    {
	"kdheepak/lazygit.nvim",
	cmd = {
	    "LazyGit",
	    "LazyGitConfig",
	    "LazyGitCurrentFile",
	    "LazyGitFilter",
	    "LazyGitFilterCurrentFile",
	},
	dependencies = {
	    "nvim-lua/plenary.nvim",
	},
	keys = {
	    { "<leader>g", ":LazyGit<cr>" }
	}
    }
}
