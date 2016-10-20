# vim-tla

vim-tla is a [Vim](http://www.vim.org) and [neovim](https://neovim.io/) filetype for the [TLA+](http://research.microsoft.com/en-us/um/people/lamport/tla/tla.html) specification language.

![With text concealing](https://framapic.org/l0kRuBT1yTEO/RYXd8f2u1Rsr.png) ![Without text concealing](https://framapic.org/r0yPjMEVwsee/bdDuauRIPd31.png)

## Features

* Filetype detection based on filename extension
* Highlighting for all TLA+ keywords and operators
* Highlighting for identifiers and symbols declarations
* Highlighting for sets and operators from the standard modules
* Extensive use of the Vim **conceal** feature: all operators can be depicted by the corresponding *unicode symbol*.
* Text outside of a module is highlighted like comments
    
## Installation

### Manual Installation

Copy the files in your Vim directory (usually `~/.vim`).

### Using vim-plug

With [vim-plug](https://github.com/junegunn/vim-plug), add a line corresponding to the `florentc/vim-tla` package in the appropriate section of your `.vimrc`. For instance:

    call plug#begin('~/.vim/plugged')
    " [...]
    Plug 'florentc/vim-tla'
    " [...]
    call plug#end()

Run `:PlugUpdate` to download or update vim-tla.

## Text concealing

When concealing is enabled, operators are displayed using the corresponding unicode character (for instance `∈` instead of `\in`). To enable text concealing:

    :set conceallevel=2

To disable text concealing:

    :set conceallevel=0

By default in normal mode and insert mode, concealing is disabled on the cursor line. See `:help concealcursor` to change these settings. When concealing is enabled, the `\*` marker of inline comments is hidden.

If the concealed characters are hardly visible, try different colorschemes or manually change the foreground and background colors for the `Conceal` highlight group. For example, the following commands will display concealed characters as black text on white background, adapt to your needs:

    :hi Conceal guifg=#000000
    :hi Conceal guibg=#ffffff

If you run Vim in a terminal emulator, you may enable true color support with `:set termguicolors`.