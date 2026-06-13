return {
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      keymap = {
        preset = "default",
      },

      appearance = {
        use_nvim_cmp_as_default = false,
        kind_icons = {
          Text = "txt",
          Method = "fn",
          Function = "fn",
          Constructor = "ctor",
          Field = "fld",
          Variable = "var",
          Class = "cls",
          Interface = "int",
          Module = "mod",
          Property = "prop",
          Unit = "unit",
          Value = "val",
          Enum = "enum",
          Keyword = "key",
          Snippet = "snip",
          Color = "col",
          File = "file",
          Reference = "ref",
          Folder = "dir",
          EnumMember = "mem",
          Constant = "const",
          Struct = "struct",
          Event = "event",
          Operator = "op",
          TypeParameter = "type",
        },
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },
    },
  },
}
