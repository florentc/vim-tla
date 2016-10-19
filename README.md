# vim-tla

vim-tla is a [Vim](http://www.vim.org) and [neovim](https://neovim.io/) filetype for the [TLA+](http://research.microsoft.com/en-us/um/people/lamport/tla/tla.html) specification language.

## Installation

Copy the files in your Vim directory (usually `~/.vim`) or add a line in your `.vimrc` depending on your plugin manager (for example with [vim-plug](https://github.com/junegunn/vim-plug) `Plug 'florentc/vim-tla'` then `:PlugUpdate`).

## Features

* Filetype detection based on filename extension
* Highlighting for all TLA+ keywords and operators
* Highlighting for identifiers and symbols declarations
* Highlighting for sets and operators from the standard modules
* Extensive use of the Vim **conceal** feature: all operators can be depicted by the corresponding *unicode symbol*.
* Text outside of a module is highlighted like comments

## Text concealing

When concealing is enabled, operators are displayed using the corresponding unicode character (for instance `∈` instead of `\in`). To enable text concealing, `set conceallevel=2`. To disable it, `set conceallevel=0`. By default in normal mode and insert mode, concealing is disabled on the cursor line. See `help concealcursor` to change these settings.

When concealing is enabled, the `\*` marker of inline comments is hidden.
