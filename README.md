# JSON Formatter for Neovim

A lightweight Neovim plugin to format JSON files with ease. This plugin provides
key mappings to expand or minify JSON content directly within Neovim.

## Features

- Expand JSON into a readable, indented format.
- Minify JSON into a compact, single-line format.
- Seamless integration with LazyVim and `which-key` for intuitive keybindings.

## Installation

Use your favorite plugin manager to install the plugin. For example, with `lazy.nvim`:

```lua
{
    "osullivandonal/json-format",
    config = function()
        require("json-format").setup()
    end,
}
```

## Key Mappings

The plugin provides the following default key mappings:

- `<leader>je`: Expand JSON
- `<leader>jm`: Minify JSON

You can customize these mappings by passing options to the `setup` function.

## Configuration

You can configure the plugin by calling the `setup` function with your desired options:

```lua
require("json-format").setup({
    expand_key = "<leader>je", -- Key to expand JSON
    minify_key = "<leader>jm", -- Key to minify JSON
})
```

## Dependencies

- [which-key.nvim](https://github.com/folke/which-key.nvim) (optional, for
keybinding descriptions)

## License

This plugin is licensed under the **GNU General Public License v2.0**. See the
`LICENSE` file for more details.
