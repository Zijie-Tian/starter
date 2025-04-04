-- 设置主题（必须在插件加载后调用）
vim.cmd.colorscheme("nightfox") -- 替换为你的主题名

-- 可选：自定义高亮组
vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- 透明背景
