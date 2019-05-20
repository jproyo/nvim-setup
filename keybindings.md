# Keybindings

## Plugins

### [vim-surround](https://github.com/tpope/vim-surround)
cs"'  replace surrouding " for '
ds"   remove surrounding "
yss"  add surrounding "
ysiw" add surround " on current word/object

### [Snippets](https://github.com/neoclide/coc-snippets)
You must add them at `.config/nvim/snippets/`.
<C-j> next placeholder
<C-k> previous placeholder
:CocList snippets

### [vim-fugitive](https://github.com/tpope/vim-fugitive)


### [fuzzy-finder](https://github.com/junegunn/fzf/blob/master/README-VIM.md)
<C-p> fuzzy find current directory. Same as :FZF
:FZF ~/scala/fs2  Look for files under your home directory

### [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt)

<C-f>  :NERDTreeToggle
<C-s>  :NERDTreeFind [<path>] Find and reveal the current directory or the given path.
?  Help, use it !

### [nerdcommenter](https://github.com/scrooloose/nerdcommenter)

<leader>c<space>  toggle comment line; For multiline comments line by line
<leader>cm        multi-line comment; For multiline comments all lines together
<leader>cu        multi-line uncomment; <leader>c<space> also works!

<leader>cc        comment line
<leader>c$        cursor to the end
<leader>cA        comment end of line and insert

### [vim-hoogle](https://github.com/Twinside/vim-hoogle)

:Hoogle            current word
:Hoogle <search>

### [multi-cursor](https://github.com/terryma/vim-multiple-cursors)
todo

## Basic commands

### Switching
<M-h>
<M-j>
<M-k>
<M-l>

### Moving
<M-H>
<M-J>
<M-K>
<M-L>
<M-x>

### Resizing
<M-=>
<M-+>
<M-->
<M-<>
<M->>

### Copy / Paste
In Normal mode:
 d: to cut
 y: to copy (yank)
 p: paste after cursor
 P: paste before cursor

Press v, move to select, press d/y and then p to paste

Using motion: y/d{motion}
 - yy: line
 - y$: line no trailing-space
 - yiw – yank the current word (excluding surrounding whitespace)

### Start / End of line
^ / $: start of line / end of line
A / I: append end of line / insert start of line

### New line
o / O: new line after cursor / new line before cursor.

### Move line up
ddkP
