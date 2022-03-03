set directory=~/.vim/backup
set backupdir=~/.vim/backup " keep swap files here
filetype off                " required

"Start up buffer
"autocmd VimEnter * edit ~/.config/nvim/keybindings.md

" Highlighting for jsonc filetype
augroup Jsonsyntax
  autocmd!
  autocmd FileType json syntax match Comment +\/\/.\+$+
augroup end

" Better Unix support
set viewoptions=folds,options,cursor,unix,slash
set encoding=utf-8
set fileencoding=utf-8

function! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e   " Trim trailing whitespaces
    " %s/\t/  /g    " Replace tabs for whitespaces
    call setpos('.', l:save_cursor)
endfun

"command! TrimWhitespace call TrimWhitespace() " Trim whitespace with command

augroup trim_space
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()  " Trim whitespace on every save
augroup end

" Non-mapped function for tab toggles
function! TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif
endfunc

" map leader
let mapleader=','

set backspace=2

colorscheme dracula
"set background=light
"colorscheme solarized

syntax on
filetype plugin indent on

set shell=/bin/zsh

set laststatus=2
set noshowmode

" Draw a line at 120 columns
" set colorcolumn=120
" highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Fixes broken cursor on Linux
set guicursor=

" General editor options
set hidden                  " Hide files when leaving them.
set number                  " Show line numbers.
set numberwidth=1           " Minimum line number column width.
set cmdheight=2             " Number of screen lines to use for the commandline.
"set textwidth=120           " Lines length limit (0 if no limit).
set formatoptions=jtcrq     " Sensible default line auto cutting and formatting.
set linebreak               " Don't cut lines in the middle of a word .
set showmatch               " Shows matching parenthesis.
set matchtime=2             " Time during which the matching parenthesis is shown.
set listchars=tab:▸\ ,eol:¬ " Invisible characters representation when :set list.
set clipboard=unnamed,unnamedplus   " Copy/Paste to/from clipboard
set cursorline              " Highlight line cursor is currently on
set completeopt+=noinsert   " Select the first item of popup menu automatically without inserting it

" Search
set incsearch  " Incremental search.
set ignorecase " Case insensitive.
set smartcase  " Case insensitive if no uppercase letter in pattern, case sensitive otherwise.
set nowrapscan " Don't go back to first match after the last match is found.

" Fold
" set foldmethod=indent
" set foldlevelstart=1

" Tabs
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" Disable mouse / touchpad (only in vim)
set mouse=nicr

let $FZF_DEFAULT_COMMAND = 'find -L . \( -path ./.git -prune -o -path ./.stack-work -prune \) -o -print'

let g:Tex_ViewRule_pdf = 'open -a Skim'
let g:Tex_CompileRule_pdf =	'pdflatex -shell-escape -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bibtex,makeglossaries,pdf,pdf'
"let g:syntastic_tex_checkers = ['lacheck']

augroup Spell
    autocmd!
    autocmd FileType latex,tex,md,markdown setlocal spell spelllang=en_us
augroup END

let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

let g:neoformat_enabled_haskell = ['sortimports', 'brittany']

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
augroup terminalI
  autocmd!
  autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
augroup end

" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

nnoremap <C-t> :call OpenTerminal()<CR>

let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'

