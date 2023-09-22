vim.g.mapleader = " "

local keymap = vim.keymap

-- 清除搜索的高亮显示
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 使用 x 删除字符时不将其存入寄存器
keymap.set("n", "x", '"_x')

-- 使用 <leader>+/- 增加减小数字
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- 大写键位设置
keymap.set("n", "S", ":w<CR>")
keymap.set("n", "Q", ":q<CR>")
keymap.set("n", "R", ":source $MYVIMRC<CR>")
keymap.set("n", "E", ":set splitright<CR>:vsplit<CR>:e $MYVIMRC<CR>")
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")

-- 分屏操作
keymap.set("n", "<leader>h", ":set nosplitright<CR>:vsplit<CR>:e")
keymap.set("n", "<leader>l", ":set splitright<CR>:vsplit<CR>:e")
keymap.set("n", "<leader>j", ":set splitbelow<CR>:split<CR>:e")
keymap.set("n", "<leader>k", ":set nosplitbelow<CR>:split<CR>:e")
keymap.set("n", "fh", "<C-w>h")
keymap.set("n", "fl", "<C-w>l")
keymap.set("n", "fj", "<C-w>j")
keymap.set("n", "fk", "<C-w>k")

-- tab 操作
keymap.set("n", "ta", ":tabe<CR>")
keymap.set("n", "td", ":tabc<CR>")
keymap.set("n", "tn", ":tabn<CR>")
keymap.set("n", "tp", ":tabp<CR>")

-- 移动选中的行
keymap.set("n", "<down>", "ddp")
keymap.set("n", "<up>", "ddkkp")

-- tab 键缩进
keymap.set("n", "<tab>", "V>")
keymap.set("n", "<s-tab>", "V<")
keymap.set("v", "<tab>", ">gv")
keymap.set("v", "<s-tab>", "<gv")

-- 插入模式下移动光标
keymap.set("i", "<C-e>", "<ESC>$a")
keymap.set("i", "<C-a>", "<ESC>0i")
keymap.set("i", "<C-f>", "<ESC>la")
keymap.set("i", "<C-b>", "<ESC>ha")
keymap.set("i", "<C-p>", "<ESC>ka")
keymap.set("i", "<C-n>", "<ESC>ja")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
