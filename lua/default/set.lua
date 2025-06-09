-- colors and background settings
vim.o.bg = "dark"
vim.o.termguicolors = false
-- dark and false is the default, with lots of green    -- cool for dark backgrounds
-- light and false, with blue and red                   -- cool for light backgrounds
-- dark and true is blue and yellow and bright          -- cool for dark backgrounds
-- light and true, with dark blue and pink              -- cool for light backgrounds

vim.o.backup = false -- if true, creates a backup file
vim.o.clipboard = "unnamedplus" -- set shared clipboard (between OS and Neovim)
vim.o.encoding = "utf-8" -- set default encoding
vim.o.expandtab = true -- convert tabs to spaces
vim.o.hlsearch = false -- set highlight on search
vim.o.incsearch = true -- set incremental search
vim.o.laststatus = 0
vim.o.nu = true -- enable line numbers
vim.o.relativenumber = true -- enable relative line numbers
vim.o.ruler = false
vim.o.scrolloff = 14 -- set minimum line buffer during scroll to "n" lines
vim.o.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.o.showcmd = false -- display incomplete commands
vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.o.smartindent = true -- make indenting smarter again
vim.o.softtabstop = 4 -- number of spaces that a tab counts for while performing editing operations
vim.o.splitbelow = true -- splits open at the bottom, which is non-retarded, unlike vim defaults.
vim.o.splitright = true -- splits open to the right, which is non-retarded, unlike vim defaults.
vim.o.swapfile = false -- if true, creates a swapfile
vim.o.tabstop = 4 -- insert 'n' spaces for a tab
vim.o.title = true -- set title to be file name, rather than 'nvim'
vim.o.undofile = true -- save undo history

vim.o.signcolumn = "no" -- set signcolumn
-- without LSP, this option is ignored (default: yes?)
-- with LSP, I set it to no (otherwise, it's an ugly grey bar)

vim.o.wildmode = "full"
--vim.o.wildmode = "longest:full"	-- doesn't allow for tabbing through the menu
--vim.o.wildmode = "longest,full"	-- does allow for tabbing - seems identical to 'full'

-- set up for vimwiki, need to clean up
vim.cmd('filetype plugin on')
vim.o.compatible = false -- enable file type detection
vim.cmd('set nocompatible') -- this appears to be redundant
--vim.o.syntax = on -- enable syntax highlighting -- Lua LSP throws error about "on", but "true" breaks in Neovim v0.10
vim.cmd('syntax on') -- enable syntax highlighting -- this appears to be redundant; but, avoids the errors of `vim.o.syntax = on`

-- fixing unsupported characters in vim-airline
vim.cmd ([[
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.colnr = ' C:'
    let g:airline_symbols.linenr = ' L:'
    let g:airline_symbols.maxlinenr = ' '
]])
