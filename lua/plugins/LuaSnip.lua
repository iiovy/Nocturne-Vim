return {
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local ok, loader = pcall(require, "luasnip.loaders.from_vscode")
      if not ok then return end
      loader.lazy_load()
    end,
  },
}
