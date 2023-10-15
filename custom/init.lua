-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- Set options
local opt = vim.opt

-- Line numbers
opt.nu = true
opt.relativenumber = true

-- tab widths
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

-- wrap = bad
opt.wrap = false

-- me undo long time
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.undodir"
opt.undofile = true

-- better "/" searching
opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

-- Keep cursor visible
opt.scrolloff = 8

opt.updatetime = 50

-- keep those lines short
opt.colorcolumn = "120"
