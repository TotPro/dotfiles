-- ~/.config/nvim/lsp/pyright.lua

---@type vim.lsp.Config
return {
  -- 1. 起動コマンドと引数
  -- pacman 等でインストールした場合、実行バイナリ名は pyright-langserver になります
  cmd = { "pyright-langserver", "--stdio" },

  -- 2. 対象とするファイルタイプ
  filetypes = { "python" },

  -- 3. プロジェクトのルートを判断するためのマーカーファイル
  root_markers = {
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
    "Pipfile",
    "pyrightconfig.json",
    ".git",
  },

  -- 4. Pyright 固有の設定 (settings テーブル内に記述します)
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        -- 'openFilesOnly' にすると開いているファイルだけ解析し、大規模プロジェクトでの動作が軽くなります
        diagnosticMode = "openFilesOnly", 
        -- 型チェックの厳しさを指定 ("off", "basic", "strict")
        typeCheckingMode = "basic",
      },
    },
  },

  -- 5. 初期化時のオプション設定
  -- 特になければ空でも動作しますが、将来的な拡張用に定義しておくと便利です
  init_options = {},
}
