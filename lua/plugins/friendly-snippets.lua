-- lua/plugins/extra.lua
return {
  "rafamadriz/friendly-snippets",
  dependencies = "L3MON4D3/LuaSnip", -- LazyVim 已默认安装
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({
      paths = { "~/.config/nvim/snippets/" }, -- 自定义片段路径
      override = true, -- 覆盖原片段
    })
  end,
}
