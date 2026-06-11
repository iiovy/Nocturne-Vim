return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',

  opts = {
    auto_install = true,

    ensure_installed = {
      'lua',
      'vim',
      'vimdoc',

      'bash',
      'fish',

      'python',
      'c',
      'cpp',
      'c_sharp',
      'java',
      'rust',
      'go',
      'zig',

      'javascript',
      'typescript',
      'tsx',
      'html',
      'css',
      'json',

      'yaml',
      'toml',
      'xml',

      'markdown',
      'markdown_inline',

      'gitignore',
      'gitcommit',
      'sql',
    },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  },
}
