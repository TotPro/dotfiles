-- ~/.config/nvim/lsp/bashls.lua

---@type vim.lsp.Config
return {
  -- 1. 起動コマンドと引数
  cmd = { "bash-language-server", "start" },

  -- 2. 対象とするファイルタイプ
  filetypes = { "bash", "sh" },

  -- 3. プロジェクトのルート（起点）を判断するためのマーカーファイル
  root_markers = { ".git" },

  -- 4. bashls 固有のオプション設定
  settings = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)",
    },
  },
}
