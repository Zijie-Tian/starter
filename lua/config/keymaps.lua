-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 绑定 <leader>h 系列键到 comment-box.nvim
vim.keymap.set("n", "<leader>hb", "<cmd>CBllbox<CR>", { desc = "Comment Box" }) -- 多行注释框
vim.keymap.set("n", "<leader>hl", "<cmd>CBline<CR>", { desc = "Comment Line" }) -- 单行注释线
vim.keymap.set("n", "<leader>hc", "<cmd>CBcatalog<CR>", { desc = "Comment Styles" }) -- 样式目录
