vim.pack.add({
  {src='https://github.com/nvim-tree/nvim-tree.lua'},
  {src='https://github.com/nvim-lua/plenary.nvim.git'},
})

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
  view ={
    side='right'
  }
})

-- colorscheme
vim.cmd("syntax on")
vim.cmd("syntax enable")
vim.cmd("packadd! dracula_pro")
vim.g.dracula_colorterm = 0
vim.cmd("colorscheme dracula_pro")

vim.cmd("hi CursorLine ctermbg=233")
vim.cmd("hi DraculaTodo cterm=none")
vim.cmd("hi ColorColumn ctermfg=233")

-- Visual settings
vim.o.number=true
vim.o.relativenumber=true
vim.o.numberwidth=1
vim.o.cursorline=true

vim.o.clipboard=unnamed,unnamedplus
vim.o.splitright=true
vim.o.splitbelow=true
vim.o.wrap=true
vim.o.linebreak=true
vim.o.autowrite=true
vim.o.textwidth=80
vim.o.colorcolumn="81"
vim.o.autoindent=true
vim.o.incsearch=true
vim.o.hlsearch=true

-- Indentation settings
vim.o.softtabstop=2
vim.o.shiftwidth=2
vim.o.tabstop=2
vim.o.expandtab=true
-- Round indent to multiple of shiftwidth
vim.o.shiftround=true

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = 'python',
  callback = function()
    vim.api.nvim_buf_set_option(0, "softtabstop", 4)
    vim.api.nvim_buf_set_option(0, "shiftwidth", 4)
  end
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = 'php',
  callback = function()
    vim.api.nvim_buf_set_option(0, "softtabstop", 4)
    vim.api.nvim_buf_set_option(0, "shiftwidth", 4)
  end
})

-- tks @philss for the mappings below 👍(from https://github.com/philss/dotfiles)
-- Mapping <tab> to change tabs navigation
vim.api.nvim_set_keymap('n', '<tab>', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-tab>', ':tabprevious<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', 'fj', '<esc>', { noremap = true })
vim.api.nvim_set_keymap('i', 'fj', '<esc>', { noremap = true })
vim.api.nvim_set_keymap('v', 'fj', '<esc>', { noremap = true })

vim.g.mapleader = "-"

-- Make splits navigation easies
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>q', ':q!', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w!', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })
