return {
  "LudoPinelli/comment-box.nvim",
  keys = {
    -- 此处不再重复定义，已在 keymaps.lua 中绑定
  },
  opts = {
    box_width = 70, -- 默认框宽度
    line_width = 60, -- 单行注释长度
    borders = { -- 自定义边框字符
      top = "─",
      bottom = "─",
      left = "│",
      right = "│",
      top_left = "╭",
      top_right = "╮",
      bottom_left = "╰",
      bottom_right = "╯",
    },
  },
  config = function(_, opts)
    require("comment-box").setup(opts)
    -- 可选：注册自定义模板
    require("comment-box").register_box("note", {
      icon = "󱧫 ",
      border = "rounded",
      title = { top = " NOTE ", bottom = " END NOTE " },
    })
  end,
}
