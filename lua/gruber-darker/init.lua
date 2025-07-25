-- gruber-darker.nvim - A Neovim port of the Gruber Darker theme
-- Originally by Alexey Kutepov (rexim) and Jason R. Blevins for Emacs

local M = {}

-- Color palette
local colors = {
  fg = "#e4e4ef",
  fg_1 = "#f4f4ff",
  fg_2 = "#f5f5f5",
  white = "#ffffff",
  black = "#000000",
  bg_minus_1 = "#101010",
  bg = "#181818",
  bg_1 = "#282828",
  bg_2 = "#453d41",
  bg_3 = "#484848",
  bg_4 = "#52494e",
  red_minus_1 = "#c73c3f",
  red = "#f43841",
  red_1 = "#ff4f58",
  green = "#73c936",
  yellow = "#ffdd33",
  brown = "#cc8c3c",
  quartz = "#95a99f",
  niagara_minus_2 = "#303540",
  niagara_minus_1 = "#565f73",
  niagara = "#96a6c8",
  wisteria = "#9e95c7",
}

-- Terminal colors
local terminal_colors = {
  terminal_color_0 = colors.bg_3,
  terminal_color_1 = colors.red_minus_1,
  terminal_color_2 = colors.green,
  terminal_color_3 = colors.yellow,
  terminal_color_4 = colors.niagara,
  terminal_color_5 = colors.wisteria,
  terminal_color_6 = colors.quartz,
  terminal_color_7 = colors.fg,
  terminal_color_8 = colors.bg_4,
  terminal_color_9 = colors.red_minus_1,
  terminal_color_10 = colors.green,
  terminal_color_11 = colors.yellow,
  terminal_color_12 = colors.niagara,
  terminal_color_13 = colors.wisteria,
  terminal_color_14 = colors.quartz,
  terminal_color_15 = colors.white,
}

