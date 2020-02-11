" map leader
let mapleader=','

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Override default behaviour.
"nnoremap o o<Esc>
"nnoremap O O<Esc>

":nnoremap ff :vimgrep <cword> **/*.scala<CR>
:nnoremap ff :vimgrep <cword> **/*.hs<CR>
:nnoremap <leader>ff :vimgrep <cword> **/*.sql<CR>

" Git
:nnoremap gf :G<CR>
:nnoremap gv :Gvdiff<CR>

" Quit
:nnoremap qq :q<CR>

" Replace tabs with spaces
:nnoremap <leader>tt :%s/\t/  /g<CR>

nnoremap <Esc><Esc> :w<CR>
"nnoremap <leader>w :w<CR>
nnoremap <leader>W :wa<CR>

nnoremap Y y$

" Delete without copying
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP


" Switching buffer
nnoremap <C-b> :bn<cr>
nnoremap <C-m> :bp<cr>
nnoremap <leader>b :Buffers<space>
"Tabs
nnoremap <leader>t :tab
nnoremap <M-n> :tabn<cr>
noremap <M-p> :tabp<cr>
nnoremap <C-Tab> :tabn<cr>
nnoremap <C-S-Tab> :tabp<cr>
nnoremap tn :tabe<CR>
nnoremap te :tabe %<CR>
nnoremap tf :tabf<Space>
nnoremap tc :tabc<CR>
nnoremap to :tabo<CR>
nnoremap tm :tabm<CR>
nnoremap ts :tabs<CR>

nnoremap th :tabr<CR>
nnoremap tj :tabn<CR>
nnoremap tk :tabp<CR>
nnoremap tl :tabl<CR>

"noremap j h
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-x> <C-w><C-x>

" Resizing buffer
nnoremap <C-+> :resize +1<CR>
nnoremap <C--> :resize -1<CR>
nnoremap <C->> :vertical resize -1<CR>
nnoremap <C-<> :vertical resize +1<CR>

" Clear search highlighting
nnoremap <C-z> :nohlsearch<CR>

" Terminal mode exit shortcut
:tnoremap <Esc> <C-\><C-n>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"    Nerdtree
map <C-p> :NERDTreeToggle<CR>
map <C-S> :NERDTreeFind<CR>

" Toggle display of tabs and EOF
nnoremap <leader>l :set list!<CR>

" Help on current word
" Vimscript
augroup vimscript_augroup
  autocmd!
  autocmd FileType vim nnoremap <buffer> <M-z> :execute "help" expand("<cword>")<CR>
augroup END

" Fuzzy finder shortcut
nnoremap <C-f> :FZF<CR>

" Disable touchpad on startup / Enable it back on exit (at the OS level)
"autocmd VimEnter * !~/.config/nvim/scripts/touchpad-off.sh
"autocmd VimLeave * !~/.config/nvim/scripts/touchpad-on.sh
"nnoremap <silent> <F3> :!~/.config/nvim/scripts/touchpad-toggle.sh <enter><CR>

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" Search usage of the symbol
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Remap for do action format
"nmap <silent> F <Plug>(coc-action-format) "does not work
nnoremap <silent> F :call CocAction('format')<CR>

" Show signature help
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" close preview (shown for hover / signature help)
nnoremap <leader> <Esc> :pclose<CR>
nnoremap <silent> <M-B> :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'build-import' })<CR>
nnoremap <silent> <M-C> :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'build-connect' })<CR>
nnoremap <silent> <M-D> :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'doctor-run' })<CR>
"nnoremap <silent> <M-Z> :ccl<CR>

" COC Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Hindent & Stylish-haskell
function! HaskellFormat(which) abort
  if a:which ==# 'hindent' || a:which ==# 'both'
    :Hindent
  endif
  if a:which ==# 'stylish' || a:which ==# 'both'
    silent! exe 'undojoin'
    silent! exe 'keepjumps %!stylish-haskell'
  endif
endfunction

augroup haskellStylish
  au!
  " Just hindent
  au FileType haskell nnoremap <leader>hi :Hindent<CR>
  " Just stylish-haskell
  au FileType haskell nnoremap <leader>hs :call HaskellFormat('stylish')<CR>
  " First hindent, then stylish-haskell
  au FileType haskell nnoremap <leader>hf :call HaskellFormat('both')<CR>
augroup END

" Dash
" :nmap <silent> <leader>d <Plug>DashSearch

" Hoogle
"au BufNewFile,BufRead *.hs map <buffer> <F1> :Hoogle
nnoremap <leader>1 :Hoogle<CR>
nnoremap <leader>2 :HoogleClose<CR>
nnoremap <leader>3 :SyntasticToggleMode<CR>

nnoremap <leader>o :only<CR>

"Ghcid bindings
"Start Ghcid with default stack ghci
nnoremap <leader>d :Ghcid -c "stack ghci"<CR>
nnoremap <leader>g :Ghcid -c<space>
nnoremap <leader>i :Ghcid<CR>
nnoremap <leader>k :GhcidKill<CR>

