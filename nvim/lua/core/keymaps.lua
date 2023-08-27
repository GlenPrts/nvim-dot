vim.g.mapleader = " "

local keymap = vim.keymap

-- ----插入模式---- ---
keymap.set("i", "jk", "<ESC>") --<ESC>改jk

-- ----视觉模式---- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ----正常模式---- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") --水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") --垂直新增窗口
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<leader>wc", "<C-w>c")
-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>") --即重新载入文件
-- 缓冲文件切换
keymap.set("n", "]b", "<cmd>bNext<CR>")
keymap.set("n", "[b", "<cmd>bN<CR>")
keymap.set("n", "<leader>bc", "<cmd>bd<CR>")  --关闭缓冲文件
-- 快速保存
keymap.set("n", "<C-s>","<cmd>w<CR>")
-- ----插件---- ---
