local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

math.randomseed(os.time())
local switch = math.random(0,1)

-- Set header
if (switch == 1) then
    dashboard.section.header.opts.hl = "Operator"
else
    dashboard.section.header.opts.hl = "Conditional"
end

-- dashboard.section.header.val = {
--     "                                                     ",
--     "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
--     "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
--     "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
--     "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
--     "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
--     "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
--     "                                                     ",
-- }
dashboard.section.header.val = {
[[______________________________/\/\______/\/\____/\/\__________________]],
[[___________________________/\/\/\/\____/\/\/\__/\/\___________________]],
[[________________________/\/\____/\/\__/\/\/\/\/\/\____________________]],
[[_______________________/\/\/\/\/\/\__/\/\__/\/\/\_____________________]],
[[______________________/\/\____/\/\__/\/\____/\/\______________________]],
[[______________________________________________________________________]],
[[___________/\/\____/\/\__/\/\____/\/\__/\/\/\/\__/\/\______/\/\_______]],
[[__________/\/\/\__/\/\__/\/\____/\/\____/\/\____/\/\/\__/\/\/\________]],
[[_________/\/\/\/\/\/\__/\/\____/\/\____/\/\____/\/\/\/\/\/\/\_________]],
[[________/\/\__/\/\/\____/\/\/\/\______/\/\____/\/\__/\__/\/\__________]],
[[_______/\/\____/\/\______/\/\______/\/\/\/\__/\/\______/\/\___________]],
[[______________________________________________________________________]],
}

-- [[ _____/\/\____/\/\__/\/\____/\/\__/\/\/\/\__/\/\_____/\/\_ ]],
-- [[ ____/\/\/\__/\/\__/\/\____/\/\____/\/\____/\/\/\___//\/\_ ]],
-- [[ ___/\/\/\/\/\/\__/\/\____/\/\____/\/\____/\/\/\/\/\/\/\___ ]],
-- [[ __/\/\__/\/\/\____/\/\/\/\______/\/\____/\/\__/\__/\/\____ ]],
-- [[ _/\/\____/\/\______/\/\______/\/\/\/\__/\/\______/\/\_____ ]],


-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/dev | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require('packer').startup(function()
--       use 'wbthomason/packer.nvim'
--       use {
--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {'BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune")
-- dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
