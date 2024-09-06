local opt = vim.opt
local buf = vim.b

-- --- Buffer Settings --- --
-- 设置文件为编码为utf-8
buf.fileencoding = "utf-8"

-- --- 全局设置 --- --
-- 行号
opt.relativenumber = true --相对行号
opt.number = true --显示行号

-- 退格键设置
opt.backspace = { "indent", "eol", "start" }

-- 文件更改自动读取
opt.autoread = true

-- 缩进
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true --空格代替Tab
opt.autoindent = true --自动缩进

-- 防止自动换行
opt.wrap = false

-- 高亮光标行
opt.cursorline = true

-- 启动鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 显示文件标题
opt.title = true

-- 启用undofile(打开文件时恢复未保存变动)
opt.undofile = true
opt.undodir = vim.fn.expand('$HOME/.nvim-undo/')  --文件保存地址

-- 禁止备份文件
opt.swapfile = false
opt.backup = false

-- 搜索
opt.ignorecase = true --忽略大小写
opt.smartcase = true --如果有大写字母则不忽略大小写

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
