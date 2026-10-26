return {
  cmd = { "texlab" },

  filetypes = {
    "tex",
    "plaintex",
    "bib",
  },

  root_markers = {
    ".git",
    ".latexmkrc",
    "latexmkrc",
    ".texlabroot",
    "texlabroot",
    "Tectonic.toml",
  },

  settings = {
    texlab = {
      -- ビルドは vimtex に任せる
      build = {
        onSave = false,
        forwardSearchAfter = false,
      },

      -- 診断の基本設定
      chktex = {
        onOpenAndSave = false,
        onEdit = false,
      },
    },
  },
}
