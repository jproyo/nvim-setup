# Keybindings

## Plugins

### [vim-surround](https://github.com/tpope/vim-surround)
cs"'  replace surrouding " for '
ds"   remove surrounding "
yss"  add surrounding "
ysiw" add surround " on current word/object
[visual] S

### [Snippets](https://github.com/neoclide/coc-snippets)
You must add them at `.config/nvim/snippets/`.
<C-j> next placeholder
<C-k> previous placeholder
:CocList snippets

### [vim-fugitive](https://github.com/tpope/vim-fugitive)

:Git command        Raw commands
:Gwrite                :Git add %
:Gread                 :Git checkout %
:Gremove               :Git rm %
:Gmove [relative/abs]  :Git mv from to
:Gcommit
:Gblame
:Gdiff (:Gvdiff)
  Left (index file) Right (working copy)
  :Gwrite (at index file) == :Gread (working copy)
  :Gread (at index file) == :Gwrie(working copy)
  :diffget chunk    index -> working
  :diffput chunk    working -> index
     You can save the index file => will only stage the modified patches
     Check it out with $git diff --cached
  :diffupdate (to update buffer)
  :do                      :diffget
  :dp                      :diffput
  :.diffget                only current line
  [visual] :'<,'>diffget   only some lines

Merging:
  After `git merge branch` conflict may arise.
  open the conflict file and then :Gvdiff
  Left (target = our branch), middle (working copy), right (merge branch)
  :diffget buffer (from the middle) (:ls for buffer, look for //2, //3
  :diffput buffer (from left or right)
  Then :on, :w, :Gstatus, stage merged files, cc (commit conflicts)
  :Gwrite! from left or right if you want to discard the other file.

:Gstatus (press g? to show help)
  <C-n>, <C-n>          to navigate
  -                     to stage/unstage
  X                     discard changes
  =                     inline diff
  dd (dv)               diff on file

:Glog  n [--reverse] (current file)
Load in the buffer all previous revisions
:cnext (<-) :cprevious (->)
:Gedit  go back

:Glog -- path [% current]
:Glog --
  Then :copen
  use hjkl to move and enter to see the commit
:Glog --grep=.. -- <!-- show commit where message includes-->

:Ggrep word
:copen

:Ggrep 'word' branchName/hash <!--Opens read only buffer-->

<!--Search for a word added or deleted-->
:Glog -S... --

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

### [vim-easy-align](https://github.com/junegunn/vim-easy-align)
[Visual] ga<character_to_align>
gaip=
    2=  around the 2n occurrences
    *=  around all occurrences
    <Enter>  Switching between left/right/center alignment
<space>
,
Regular expression

### [vim-hoogle](https://github.com/Twinside/vim-hoogle)

:Hoogle            current word
:Hoogle <search>

### [multi-cursor](https://github.com/terryma/vim-multiple-cursors)
<C-n> on a word and then
  <C-n> select
  <C-x> skip
  <C-p> previous
  Then you can just use A, I, delete word and insert: c or s

<M-n> select all occurences
<ESC> back to regular

[Visual] Select lines and then <C-n> to add a curson on each line
         Then, for example, you can move to the end of line A

## Basic commands

### Coc

gd            goto definition
<leader>ac    codeAction on current line
F             format
K             show documentation
<leader>rn    rename
<space>a      diagnostic
<space>o      outline symbol curent document
<space>s      search symbol workspace
<space>j      default action next item
<space>k      default action previous item
<space>p      latest coc list
<leader><ESC> close preview (signature help)
<M-B>         metals build import
<C-j>         snippet next placeholder
<C-k>         snippet previous placeholder
;h            haskel import

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
      o  to change selection direction
Press V, for visual whole liness
Pres <C-v> for block selecting.
   e.g. delete the middle column of a table <c-v>, 3j, w, h and d

### New line
o / O: new line after cursor / new line before cursor.

### Back and forth files/locations
<C-o> and <C-i>:  jump back and forth between recent points in files

### Move line up
ddkP

### Split screens
<C-w> v     vertical split
<C-w> S     horizontal split
<C-w> q     close window
:on         close all except this

### Files
:w filename.txt           Write current content to file
:new filename.txt         Open new buffer with the given name.

### Open link
gx       on browser
gf       open link on file

### Search
<f char>      ; (next ocurrence)
              , (previous)
<F char>      backwards
/             n and N
   You can use regex:
      /^the  /the$    /t.e
? (backwards) n and N
*             * and #
<C-z>         clear search highlight

### Substitute
:s/old/new/g   line
:%s/old/new/g  file
:%s/old/new/gc file + propt

### Marks
m[a..z]    mark a line
'[a..z]    jump to   mark
:marks     list marks

### Motions
N w   word forward        e.g. 2dd (delete two lines)
N W   word forward with special characters
      e.g. special-word special/word/yey
      works for W, E, ...
N aw  a word (whitespaces incluses)
N iw  in word
N e   until the end of this word
N ge  until the end of this word (backwards)
N b   word backwards
N $   until end of line
N )   sentence forward
N (   sentence backward
N }   paragraph forward
^ 0 <HOME>  start of line
$ <END>     end of line
A / I: append end of line / insert start of line
50G         Goto line 50
%    matching (, [, {
gg and G   star or end of file
M          middle of document

### Text objects

### Scrolling
<C-f>   forward screen
<C-b>   backward screen
<C-u>   down half a screen
<C-d>   up half a screen
<C-y>   down line
<C-e>   up line
zz      center line on screen

### Help
<F1> or :help

# Delete, rename and change
d           delete
  df"       delete from cursor to "
c           change
  c2w..
  cc
r           rename (delete + <ESC>)
R           to replace
D           d$
C           d$
s           change char
S           c$
x           delete char
X           delete char (backwards)

# Miscelaneous
:!command

