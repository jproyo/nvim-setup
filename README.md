### Neovim

Plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug)
LSP is managed by [coc.vim](https://github.com/neoclide/coc.nvim)
- For scala: [metals](https://scalameta.org/metals/docs/editors/vim.html)
- For haskell: [hie-haskell](https://github.com/haskell/haskell-ide-engine)

# Installing from scratches

Copy all this repository files inside `~/.config/nvim`.

Then open nvim (an error message will appear, you can ignore it) and install
the plugins added through `init.vim` via `:PlugInstall`.

Remember to install __metals-vim__ (info at metals website).
Remember to install __hie-haskell__ and set coc-configuration.
Install [coc-snippets](https://github.com/neoclide/coc-snippets)

Some plugins require node, yarn and python installed in the system.
For python plugins, you must also run `pip install pynvim`.
