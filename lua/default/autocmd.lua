-- future project: rewrite the following in lua
-- autocmd functions are easy -- I already know the syntax
-- nvim_create_autocmd({event}, {*opts})

-- perform dot commands over visual blocks:
vim.cmd ([[
    vnoremap . :normal .<CR>
]])

-- Ensure files are read as what I want:
vim.cmd ([[
    let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
    map <leader>v :VimwikiIndex<CR>
    let g:vimwiki_list = [{'path': '~/.local/share/nvim/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
    autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
    autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
    autocmd BufRead,BufNewFile *.tex set filetype=tex
]])

-- function for automatically deleting all trailing whitespace and newlines at end of file on save. & reset cursor position
vim.cmd ([[
    autocmd BufWritePre * let currPos = getpos(".")
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritePre * %s/\n\+\%$//e
    autocmd BufWritePre *.[ch] %s/\%$/\r/e " add trailing newline for ANSI C standard
    autocmd BufWritePre *neomutt* %s/^--$/-- /e " dash-dash-space signature delimiter in emails
    autocmd BufWritePre * cal cursor(currPos[1], currPos[2])
]])

-- function for toggling the bottom status bar:
vim.cmd ([[
    let s:hidden_all = 0
    function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
    endfunction
    nnoremap <leader>h :call ToggleHiddenAll()<CR>
]])
