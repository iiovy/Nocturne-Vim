return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  opts = {
    auto_install = true,

    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",

      "bash",
      "fish",

      "python",
      "c",
      "cpp",
      "java",
      "rust",
      "go",
      "zig",

      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      "json",

      "yaml",
      "toml",
      "xml",

      "markdown",
      "markdown_inline",

      "gitignore",
      "gitcommit",
      "sql",
    },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  },
}