function M.setup(opts)
  opts = opts or {}
  
  -- Reset highlighting
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.termguicolors = true
  vim.g.colors_name = "gruber-darker"
  
  -- Set terminal colors
  for k, v in pairs(terminal_colors) do
    vim.g[k] = v
  end
  
  -- UI Elements
  local highlights = {
    -- Editor
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg_1 },
    ColorColumn = { bg = colors.bg_1 },
    Cursor = { bg = colors.yellow },
    CursorColumn = { bg = colors.bg_1 },
    CursorLine = { bg = colors.bg_1 },
    CursorLineNr = { fg = colors.yellow, bg = colors.bg_1 },
    LineNr = { fg = colors.bg_4 },
    VertSplit = { fg = colors.bg_2 },
    WinSeparator = { fg = colors.bg_2 },
    Folded = { fg = colors.brown, bg = colors.bg_1 },
    FoldColumn = { fg = colors.brown, bg = colors.bg },
    SignColumn = { fg = colors.bg_2, bg = colors.bg },
    
    -- Statusline
    StatusLine = { fg = colors.white, bg = colors.bg_1 },
    StatusLineNC = { fg = colors.quartz, bg = colors.bg_1 },
    
    -- Tabline
    TabLine = { fg = colors.bg_4, bg = colors.bg_1 },
    TabLineFill = { bg = colors.bg_1 },
    TabLineSel = { fg = colors.yellow, bg = colors.bg, bold = true },
    
    -- Popups
    Pmenu = { fg = colors.fg, bg = colors.bg_1 },
    PmenuSel = { fg = colors.fg, bg = colors.bg_minus_1 },
    PmenuSbar = { bg = colors.bg_2 },
    PmenuThumb = { bg = colors.bg_minus_1 },
    
    -- Search
    Search = { fg = colors.black, bg = colors.fg_2 },
    IncSearch = { fg = colors.black, bg = colors.fg_2 },
    CurSearch = { fg = colors.black, bg = colors.fg_2 },
    Substitute = { fg = colors.black, bg = colors.red },
    
    -- Visual
    Visual = { bg = colors.bg_3 },
    VisualNOS = { bg = colors.bg_3 },
    
    -- Messages
    ErrorMsg = { fg = colors.red_1 },
    WarningMsg = { fg = colors.yellow },
    ModeMsg = { fg = colors.green },
    MoreMsg = { fg = colors.green },
    Question = { fg = colors.niagara },
    
    -- Diff
    DiffAdd = { fg = colors.green, bg = nil },
    DiffChange = { fg = colors.yellow, bg = nil },
    DiffDelete = { fg = colors.red_1, bg = nil },
    DiffText = { fg = colors.yellow, bg = colors.bg_2 },
    
    -- Spelling
    SpellBad = { sp = colors.red, undercurl = true },
    SpellCap = { sp = colors.yellow, undercurl = true },
    SpellLocal = { sp = colors.yellow, undercurl = true },
    SpellRare = { sp = colors.yellow, undercurl = true },
    
    -- Misc
    Directory = { fg = colors.niagara, bold = true },
    NonText = { fg = colors.bg_2 },
    SpecialKey = { fg = colors.bg_2 },
    Title = { fg = colors.niagara, bold = true },
    Conceal = { fg = colors.bg_4 },
    Ignore = { fg = colors.bg_4 },
    MatchParen = { bg = colors.bg_4 },
    Underlined = { fg = colors.niagara, underline = true },
    QuickFixLine = { bg = colors.bg_1 },
    
    -- Syntax highlighting
    Comment = { fg = colors.brown },
    Constant = { fg = colors.quartz },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.wisteria },
    Boolean = { fg = colors.quartz },
    Float = { fg = colors.wisteria },
    
    Identifier = { fg = colors.fg_1 },
    Function = { fg = colors.niagara },
    
    Statement = { fg = colors.yellow, bold = true },
    Conditional = { fg = colors.yellow, bold = true },
    Repeat = { fg = colors.yellow, bold = true },
    Label = { fg = colors.yellow, bold = true },
    Operator = { fg = colors.fg },
    Keyword = { fg = colors.yellow, bold = true },
    Exception = { fg = colors.yellow, bold = true },
    
    PreProc = { fg = colors.quartz },
    Include = { fg = colors.quartz },
    Define = { fg = colors.quartz },
    Macro = { fg = colors.quartz },
    PreCondit = { fg = colors.quartz },
    
    Type = { fg = colors.quartz },
    StorageClass = { fg = colors.quartz },
    Structure = { fg = colors.quartz },
    Typedef = { fg = colors.quartz },
    
    Special = { fg = colors.yellow },
    SpecialChar = { fg = colors.yellow },
    Tag = { fg = colors.yellow },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.green },
    Debug = { fg = colors.red },
    
    Error = { fg = colors.red },
    Todo = { fg = colors.yellow, bold = true },
    
    -- TreeSitter
    ["@annotation"] = { fg = colors.quartz },
    ["@attribute"] = { fg = colors.quartz },
    ["@boolean"] = { fg = colors.quartz },
    ["@character"] = { fg = colors.green },
    ["@character.special"] = { fg = colors.yellow },
    ["@comment"] = { fg = colors.brown },
    ["@conditional"] = { fg = colors.yellow, bold = true },
    ["@constant"] = { fg = colors.quartz },
    ["@constant.builtin"] = { fg = colors.quartz },
    ["@constant.macro"] = { fg = colors.quartz },
    ["@constructor"] = { fg = colors.niagara },
    ["@debug"] = { fg = colors.red },
    ["@define"] = { fg = colors.quartz },
    ["@error"] = { fg = colors.red },
    ["@exception"] = { fg = colors.yellow, bold = true },
    ["@field"] = { fg = colors.fg_1 },
    ["@float"] = { fg = colors.wisteria },
    ["@function"] = { fg = colors.niagara },
    ["@function.builtin"] = { fg = colors.yellow },
    ["@function.call"] = { fg = colors.niagara },
    ["@function.macro"] = { fg = colors.quartz },
    ["@include"] = { fg = colors.quartz },
    ["@keyword"] = { fg = colors.yellow, bold = true },
    ["@keyword.function"] = { fg = colors.yellow, bold = true },
    ["@keyword.operator"] = { fg = colors.yellow, bold = true },
    ["@keyword.return"] = { fg = colors.yellow, bold = true },
    ["@label"] = { fg = colors.yellow, bold = true },
    ["@method"] = { fg = colors.niagara },
    ["@method.call"] = { fg = colors.niagara },
    ["@namespace"] = { fg = colors.quartz },
    ["@none"] = { fg = colors.fg },
    ["@number"] = { fg = colors.wisteria },
    ["@operator"] = { fg = colors.fg },
    ["@parameter"] = { fg = colors.fg_1 },
    ["@parameter.reference"] = { fg = colors.fg_1 },
    ["@property"] = { fg = colors.fg_1 },
    ["@punctuation.bracket"] = { fg = colors.fg },
    ["@punctuation.delimiter"] = { fg = colors.fg },
    ["@punctuation.special"] = { fg = colors.yellow },
    ["@repeat"] = { fg = colors.yellow, bold = true },
    ["@string"] = { fg = colors.green },
    ["@string.escape"] = { fg = colors.yellow },
    ["@string.regex"] = { fg = colors.yellow },
    ["@string.special"] = { fg = colors.yellow },
    ["@symbol"] = { fg = colors.quartz },
    ["@tag"] = { fg = colors.yellow },
    ["@tag.attribute"] = { fg = colors.quartz },
    ["@tag.delimiter"] = { fg = colors.fg },
    ["@text"] = { fg = colors.fg },
    ["@text.danger"] = { fg = colors.red },
    ["@text.emphasis"] = { italic = true },
    ["@text.literal"] = { fg = colors.green },
    ["@text.note"] = { fg = colors.brown },
    ["@text.reference"] = { fg = colors.niagara, underline = true },
    ["@text.strong"] = { bold = true },
    ["@text.title"] = { fg = colors.niagara, bold = true },
    ["@text.todo"] = { fg = colors.yellow, bold = true },
    ["@text.underline"] = { underline = true },
    ["@text.uri"] = { fg = colors.niagara, underline = true },
    ["@text.warning"] = { fg = colors.yellow },
    ["@type"] = { fg = colors.quartz },
    ["@type.builtin"] = { fg = colors.quartz },
    ["@type.definition"] = { fg = colors.quartz },
    ["@type.qualifier"] = { fg = colors.quartz },
    ["@variable"] = { fg = colors.fg_1 },
    ["@variable.builtin"] = { fg = colors.yellow },
    
    -- LSP
    LspReferenceText = { bg = colors.bg_1 },
    LspReferenceRead = { bg = colors.bg_1 },
    LspReferenceWrite = { bg = colors.bg_1 },
    LspSignatureActiveParameter = { bg = colors.bg_2 },
    LspCodeLens = { fg = colors.brown },
    LspCodeLensSeparator = { fg = colors.bg_4 },
    LspInfoBorder = { fg = colors.bg_2 },
    
    -- Diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.niagara },
    DiagnosticHint = { fg = colors.green },
    DiagnosticVirtualTextError = { fg = colors.red },
    DiagnosticVirtualTextWarn = { fg = colors.yellow },
    DiagnosticVirtualTextInfo = { fg = colors.niagara },
    DiagnosticVirtualTextHint = { fg = colors.green },
    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.niagara, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.green, undercurl = true },
    
    -- Git Signs
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.yellow },
    GitSignsDelete = { fg = colors.red },
    GitSignsAddNr = { fg = colors.green },
    GitSignsChangeNr = { fg = colors.yellow },
    GitSignsDeleteNr = { fg = colors.red },
    GitSignsAddLn = { bg = colors.niagara_minus_2 },
    GitSignsChangeLn = { bg = colors.bg_2 },
    GitSignsDeleteLn = { bg = colors.red_minus_1 },
    
    -- Telescope
    TelescopeNormal = { fg = colors.fg, bg = colors.bg },
    TelescopeBorder = { fg = colors.bg_2 },
    TelescopePromptNormal = { fg = colors.fg, bg = colors.bg_1 },
    TelescopePromptBorder = { fg = colors.bg_2 },
    TelescopePromptTitle = { fg = colors.yellow, bold = true },
    TelescopePreviewTitle = { fg = colors.green, bold = true },
    TelescopeResultsTitle = { fg = colors.niagara, bold = true },
    TelescopeSelection = { bg = colors.bg_1 },
    TelescopeSelectionCaret = { fg = colors.yellow },
    TelescopeMatching = { fg = colors.yellow, bold = true },
    
    -- NvimTree
    NvimTreeNormal = { fg = colors.fg, bg = colors.bg },
    NvimTreeFolderIcon = { fg = colors.niagara },
    NvimTreeFolderName = { fg = colors.niagara },
    NvimTreeOpenedFolderName = { fg = colors.niagara, bold = true },
    NvimTreeRootFolder = { fg = colors.yellow, bold = true },
    NvimTreeSpecialFile = { fg = colors.yellow },
    NvimTreeExecFile = { fg = colors.green },
    NvimTreeGitDirty = { fg = colors.yellow },
    NvimTreeGitNew = { fg = colors.green },
    NvimTreeGitDeleted = { fg = colors.red },
    NvimTreeGitStaged = { fg = colors.green },
    NvimTreeWindowPicker = { fg = colors.black, bg = colors.yellow, bold = true },
    
    -- Neo-tree
    NeoTreeNormal = { fg = colors.fg, bg = colors.bg },
    NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg },
    NeoTreeDirectoryIcon = { fg = colors.niagara },
    NeoTreeDirectoryName = { fg = colors.niagara },
    NeoTreeRootName = { fg = colors.yellow, bold = true },
    NeoTreeGitAdded = { fg = colors.green },
    NeoTreeGitModified = { fg = colors.yellow },
    NeoTreeGitDeleted = { fg = colors.red },
    NeoTreeGitUntracked = { fg = colors.brown },
    
    -- WhichKey
    WhichKey = { fg = colors.yellow },
    WhichKeyGroup = { fg = colors.niagara },
    WhichKeyDesc = { fg = colors.fg },
    WhichKeySeparator = { fg = colors.brown },
    WhichKeyFloat = { bg = colors.bg_1 },
    WhichKeyValue = { fg = colors.green },
    
    -- Indent Blankline
    IndentBlanklineChar = { fg = colors.bg_2 },
    IndentBlanklineContextChar = { fg = colors.bg_4 },
    IndentBlanklineContextStart = { sp = colors.bg_4, underline = true },
    
    -- nvim-cmp
    CmpItemAbbr = { fg = colors.fg },
    CmpItemAbbrDeprecated = { fg = colors.bg_4, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.yellow, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.yellow },
    CmpItemKind = { fg = colors.niagara },
    CmpItemMenu = { fg = colors.brown },
    
    -- Hop
    HopNextKey = { fg = colors.yellow, bold = true },
    HopNextKey1 = { fg = colors.green, bold = true },
    HopNextKey2 = { fg = colors.niagara },
    HopUnmatched = { fg = colors.bg_4 },
    
    -- Leap
    LeapMatch = { fg = colors.yellow, bold = true },
    LeapLabelPrimary = { fg = colors.black, bg = colors.yellow, bold = true },
    LeapLabelSecondary = { fg = colors.black, bg = colors.green, bold = true },
    LeapBackdrop = { fg = colors.bg_4 },
    
    -- Dashboard
    DashboardHeader = { fg = colors.niagara },
    DashboardCenter = { fg = colors.fg },
    DashboardFooter = { fg = colors.brown },
    DashboardShortCut = { fg = colors.yellow },
    
    -- Notify
    NotifyERRORBorder = { fg = colors.red },
    NotifyWARNBorder = { fg = colors.yellow },
    NotifyINFOBorder = { fg = colors.niagara },
    NotifyDEBUGBorder = { fg = colors.brown },
    NotifyTRACEBorder = { fg = colors.wisteria },
    NotifyERRORIcon = { fg = colors.red },
    NotifyWARNIcon = { fg = colors.yellow },
    NotifyINFOIcon = { fg = colors.niagara },
    NotifyDEBUGIcon = { fg = colors.brown },
    NotifyTRACEIcon = { fg = colors.wisteria },
    NotifyERRORTitle = { fg = colors.red },
    NotifyWARNTitle = { fg = colors.yellow },
    NotifyINFOTitle = { fg = colors.niagara },
    NotifyDEBUGTitle = { fg = colors.brown },
    NotifyTRACETitle = { fg = colors.wisteria },
    
    -- Bufferline
    BufferLineFill = { bg = colors.bg_minus_1 },
    BufferLineBackground = { fg = colors.bg_4, bg = colors.bg_1 },
    BufferLineTab = { fg = colors.bg_4, bg = colors.bg_1 },
    BufferLineTabSelected = { fg = colors.yellow, bg = colors.bg, bold = true },
    BufferLineBuffer = { fg = colors.bg_4, bg = colors.bg_1 },
    BufferLineBufferVisible = { fg = colors.fg, bg = colors.bg },
    BufferLineBufferSelected = { fg = colors.yellow, bg = colors.bg, bold = true },
    BufferLineIndicatorSelected = { fg = colors.yellow },
    BufferLineSeparator = { fg = colors.bg_minus_1, bg = colors.bg_1 },
    BufferLineSeparatorVisible = { fg = colors.bg_minus_1, bg = colors.bg },
    BufferLineSeparatorSelected = { fg = colors.bg_minus_1, bg = colors.bg },
    BufferLineCloseButton = { fg = colors.bg_4, bg = colors.bg_1 },
    BufferLineCloseButtonVisible = { fg = colors.bg_4, bg = colors.bg },
    BufferLineCloseButtonSelected = { fg = colors.red, bg = colors.bg },
    BufferLineModified = { fg = colors.yellow, bg = colors.bg_1 },
    BufferLineModifiedVisible = { fg = colors.yellow, bg = colors.bg },
    BufferLineModifiedSelected = { fg = colors.yellow, bg = colors.bg },
    BufferLineDiagnostic = { fg = colors.bg_4, bg = colors.bg_1 },
    BufferLineDiagnosticVisible = { fg = colors.bg_4, bg = colors.bg },
    BufferLineDiagnosticSelected = { fg = colors.fg, bg = colors.bg },
    BufferLineError = { fg = colors.red, bg = colors.bg_1 },
    BufferLineErrorVisible = { fg = colors.red, bg = colors.bg },
    BufferLineErrorSelected = { fg = colors.red, bg = colors.bg },
    BufferLineErrorDiagnostic = { fg = colors.red, bg = colors.bg_1 },
    BufferLineErrorDiagnosticVisible = { fg = colors.red, bg = colors.bg },
    BufferLineErrorDiagnosticSelected = { fg = colors.red, bg = colors.bg },
    BufferLineWarning = { fg = colors.yellow, bg = colors.bg_1 },
    BufferLineWarningVisible = { fg = colors.yellow, bg = colors.bg },
    BufferLineWarningSelected = { fg = colors.yellow, bg = colors.bg },
    BufferLineWarningDiagnostic = { fg = colors.yellow, bg = colors.bg_1 },
    BufferLineWarningDiagnosticVisible = { fg = colors.yellow, bg = colors.bg },
    BufferLineWarningDiagnosticSelected = { fg = colors.yellow, bg = colors.bg },
    BufferLineInfo = { fg = colors.niagara, bg = colors.bg_1 },
    BufferLineInfoVisible = { fg = colors.niagara, bg = colors.bg },
    BufferLineInfoSelected = { fg = colors.niagara, bg = colors.bg },
    BufferLineInfoDiagnostic = { fg = colors.niagara, bg = colors.bg_1 },
    BufferLineInfoDiagnosticVisible = { fg = colors.niagara, bg = colors.bg },
    BufferLineInfoDiagnosticSelected = { fg = colors.niagara, bg = colors.bg },
    BufferLineHint = { fg = colors.green, bg = colors.bg_1 },
    BufferLineHintVisible = { fg = colors.green, bg = colors.bg },
    BufferLineHintSelected = { fg = colors.green, bg = colors.bg },
    BufferLineHintDiagnostic = { fg = colors.green, bg = colors.bg_1 },
    BufferLineHintDiagnosticVisible = { fg = colors.green, bg = colors.bg },
    BufferLineHintDiagnosticSelected = { fg = colors.green, bg = colors.bg },
  }
  
  -- Apply highlights
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M