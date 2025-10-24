<!-- Language Selection -->
**語言選擇**: [🇺🇸 English](README.md) | [🇹🇼 繁體中文](README.zh-TW.md)

# 🚀 現代化 Neovim 配置

一個高度優化且功能豐富的 Neovim 配置，支援 LSP、現代化的自動補全和美觀的使用者介面。

![main](https://github.com/yanlunlin/My_neovim_config/blob/main/doc/img/main.png)

## ✨ 特色功能

- **🔧 LSP 整合**: 完整的語言伺服器協定支援，提供自動補全、診斷和程式碼操作。
- **🎨 美觀的使用者介面**: Catppuccin 主題，支援透明背景和現代化的狀態列。
- **⚡ 智慧補全**: 使用 Blink.cmp 提供快速且智慧的程式碼補全。
- **📁 檔案管理**: 使用 Yazi.nvim 整合的檔案管理器。
- **🔍 模糊搜尋**: 使用 Flash.nvim 提供快速的檔案和文字搜尋功能。
- **🌳 語法高亮**: 基於 treesitter 的進階語法高亮。
- **🔀 Git 整合**: 內建 Gitsigns 和 Lazygit 的 Git 支援。
- **🖥️ 終端機整合**: 使用 ToggleTerm 提供無縫的終端機體驗。
- **📝 多語言支援**: 支援 C/C++、Python、Rust、Lua、LaTeX 和 Markdown。
- **⌨️ 智慧按鍵綁定**: 直觀的按鍵映射，並提供有用的描述。
- **🔧 自動格式化**: 使用 Conform.nvim 自動格式化程式碼。

## 📋 需求

- **Neovim** `>= 0.10.0` (最低版本) | `>= 0.14.4` (建議版本)
- **Node.js** `>= 16.0.0` - LSP 伺服器所需
- **npm** - Node.js 工具的套件管理器
- **Python** `>= 3.8` - Python LSP 和工具所需
- **Git** - 版本控制和插件管理
- **Nerd 字體** - 用於正確顯示圖示 (建議使用 JetBrains Mono Nerd Font)

### 可選依賴

- **ripgrep** - 增強的搜尋功能
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

在您的 home 目錄中建立一個 `.stylua.toml` 檔案，以保持 Lua 格式化的一致性：

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

此配置會自動為以下語言安裝和設定 LSP 伺服器：

- **Lua**: lua-language-server
- **C/C++**: clangd
- **Python**: pyright (自動安裝)
- **Rust**: rust-analyzer (自動安裝)
- **以及更多透過 Mason 提供的語言**

## ⌨️ 按鍵映射

### 一般操作
- `<Space>` - Leader 鍵
- `jj` - 退出插入模式
- `H` - 移動到行首
- `L` - 移動到行尾

**提示**: 按下 `<leader>?` 可以查看可用的按鍵綁定列表。

### 檔案管理
- `<leader>p` - 在目前檔案位置開啟 yazi
- `<leader>cw` - 在 nvim 的工作目錄中開啟檔案管理器
- `<c-up>` - 恢復上一個 yazi 工作階段

### 緩衝區管理
- `<leader>bd` - 關閉當前緩衝區
- `<leader>bn` - 下一個緩衝區
- `<leader>bp` - 上一個緩衝區

### 視窗導覽
- `<C-h>` - 移動到左側視窗
- `<C-j>` - 移動到下方視窗
- `<C-k>` - 移動到上方視窗
- `<C-l>` - 移動到右側視窗

### 開發
- `<leader>r` - 執行當前檔案 (支援 C, C++, Python, Rust)
- `<leader>g` - 開啟 Lazygit
- `<leader>L` - 開啟 Lazy.nvim 介面

### LSP
- `gd` - 跳轉至定義
- `gr` - 跳轉至參考
- `K` - 顯示懸停文件
- `<leader>ca` - 程式碼操作
- `<leader>rn` - 重新命名符號

## 🗂️ 專案結構

```
~/.config/nvim/
├── init.lua                 # 主要配置入口點點
├── lazy-lock.json          # 插件版本鎖定檔案
├── lua/
│   ├── config/
│   │   ├── lazy.lua        # Lazy.nvim 設定
│   │   ├── keymap.lua      # 按鍵映射
│   │   └── autocmd.lua     # 自動化指令
│   └── plugins/
│       ├── blink.lua      # 補全引擎 (Blink.cmp)
│       ├── build.lua      # 建置工具 (CMake, VimTeX, Render Markdown)
│       ├── colorscheme.lua # 色彩主題設定 (Catppuccin)
│       ├── completion.lua  # 補全相關 (nvim-autopairs, nvim-ts-autotag, mini.surround)
│       ├── lsp.lua         # LSP 設定 (Mason, nvim-lspconfig, conform.nvim)
│       ├── search.lua     # 搜尋與導覽 (Flash.nvim)
│       ├── snack.lua      # 各種工具函式 (Snacks.nvim)
│       ├── terminal.lua   # 終端機整合 (ToggleTerm)
│       ├── treesitter.lua # 語法高亮 (nvim-treesitter)
│       ├── ui.lua         # UI 增強 (Lualine, Barbar, Rainbow Delimiters, Noice, Yazi, Which-key, Colorizer)
│       └── ...            # 其他外掛設定
└── doc/
    └── img/
        └── main.png       # 截圖
```

## 🔧 客製化

此設定設計為易於客製化：

1. **新增插件**: 在 `lua/plugins/` 中建立新檔案
2. **修改按鍵對應**: 編輯 `lua/config/keymap.lua`
3. **變更色彩主題**: 修改 `lua/plugins/colorscheme.lua`
4. **調整 LSP 設定**: 編輯 `lua/plugins/lsp.lua`

## 🐛 疑難排解

### 插件問題
- 執行 `:Lazy sync` 更新插件
- 執行 `:Lazy clean` 移除未使用的插件
- 檢查 `:Lazy log` 以取得安裝錯誤

### LSP 問題
- 執行 `:Mason` 管理語言伺服器
- 檢查 `:LspInfo` 以取得伺服器狀態
- 確認語言伺服器已安裝：`:Mason`

### 效能問題
- 執行 `:Lazy profile` 以識別執行緩慢的外掛
- 考慮在 Mason 中停用未使用的語言伺服器

## 🤝 貢獻

歡迎提交問題和功能強化請求！此配置會持續更新改進。

## 📄 授權條款

此配置為開源專案，並根據 MIT 授權條款提供。
