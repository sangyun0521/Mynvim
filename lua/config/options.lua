local opt = vim.opt

-- tab/indent
opt.tabstop = 2 -- tab width
opt.shiftwidth = 2 -- indent width
opt.softtabstop = 2 
opt.expandtab = true
opt.smartindent = true -- 자동 indent
opt.wrap = false -- 자동 한줄 나누기 

-- search
opt.incsearch = true -- 단어 입력하면 바로 search
opt.ignorecase = true -- 대소문자 구분 x
opt.smartcase = true

-- visual
opt.number = true -- line number
-- opt.relativenumber = true -- 상대적인 line number
opt.termguicolors = true -- 다양한 색상 
opt.signcolumn = "yes" -- line number 옆 공간 활성화 

-- etc
opt.encoding = "UTF-8"
opt.cmdheight = 1
opt.scrolloff = 10 -- 스크롤 시 여백 유지
opt.mouse:append("a")
