-- ~/.config/nvim/lsp/clangd.lua

---@type vim.lsp.Config
return {
  -- 1. 起動コマンドと引数
  cmd = {
    "clangd",
    "--background-index",      -- バックグラウンドでインデックスを作成（定義ジャンプが高速化）
    "--clang-tidy",            -- 静的解析ツール clang-tidy を有効化
    "--header-insertion=iwyu", -- Include What You Use（必要なヘッダーを自動挿入）
    "--completion-style=detailed",
    "--function-arg-placeholders",
  },

  -- 2. 対象とするファイルタイプ
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },

  -- 3. プロジェクトのルート（起点）を判断するためのマーカーファイル
  -- compile_commands.json などがあるディレクトリをプロジェクトのルートとみなします
  root_markers = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git",
  },

  -- 4. サーバー固有の初期化オプション
  init_options = {
    fallbackFlags = { "-std=c++20" }, -- プロジェクトに設定がない場合のデフォルトC++バージョン
  },

  -- 5. ハマりどころ対策（エンコーディング設定）
  -- clangdは標準でutf-8を優先しますが、Neovimの標準や一部の補完プラグインと競合して
  -- 警告やフリーズが起きることがあるため、明示的に utf-16 も受け入れるように設定します
  capabilities = {
    offsetEncoding = { "utf-16", "utf-8" },
  },
}
