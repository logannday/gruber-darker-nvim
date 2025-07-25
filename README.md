# Gruber Darker for Neovim

A Neovim port of the Gruber Darker color theme, originally created for Emacs by Alexey Kutepov (rexim) and Jason R. Blevins.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "logannday/gruber-darker.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme gruber-darker]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "logannday/gruber-darker.nvim",
  config = function()
    vim.cmd([[colorscheme gruber-darker]])
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'logannday/gruber-darker.nvim'
colorscheme gruber-darker
```

## Usage

After installation, you can activate the theme with:

```vim
:colorscheme gruber-darker
```

Or in your init.lua:

```lua
vim.cmd([[colorscheme gruber-darker]])
```

## Features

- Full support for TreeSitter highlighting
- LSP diagnostics styling
- Support for popular plugins:
  - Telescope
  - NvimTree / Neo-tree
  - GitSigns
  - nvim-cmp
  - WhichKey
  - Indent Blankline
  - Hop / Leap
  - Dashboard
  - Notify
  - Bufferline
- Terminal colors support

## Credits

- Original Emacs theme by [Alexey Kutepov (rexim)](https://github.com/rexim/gruber-darker-theme)
- Based on Gruber Dark theme for BBEdit by John Gruber

## License

MIT License - see the original Emacs theme for full license text.
