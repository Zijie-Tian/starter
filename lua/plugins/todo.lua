return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = {
      -- 默认标签（已存在则合并）
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      WHY = { icon = " ", color = "info", alt = { "REASON", "RATIONALE" } },
      -- 新增自定义标签
      NOTICE = {
        icon = "󱧫 ", -- 图标（需 nvim-web-devicons 支持）
        color = "error", -- 红色高亮（使用 LazyVim 的 error 颜色组）
        alt = { "ATTENTION", "ALERT" }, -- 别名（匹配 ATTENTION/ALERT）
      },
      EXPLAIN = {
        icon = " ", -- 图标
        color = "hint", -- 蓝色高亮（使用 LazyVim 的 hint 颜色组）
        alt = { "DETAIL", "DESCRIBE" }, -- 别名
      },
    },
    -- 可选：覆盖颜色组（调整红色/蓝色的具体样式）
    colors = {
      error = { "#FF0000", "DiagnosticError", "ErrorMsg", "#FCE4EC" }, -- NOTICE 的红色
      hint = { "#4FC3F7", "DiagnosticHint", "Hint", "#E3F2FD" }, -- EXPLAIN 的蓝色
      info = { "#80DEEA", "DiagnosticInfo", "Info", "#E8F5E9" }, -- 浅蓝色
    },
  },
}
