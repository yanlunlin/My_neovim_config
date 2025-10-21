<!-- Language Selection -->
**語言選擇**: [🇺🇸 English](README.md) | [🇹🇼 繁體中文](README.zh-TW.md)

# 🚀 現代化 Neovim 配置

高度優化且功能豐富的 Neovim 配置，具備 LSP 支援、現代化補全功能和美觀的 UI 組件。

![main](https://github.com/yanlunlin/My_neovim_config/blob/main/doc/img/main.png)

## ✨ 特色功能

- **🔧 LSP 整合**: 完整的語言伺服器協議支援，包含自動補全、診斷和程式碼操作
- **🎨 美觀介面**: Catppuccin 主題配色，透明背景和現代化狀態列
- **⚡ 智慧補全**: 快速且智能的程式碼補全功能，使用 Blink.cmp
- **📁 檔案管理**: 整合式檔案瀏覽器 NvimTree
- **🔍 模糊搜尋**: 快速檔案和文字搜尋功能
- **🌳 語法高亮**: 基於 treesitter 的進階語法高亮
- **🔀 Git 整合**: 內建 Git 支援，包含 Gitsigns 和 Lazygit
- **🖥️ 終端機整合**: 無縫的終端機體驗，使用 ToggleTerm
- **📝 多語言支援**: 支援 C/C++、Python、Rust、Lua、LaTeX 和 Markdown
- **⌨️ 智慧按鍵綁定**: 直觀的按鍵映射，附有有用的說明
- **🔧 自動格式化**: 使用 Conform.nvim 進行自動程式碼格式化

## 📋 系統需求

- **Neovim** `>= 0.10.0` (最低版本) | `>= 0.14.4` (建議版本)
- **Node.js** `>= 16.0.0` - LSP 伺服器所需
- **npm** - Node.js 工具的套件管理器
- **Python** `>= 3.8` - Python LSP 和工具所需
- **Git** - 版本控制和插件管理
- **Nerd Font 字型** - 正確顯示圖示 (建議：JetBrains Mono Nerd Font)

### 可選依賴項

- **ripgrep** - 增強搜尋功能
- **fd** - 更快的檔案搜尋
- **lazygit** - 增強的 Git 介面
- **StyLua** - Lua 程式碼格式化工具 (透過 Mason 自動安裝)

## 🚀 安裝步驟

1. **備份現有配置** (如果有的話):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   ```

2. **複製此配置**:
   ```bash
   git clone https://github.com/yanlunlin/My_neovim_config.git ~/.config/nvim
   ```

3. **啟動 Neovim**:
   ```bash
   nvim
   ```
   
   Lazy.nvim 會在首次啟動時自動安裝所有插件。

## ⚙️ 配置設定

### StyLua 設定

在家目錄建立 `.stylua.toml` 檔案以確保 Lua 程式碼格式一致：

```toml
# ~/.stylua.toml
indent_type = "Spaces"
indent_width = 2
quote_style = "AutoPreferDouble"
column_width = 120
line_endings = "Unix"
collapse_simple_statement = "Never"
```

### 語言伺服器配置

此配置會自動安裝並設定以下語言的 LSP 伺服器：

- **Lua**: lua-language-server
- **C/C++**: clangd
- **Python**: pyright (自動安裝)
- **Rust**: rust-analyzer (自動安裝)
- **更多語言支援透過 Mason 提供**

## ⌨️ 按鍵映射

### 一般操作
- `<Space>` - Leader 鍵
- `jj` - 退出插入模式
- `H` - 移動到行首
- `L` - 移動到行尾

### 檔案管理
- `<leader>p` - 切換檔案樹
- `<leader>ff` - 搜尋檔案
- `<leader>fg` - 即時文字搜尋

### 緩衝區管理
- `<leader>bd` - 關閉當前緩衝區
- `<leader>bn` - 下一個緩衝區
- `<leader>bp` - 上一個緩衝區

### 視窗導航
- `<C-h>` - 移動到左視窗
- `<C-j>` - 移動到下視窗
- `<C-k>` - 移動到上視窗
- `<C-l>` - 移動到右視窗

### 開發功能
- `<leader>r` - 執行當前檔案 (支援 C、C++、Python、Rust)
- `<leader>g` - 開啟 Lazygit
- `<leader>L` - 開啟 Lazy.nvim 介面

### LSP 功能
- `gd` - 跳轉到定義
- `gr` - 跳轉到引用
- `K` - 顯示懸停文件
- `<leader>ca` - 程式碼操作
- `<leader>rn` - 重新命名符號

## 🗂️ 專案結構

```
~/.config/nvim/
├── init.lua                 # 主要配置入口點
├── lazy-lock.json          # 插件版本鎖定檔案
├── lua/
│   ├── config/
│   │   ├── lazy.lua        # Lazy.nvim 設定
│   │   └── keymap.lua      # 按鍵映射
│   └── plugins/
│       ├── blink.lua       # Blink.cmp 補全引擎
│       ├── build.lua       # 建置工具 (CMake、LaTeX、Markdown)
│       ├── colorscheme.lua # 主題配置
│       ├── completion.lua  # 補全設定
│       ├── lsp.lua         # LSP 配置
│       ├── search.lua      # Flash.nvim 搜尋與導航
│       ├── snack.lua       # Snacks.nvim 工具集
│       ├── terminal.lua    # 終端機整合
│       ├── treesitter.lua  # 語法高亮
│       └── ui.lua          # UI 增強
└── doc/
    └── img/
        └── main.png        # 截圖
```

## 🔧 自訂設定

此配置設計為易於自訂：

1. **新增插件**: 在 `lua/plugins/` 中建立新檔案
2. **修改按鍵**: 編輯 `lua/config/keymap.lua`
3. **更換主題**: 修改 `lua/plugins/colorscheme.lua`
4. **調整 LSP 設定**: 編輯 `lua/plugins/lsp.lua`

## 🐛 疑難排解

### 插件問題
- 執行 `:Lazy sync` 更新插件
- 執行 `:Lazy clean` 移除未使用的插件
- 檢查 `:Lazy log` 查看安裝錯誤

### LSP 問題
- 執行 `:Mason` 管理語言伺服器
- 檢查 `:LspInfo` 查看伺服器狀態
- 確認語言伺服器已安裝：`:Mason`

### 效能問題
- 執行 `:Lazy profile` 識別緩慢的插件
- 考慮在 Mason 中停用未使用的語言伺服器

## 🤝 貢獻

歡迎提交問題和功能請求！此配置會持續更新改進。

## 📄 授權條款

此配置為開源專案，採用 MIT 授權條款。