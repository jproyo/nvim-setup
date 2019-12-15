# Neovim

Plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug)
LSP is managed by [coc.vim](https://github.com/neoclide/coc.nvim)
- For scala: [metals](https://scalameta.org/metals/docs/editors/vim.html)

### Installing from scratches

Clone this repo:

```
$ cd ~/.config
$ git clone git@github.com:monadplus/nvim-setup.git nvim
```

Install vim-plug:

```
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then open nvim (an error message will appear, you can ignore it) and install
the plugins by `:PlugInstall`.

To install install metals follow the [official documentation](https://scalameta.org/metals/docs/editors/vim.html)

Some plugins require node, yarn and python installed in the system.

For python plugins, you must also run `$ pip install pynvim`.

### Tags for haskell

Tags require `fast-tags` on the `$PATH` in order to work.

Tags are created/updated after each save on an `.hs`/`.hsc` file.
It's as simple as saving an `.hs` in order to create them.
