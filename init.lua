local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local function init()
    require("nvim-tree.api").tree.open()
    require("toggleterm").setup{}
    require('scrollview').setup({
	current_only = true
    })
    require("autoclose").setup({
	options = {
	    disabled_filetypes = { "text", "markdown" },
	},
    })
end

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.o.clipboard = "unnamedplus"
vim.o.number = true
vim.o.shiftwidth = 4
vim.opt.termguicolors = true

vim.api.nvim_command(
    "set whichwrap+=<,>,[,]"
)

vim.api.nvim_create_user_command(
    'SearchBox',
    ':SearchBoxIncSearch',
    {desc = 'Open a search box', nargs = '*'}
)

vim.api.nvim_create_user_command(
    'OpenFugit',
    ':Fugit2',
    {desc = 'Open Fugit2', nargs = '*'}
)

vim.api.nvim_create_user_command(
    'OpenFugitGraph',
    ':Fugit2Graph',
    {desc = 'Open a Fugit2 graph', nargs = '*'}
)

vim.api.nvim_create_user_command(
    'OpenFugitDiff',
    ':Fugit2Diff',
    {desc = 'Open a Fugit2 diff', nargs = '*'}
)

vim.api.nvim_set_keymap(
    "n",
    "<C-F>",
    ":SearchBoxIncSearch<NL>",
    {}
)

vim.g.mapleader = " "
vim.api.nvim_create_autocmd(
    { "VimEnter" },
    { callback = init }
)

require("lazy").setup("plugins")
