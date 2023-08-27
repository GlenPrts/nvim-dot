vim.loader.enable()  --加快启动速度
require("core.lazy") --插件管理
require("core.options") --选项设置
require("core.keymaps") --键盘映射

require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }