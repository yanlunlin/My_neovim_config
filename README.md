<!-- Language Selection -->
**Languages**: [🇺🇸 English](README.md) | [🇹🇼 繁體中文](README.zh-TW.md)

# 🚀 Modern Neovim Configuration

A highly optimized and feature-rich Neovim configuration with LSP support, modern completion, and beautiful UI components.

![main](https://github.com/yanlunlin/My_neovim_config/blob/main/doc/img/main.png)

## ✨ Features

- **🔧 LSP Integration**: Full Language Server Protocol support with auto-completion, diagnostics, and code actions
- **🎨 Beautiful UI**: Catppuccin colorscheme with transparent background and modern status line
- **⚡ Smart Completion**: Fast and intelligent code completion with Blink.cmp
- **📁 File Management**: Integrated file explorer with NvimTree
- **🔍 Fuzzy Finding**: Quick file and text search capabilities
- **🌳 Syntax Highlighting**: Advanced treesitter-based syntax highlighting
- **🔀 Git Integration**: Built-in Git support with Gitsigns and Lazygit
- **🖥️ Terminal Integration**: Seamless terminal experience with ToggleTerm
- **📝 Multiple Languages**: Support for C/C++, Python, Rust, Lua, LaTeX, and Markdown
- **⌨️ Smart Keybindings**: Intuitive keymaps with helpful descriptions
- **🔧 Auto-formatting**: Automatic code formatting with Conform.nvim

## 📋 Requirements

- **Neovim** `>= 0.10.0` (minimum) | `>= 0.14.4` (recommended)
- **Node.js** `>= 16.0.0` - Required for LSP servers
- **npm** - Package manager for Node.js tools
- **Python** `>= 3.8` - Required for Python LSP and tools
- **Git** - Version control and plugin management
- **A Nerd Font** - For proper icon display (recommended: JetBrains Mono Nerd Font)

### Optional Dependencies

- **ripgrep** - Enhanced search functionality
- **fd** - Faster file finding
- **lazygit** - Enhanced Git interface
- **StyLua** - Lua code formatter (auto-installed via Mason)

## 🚀 Installation

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   ```

2. **Clone this configuration**:
   ```bash
   git clone https://github.com/yanlunlin/My_neovim_config.git ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```
   
   Lazy.nvim will automatically install all plugins on first launch.

## ⚙️ Configuration

### StyLua Setup

Create a `.stylua.toml` file in your home directory for consistent Lua formatting:

```toml
# ~/.stylua.toml
indent_type = "Spaces"
indent_width = 2
quote_style = "AutoPreferDouble"
column_width = 120
line_endings = "Unix"
collapse_simple_statement = "Never"
```

### Language Server Configuration

The configuration automatically installs and configures LSP servers for:

- **Lua**: lua-language-server
- **C/C++**: clangd
- **Python**: pyright (auto-installed)
- **Rust**: rust-analyzer (auto-installed)
- **And many more via Mason**

## ⌨️ Key Mappings

### General
- `<Space>` - Leader key
- `jj` - Exit insert mode
- `H` - Move to beginning of line
- `L` - Move to end of line

### File Management
- `<leader>p` - Toggle file explorer
- `<leader>ff` - Find files
- `<leader>fg` - Live grep

### Buffer Management
- `<leader>bd` - Close current buffer
- `<leader>bn` - Next buffer
- `<leader>bp` - Previous buffer

### Window Navigation
- `<C-h>` - Move to left window
- `<C-j>` - Move to down window
- `<C-k>` - Move to up window
- `<C-l>` - Move to right window

### Development
- `<leader>r` - Run current file (supports C, C++, Python, Rust)
- `<leader>g` - Open Lazygit
- `<leader>L` - Open Lazy.nvim interface

### LSP
- `gd` - Go to definition
- `gr` - Go to references
- `K` - Show hover documentation
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol

## 🗂️ Project Structure

```
~/.config/nvim/
├── init.lua                 # Main configuration entry point
├── lazy-lock.json          # Plugin version lock file
├── lua/
│   ├── config/
│   │   ├── lazy.lua        # Lazy.nvim setup
│   │   └── keymap.lua      # Key mappings
│   └── plugins/
│       ├── blink.lua       # Blink.cmp completion engine
│       ├── build.lua       # Build tools (CMake, LaTeX, Markdown)
│       ├── colorscheme.lua # Theme configuration
│       ├── completion.lua  # Completion setup
│       ├── lsp.lua         # LSP configuration
│       ├── search.lua      # Flash.nvim search and navigation
│       ├── snack.lua       # Snacks.nvim utilities
│       ├── terminal.lua    # Terminal integration
│       ├── treesitter.lua  # Syntax highlighting
│       └── ui.lua          # UI enhancements
└── doc/
    └── img/
        └── main.png        # Screenshot
```

## 🔧 Customization

This configuration is designed to be easily customizable:

1. **Add new plugins**: Create new files in `lua/plugins/`
2. **Modify keymaps**: Edit `lua/config/keymap.lua`
3. **Change colorscheme**: Modify `lua/plugins/colorscheme.lua`
4. **Adjust LSP settings**: Edit `lua/plugins/lsp.lua`

## 🐛 Troubleshooting

### Plugin Issues
- Run `:Lazy sync` to update plugins
- Run `:Lazy clean` to remove unused plugins
- Check `:Lazy log` for installation errors

### LSP Issues
- Run `:Mason` to manage language servers
- Check `:LspInfo` for server status
- Verify language servers are installed: `:Mason`

### Performance Issues
- Run `:Lazy profile` to identify slow plugins
- Consider disabling unused language servers in Mason

## 🤝 Contributing

Feel free to submit issues and enhancement requests! This configuration is continuously evolving.

## 📄 License

This configuration is open source and available under the MIT License.

