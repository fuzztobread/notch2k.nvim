-- lua/notch2k/init.lua
local M = {}

function M.setup()
    -- Get colors
    local colors = require("notch2k.colors")
    
    -- Set up the colorscheme
    vim.cmd('hi clear')
    
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end
    
    vim.o.termguicolors = true
    vim.g.colors_name = 'notch2k'
    
    -- Editor settings
    vim.cmd('hi Normal guifg=' .. colors.fg .. ' guibg=' .. colors.bg)
    vim.cmd('hi LineNr guifg=' .. colors.gray_dark)
    vim.cmd('hi CursorLineNr guifg=' .. colors.yellow)
    vim.cmd('hi CursorLine guibg=' .. colors.black)
    vim.cmd('hi SignColumn guibg=' .. colors.bg)
    vim.cmd('hi VertSplit guifg=' .. colors.gray_dark .. ' guibg=' .. colors.bg)
    vim.cmd('hi Pmenu guibg=' .. colors.black .. ' guifg=' .. colors.fg)
    vim.cmd('hi PmenuSel guibg=' .. colors.blue .. ' guifg=' .. colors.black)
    vim.cmd('hi PmenuSbar guibg=' .. colors.gray_dark)
    vim.cmd('hi PmenuThumb guibg=' .. colors.gray)
    vim.cmd('hi StatusLine guibg=' .. colors.black .. ' guifg=' .. colors.fg)
    vim.cmd('hi StatusLineNC guibg=' .. colors.black .. ' guifg=' .. colors.gray)
    vim.cmd('hi Search guibg=' .. colors.yellow .. ' guifg=' .. colors.black)
    vim.cmd('hi IncSearch guibg=' .. colors.orange .. ' guifg=' .. colors.black)
    vim.cmd('hi ColorColumn guibg=' .. colors.black)
    vim.cmd('hi Visual guibg=' .. colors.blue .. '30') -- 30 is for transparency
    vim.cmd('hi MatchParen guibg=' .. colors.gray_dark .. ' guifg=' .. colors.white)
    vim.cmd('hi Directory guifg=' .. colors.blue)
    vim.cmd('hi Folded guibg=' .. colors.black .. ' guifg=' .. colors.gray)
    vim.cmd('hi FoldColumn guibg=' .. colors.bg .. ' guifg=' .. colors.gray_dark)
    vim.cmd('hi Conceal guifg=' .. colors.gray)
    vim.cmd('hi NonText guifg=' .. colors.gray_dark)
    vim.cmd('hi SpecialKey guifg=' .. colors.gray_dark)
    vim.cmd('hi Title guifg=' .. colors.yellow)
    vim.cmd('hi SpellBad gui=undercurl guisp=' .. colors.red)
    vim.cmd('hi SpellCap gui=undercurl guisp=' .. colors.blue)
    vim.cmd('hi SpellRare gui=undercurl guisp=' .. colors.magenta)
    vim.cmd('hi SpellLocal gui=undercurl guisp=' .. colors.cyan)
    
    -- General syntax highlighting
    vim.cmd('hi Comment guifg=' .. colors.gray)
    vim.cmd('hi Constant guifg=' .. colors.orange)
    vim.cmd('hi String guifg=' .. colors.green)
    vim.cmd('hi Character guifg=' .. colors.green)
    vim.cmd('hi Number guifg=' .. colors.orange)
    vim.cmd('hi Boolean guifg=' .. colors.orange)
    vim.cmd('hi Float guifg=' .. colors.orange)
    vim.cmd('hi Identifier guifg=' .. colors.blue)
    vim.cmd('hi Function guifg=' .. colors.yellow)
    vim.cmd('hi Statement guifg=' .. colors.magenta)
    vim.cmd('hi Conditional guifg=' .. colors.magenta)
    vim.cmd('hi Repeat guifg=' .. colors.magenta)
    vim.cmd('hi Label guifg=' .. colors.magenta)
    vim.cmd('hi Operator guifg=' .. colors.cyan)
    vim.cmd('hi Keyword guifg=' .. colors.magenta)
    vim.cmd('hi Exception guifg=' .. colors.red)
    vim.cmd('hi PreProc guifg=' .. colors.cyan)
    vim.cmd('hi Include guifg=' .. colors.blue)
    vim.cmd('hi Define guifg=' .. colors.magenta)
    vim.cmd('hi Macro guifg=' .. colors.cyan)
    vim.cmd('hi PreCondit guifg=' .. colors.yellow)
    vim.cmd('hi Type guifg=' .. colors.yellow)
    vim.cmd('hi StorageClass guifg=' .. colors.yellow)
    vim.cmd('hi Structure guifg=' .. colors.yellow)
    vim.cmd('hi Typedef guifg=' .. colors.yellow)
    vim.cmd('hi Special guifg=' .. colors.blue)
    vim.cmd('hi SpecialChar guifg=' .. colors.orange)
    vim.cmd('hi Tag guifg=' .. colors.blue)
    vim.cmd('hi Delimiter guifg=' .. colors.gray)
    vim.cmd('hi SpecialComment guifg=' .. colors.gray)
    vim.cmd('hi Debug guifg=' .. colors.red)
    vim.cmd('hi Underlined gui=underline')
    vim.cmd('hi Error guifg=' .. colors.white .. ' guibg=' .. colors.red)
    vim.cmd('hi Todo guifg=' .. colors.black .. ' guibg=' .. colors.yellow)
    
    -- Git highlighting
    vim.cmd('hi gitcommitOverflow guifg=' .. colors.red)
    vim.cmd('hi gitcommitSummary guifg=' .. colors.green)
    vim.cmd('hi gitcommitComment guifg=' .. colors.gray)
    vim.cmd('hi gitcommitUntracked guifg=' .. colors.gray)
    vim.cmd('hi gitcommitDiscarded guifg=' .. colors.gray)
    vim.cmd('hi gitcommitSelected guifg=' .. colors.gray)
    vim.cmd('hi gitcommitHeader guifg=' .. colors.magenta)
    vim.cmd('hi gitcommitSelectedType guifg=' .. colors.blue)
    vim.cmd('hi gitcommitUnmergedType guifg=' .. colors.blue)
    vim.cmd('hi gitcommitDiscardedType guifg=' .. colors.blue)
    vim.cmd('hi gitcommitBranch guifg=' .. colors.orange .. ' gui=bold')
    vim.cmd('hi gitcommitUnmergedBranch guifg=' .. colors.orange .. ' gui=bold')
    vim.cmd('hi gitcommitDiscardedBranch guifg=' .. colors.orange .. ' gui=bold')
    vim.cmd('hi gitcommitSelectedBranch guifg=' .. colors.orange .. ' gui=bold')
    vim.cmd('hi gitcommitUnmergedFile guifg=' .. colors.red)
    vim.cmd('hi gitcommitDiscardedFile guifg=' .. colors.red)
    vim.cmd('hi gitcommitSelectedFile guifg=' .. colors.green)
    vim.cmd('hi gitcommitFile guifg=' .. colors.fg)
    vim.cmd('hi gitcommitNoBranch guifg=' .. colors.orange .. ' gui=bold')
    vim.cmd('hi gitcommitUnmerged guifg=' .. colors.green)
    vim.cmd('hi gitcommitDiscarded guifg=' .. colors.fg)
    vim.cmd('hi gitcommitSelected guifg=' .. colors.fg)
    
    -- Diff highlighting
    vim.cmd('hi DiffAdd guibg=#263927')
    vim.cmd('hi DiffChange guibg=#2b2926')
    vim.cmd('hi DiffDelete guifg=#382724 guibg=#382724')
    vim.cmd('hi DiffText guibg=#514541')
    
    -- TreeSitter support
    vim.cmd('hi TSVariable guifg=' .. colors.fg)
    vim.cmd('hi TSVariableBuiltin guifg=' .. colors.cyan)
    vim.cmd('hi TSParameter guifg=' .. colors.fg)
    vim.cmd('hi TSKeyword guifg=' .. colors.magenta)
    vim.cmd('hi TSConstructor guifg=' .. colors.yellow)
    vim.cmd('hi TSType guifg=' .. colors.yellow)
    vim.cmd('hi TSFunction guifg=' .. colors.blue)
    vim.cmd('hi TSKeywordFunction guifg=' .. colors.magenta)
    vim.cmd('hi TSMethod guifg=' .. colors.blue)
    vim.cmd('hi TSInclude guifg=' .. colors.magenta)
    vim.cmd('hi TSProperty guifg=' .. colors.cyan)
    vim.cmd('hi TSOperator guifg=' .. colors.cyan)
    vim.cmd('hi TSPunctDelimiter guifg=' .. colors.gray)
    vim.cmd('hi TSPunctBracket guifg=' .. colors.gray)
    vim.cmd('hi TSPunctSpecial guifg=' .. colors.gray)
    vim.cmd('hi TSTagDelimiter guifg=' .. colors.gray)
    vim.cmd('hi TSParameter guifg=' .. colors.fg)
    
    -- LSP
    vim.cmd('hi LspDiagnosticsDefaultError guifg=' .. colors.red)
    vim.cmd('hi LspDiagnosticsSignError guifg=' .. colors.red)
    vim.cmd('hi LspDiagnosticsDefaultWarning guifg=' .. colors.yellow)
    vim.cmd('hi LspDiagnosticsSignWarning guifg=' .. colors.yellow)
    vim.cmd('hi LspDiagnosticsDefaultInformation guifg=' .. colors.blue)
    vim.cmd('hi LspDiagnosticsSignInformation guifg=' .. colors.blue)
    vim.cmd('hi LspDiagnosticsDefaultHint guifg=' .. colors.cyan)
    vim.cmd('hi LspDiagnosticsSignHint guifg=' .. colors.cyan)
    
    -- Diagnostics - newer naming convention
    vim.cmd('hi DiagnosticError guifg=' .. colors.red)
    vim.cmd('hi DiagnosticWarn guifg=' .. colors.yellow)
    vim.cmd('hi DiagnosticInfo guifg=' .. colors.blue)
    vim.cmd('hi DiagnosticHint guifg=' .. colors.cyan)
    vim.cmd('hi DiagnosticUnderlineError gui=undercurl guisp=' .. colors.red)
    vim.cmd('hi DiagnosticUnderlineWarn gui=undercurl guisp=' .. colors.yellow)
    vim.cmd('hi DiagnosticUnderlineInfo gui=undercurl guisp=' .. colors.blue)
    vim.cmd('hi DiagnosticUnderlineHint gui=undercurl guisp=' .. colors.cyan)
    
    -- Status Line Components
    vim.cmd('hi StatusLineGitBranch guifg=' .. colors.orange .. ' guibg=' .. colors.black)
    vim.cmd('hi StatusLineFileName guifg=' .. colors.white .. ' guibg=' .. colors.black)
    vim.cmd('hi StatusLineFileType guifg=' .. colors.blue .. ' guibg=' .. colors.black)
    vim.cmd('hi StatusLinePosition guifg=' .. colors.green .. ' guibg=' .. colors.black)
    
    -- Telescope
    vim.cmd('hi TelescopeSelection guibg=' .. colors.black .. ' guifg=' .. colors.white)
    vim.cmd('hi TelescopeMatching guifg=' .. colors.yellow)
    vim.cmd('hi TelescopeBorder guifg=' .. colors.gray)
    
    -- NvimTree
    vim.cmd('hi NvimTreeFolderIcon guifg=' .. colors.blue)
    vim.cmd('hi NvimTreeFolderName guifg=' .. colors.blue)
    vim.cmd('hi NvimTreeOpenedFolderName guifg=' .. colors.blue .. ' gui=bold')
    
    -- Terminal colors
    vim.g.terminal_color_0 = colors.black
    vim.g.terminal_color_1 = colors.red
    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_3 = colors.yellow
    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_5 = colors.magenta
    vim.g.terminal_color_6 = colors.cyan
    vim.g.terminal_color_7 = colors.fg
    vim.g.terminal_color_8 = colors.gray
    vim.g.terminal_color_9 = colors.red
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_13 = colors.magenta
    vim.g.terminal_color_14 = colors.cyan
    vim.g.terminal_color_15 = colors.white
end

return M
