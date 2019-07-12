call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'                                         " git plugin
Plug 'vim-airline/vim-airline'                                    " bottom status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy finder conf
Plug 'junegunn/fzf.vim'                                           " fuzzy finder
Plug 'scrooloose/nerdtree'                                        " folders tree
Plug 'scrooloose/nerdcommenter'                                   " code commenter
Plug 'dracula/vim'                                                " dark theme
" Plug 'kien/rainbow_parentheses.vim'                               " for nested parentheses
Plug 'luochen1990/rainbow'                                        " Colored parentheses
Plug 'tpope/vim-surround'                                         " quickly edit surroundings (brackets, html tags, etc)
Plug 'junegunn/vim-easy-align'                                    " alignment plugin
Plug 'neomake/neomake'                                            " run programs asynchronously and highlight errors
Plug 'Valloric/MatchTagAlways'                                    " highlights html enclosing tags
Plug 'Twinside/vim-hoogle'                                        " Hoogle search (Haskell) in Vim
Plug 'Shougo/unite.vim'                                           " Required by some haskell plugins
Plug 'ujihisa/unite-haskellimport'                                " Suggestions on imports
Plug 'terryma/vim-multiple-cursors'                               " Multiple cursors selection, etc
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}        " LSP client + autocompletion plugin
Plug 'itchyny/lightline.vim'                                      " configurable status line (can be used by coc)
Plug 'derekwyatt/vim-scala'                                       " scala plugin
" Plug 'easymotion/vim-easymotion'
" Plug 'tpope/vim-repeat'
Plug 'Xuyuanp/nerdtree-git-plugin'                                " Shows files git status on the NerdTree
Plug 'airblade/vim-gitgutter'                                     " Show file git status
" Plug 'rhysd/vim-grammarous'                                      " Grammar checker
" Plug 'mileszs/ack.vim'                                            "Search Tool
Plug 'neovimhaskell/haskell-vim'                                  " Haskell Syntax and Identation
Plug 'alx741/vim-stylishask'                                      " Haskell Formatting
Plug 'alx741/vim-hindent'                                         " Haskell Formatting
Plug 'w0rp/ale'                                                   " Haskell Linting
" Didn't work for scala cucumbers
" Plug 'tpope/vim-cucumber'                                         " Cucumber goto definition
Plug 'rizzatti/dash.vim'      "Dash
Plug 'tpope/vim-unimpaired'                                       "better navigation

Plug 'ekalinin/Dockerfile.vim'
Plug 'LnL7/vim-nix'                                               "Nix expressions in vim

call plug#end()

