---@class darkslate.hl
local hl = {}
local o = require("darkslate").opts

hl.ColorColumn = { bg = "$dark4", fg = "$dark12" }
hl.CurSearch = { bg = "$yellow0", fg = "$dark15" }
hl.Directory = { fg = "$cyan1" }
hl.EndOfBuffer = { bg = "$dark1", fg = "$dark1" }
hl.ErrorMsg = { fg = "$red0" }
hl.WinSeparator = { fg = "$dark2" }
hl.Folded = { bg = "$dark2", fg = "$dark14" }
hl.FoldColumn = { bg = "$dark2", fg = "$dark12" }
hl.SignColumn = { bg = "$dark1" }
hl.IncSearch = { link = "CurSearch" }
hl.Substitute = { bg = "$dark_blue", fg = "$dark13" }
hl.LineNr = { fg = "$dark8" }
hl.LineNrAbove = { fg = "$dark8" }
hl.LineNrBelow = { fg = "$dark8" }
hl.CursorLine = { bg = "$dark2" }
hl.CursorLineNr = { bg = "$dark2", fg = "$dark14" }
hl.CursorLineFold = { bg = "$dark3" }
hl.CursorLineSign = { bg = "$dark2" }
hl.CursorColumn = { link = "CursorLine" }
hl.ModeMsg = { fg = "$dark14", bold = true }
hl.MsgArea = { bg = "$dark0", fg = "$dark8" }
hl.MsgSeparator = { bg = "$dark15", fg = "$dark1" }
hl.MoreMsg = { fg = "$blue0" }
hl.NonText = { fg = "$dark8" }
hl.Normal = { bg = "$dark1", fg = "$dark12" }
hl.NormalFloat = { bg = "$dark1", fg = "$dark12" }
hl.FloatBorder = { fg = "$dark6" }
hl.FloatTitle = { fg = "$dark10", bold = true }
hl.FloatFooter = { fg = "$dark10", bold = true }
hl.NormalNC = { link = "Normal" }
hl.Pmenu = { bg = "$dark1", fg = "$dark12" }
hl.PmenuSel = { bg = "$dark3" }
hl.PmenuKind = { fg = "$dark10" }
hl.PmenuExtra = { fg = "$dark10" }
hl.PmenuSbar = { bg = "$dark8" }
hl.PmenuThumb = { bg = "$dark10" }
hl.PmenuMatch = { sp = "$dark10", underline = true }
hl.ComplMatchIns = { fg = "$dark14" }
hl.QuickFixLine = { fg = "$red0" }
hl.Search = { bg = "$dark_yellow", fg = "$dark13" }
hl.SnippetTabStop = { bg = "$dark4" }
hl.SpecialKey = { fg = "$dark11" }
hl.SpellBad = { sp = "$red2", undercurl = true }
hl.SpellCap = { sp = "$yellow2", undercurl = true }
hl.SpellLocal = { sp = "$green2", undercurl = true }
hl.SpellRare = { sp = "$blue2", undercurl = true }
hl.StatusLine = { bg = "$dark2", fg = "$dark12" }
hl.StatusLineNC = { bg = "$dark0", fg = "$dark10" }
hl.TabLine = { bg = "$dark2" }
hl.TabLineFill = { bg = "$dark1" }
hl.TabLineSel = { bg = "$dark4", fg = "$dark14" }
hl.Title = { fg = "$dark13", bold = true }
hl.Visual = { bg = "$dark3" }
hl.VisualNOS = { bg = "$dark3", sp = "$dark5", underline = true }
hl.WarningMsg = { fg = "$yellow0" }
hl.WhiteSpace = { fg = "$dark10" }
hl.WildMenu = { bg = "$dark6", fg = "$dark14" }
hl.WinBar = { bg = "$dark0", fg = "$dark10" }
hl.WinBarNC = { bg = "$dark0", fg = "$dark8" }
hl.Error = { bg = "$bg_red", fg = "$dark12" }

-- Treesitter highlights
hl["@variable"] = { fg = "$dark12" }
hl["@variable.builtin"] = { fg = "$red1" }
hl["@variable.parameter"] = { fg = "$red0" }
hl["@variable.parameter.builtin"] = { fg = "$red1" }
hl["@variable.member"] = { fg = "$dark10" }

hl["@constant"] = { fg = "$dark11", bold = true }
hl["@constant.builtin"] = { fg = "$red0", bold = true }
hl["@constant.macro"] = { fg = "$dark12" }

hl["@module"] = { fg = "$yellow0" }
hl["@module.builtin"] = { fg = "$yellow1" }
hl["@label"] = { fg = "$red0" }

hl["@string"] = { fg = "$green0" }
hl["@string.documentation"] = { fg = "$green2" }
hl["@string.regexp"] = { fg = "$dark11" }
hl["@string.escape"] = { fg = "$dark10" }
hl["@string.special"] = { fg = "$blue2" }
hl["@string.special.symbol"] = { fg = "$blue2" }
hl["@string.special.path"] = { fg = "$yellow0" }
hl["@string.special.url"] = { fg = "$cyan0", underline = true }

hl["@character"] = { fg = "$dark10" }
hl["@character.special"] = { fg = "$dark11" }

hl["@boolean"] = { fg = "$dark12" }
hl["@number"] = { fg = "$dark13" }
hl["@number.float"] = { fg = "$dark13" }

hl["@type"] = { fg = "$orange1" }
hl["@type.builtin"] = { fg = "$orange2" }
hl["@type.definition"] = { fg = "$orange0" }

hl["@attribute"] = { fg = "$green0" }
hl["@attribute.builtin"] = { fg = "$green1" }
hl["@property"] = { fg = "$dark10" }

hl["@function"] = { fg = "$blue0" }
hl["@function.builtin"] = { fg = "$blue1" }
hl["@function.call"] = { fg = "$blue0" }
hl["@function.macro"] = { fg = "$dark11" }

hl["@function.method"] = { fg = "$blue0" }
hl["@function.method.call"] = { fg = "$blue0" }

hl["@constructor"] = { fg = "$dark9" }
hl["@operator"] = { fg = "$dark10" }

hl["@keyword"] = { fg = "$purple0" }
hl["@keyword.coroutine"] = { fg = "$purple0" }
hl["@keyword.funtion"] = { fg = "$purple1" }
hl["@keyword.operator"] = { fg = "$purple2" }
hl["@keyword.import"] = { fg = "$purple1" }
hl["@keyword.type"] = { fg = "$purple1" }
hl["@keyword.modifier"] = { fg = "$purple0" }
hl["@keyword.repeat"] = { fg = "$purple0" }
hl["@keyword.return"] = { fg = "$purple0" }
hl["@keyword.debug"] = { fg = "$purple0" }
hl["@keyword.exception"] = { fg = "$purple2" }
hl["@keyword.conditional"] = { fg = "$purple0" }
hl["@keyword.conditional.ternary"] = { fg = "$purple2" }
hl["@keyword.directive"] = { fg = "$purple0" }
hl["@keyword.directive.define"] = { fg = "$purple1" }

hl["@punctuation"] = { fg = "$dark10" }
hl["@punctuation.bracket"] = { fg = "$dark9" }
hl["@punctuation.special"] = { fg = "$dark12" }

hl["@comment"] = { fg = "$dark5", italic = true }
hl["@comment.documentation"] = { fg = "$dark6" }
hl["@comment.error"] = { fg = "$red0" }
hl["@comment.warning"] = { fg = "$yellow0" }
hl["@comment.todo"] = { fg = "$blue0" }
hl["@comment.note"] = { fg = "$cyan0" }

hl["@markup.strong"] = { bold = true }
hl["@markup.italic"] = { italic = true }
hl["@markup.strikethrough"] = { strikethrough = true }
hl["@markup.underline"] = { underline = true }

hl["@markup.heading"] = { fg = "$dark10", bold = true }
hl["@markup.heading.1"] = { fg = "$dark10", bold = true }
hl["@markup.heading.2"] = { fg = "$dark11", bold = true }
hl["@markup.heading.3"] = { fg = "$dark12", bold = true }
hl["@markup.heading.4"] = { fg = "$dark13", bold = true }
hl["@markup.heading.5"] = { fg = "$dark14", bold = true }
hl["@markup.heading.6"] = { fg = "$dark15", bold = true }
hl["@markup.quote"] = { fg = "$dark12" }
hl["@markup.math"] = { fg = "$dark13" }
hl["@markup.link"] = { fg = "$cyan0" }
hl["@markup.link.label"] = { fg = "$cyan0" }
hl["@markup.link.url"] = { fg = "$cyan1", underline = true }
hl["@markup.raw"] = { fg = "$dark11" }
hl["@markup.raw.block"] = { fg = "$dark13" }
hl["@markup.list"] = { fg = "$dark12" }
hl["@markup.list.checked"] = { fg = "$dark14" }
hl["@markup.list.unchecked"] = { fg = "$dark10" }

hl["@diff.plus"] = { fg = "$green2" }
hl["@diff.minus"] = { fg = "$red2" }
hl["@diff.delta"] = { fg = "$blue2" }

hl["@tag"] = { fg = "$dark9" }
hl["@tag.builtin"] = { fg = "$dark10" }
hl["@tag.attribute"] = { fg = "$orange0" }
hl["@tag.delimiter"] = { fg = "$dark8" }

-- Code retlated
hl.Identifier = { link = "@constant" }
hl.Function = { link = "@function" }
hl.Type = { link = "@type" }
hl.Variable = { link = "@variable" }
hl.Statement = { link = "@keyword" }
hl.Special = { fg = "$cyan0" }
hl.Keyword = { link = "@keyword" }
hl.Conditional = { link = "@keyword.conditional" }
hl.Repeat = { link = "@keyword.repeat" }
hl.Label = { link = "@label" }
hl.Exception = { link = "@keyword.exception" }
hl.PreProc = { link = "@function.macro" }
hl.Constant = { link = "@constant" }
hl.String = { link = "@string" }
hl.Character = { link = "@character" }
hl.Number = { link = "@number" }
hl.Boolean = { link = "@boolean" }
hl.Float = { link = "@number.float" }
hl.Quote = { link = "@string" }
hl.Operator = { link = "@operator" }
hl.Delimiter = { link = "@punctuation" }
hl.MatchParen = { fg = "$dark15" }
hl.Todo = { link = "@comment.todo" }
hl.Question = { fg = "$blue0" }
hl.Comment = { link = "@comment" }
hl.SpecialComment = { link = "Comment" }

-- Diagnostics
hl.DiagnosticOk = { fg = "$dark11" }
hl.DiagnosticHint = { fg = "$purple1" }
hl.DiagnosticInfo = { fg = "$cyan1" }
hl.DiagnosticWarn = { fg = "$yellow1" }
hl.DiagnosticError = { fg = "$red1" }
hl.DiagnosticDeprecated = { fg = "$yellow1", strikethrough = true }

hl.DiagnosticVirtualTextOk = { fg = "$dark9" }
hl.DiagnosticVirtualTextHint = { fg = "$dark_purple" }
hl.DiagnosticVirtualTextInfo = { fg = "$dark_cyan" }
hl.DiagnosticVirtualTextWarn = { fg = "$dark_yellow" }
hl.DiagnosticVirtualTextError = { fg = "$dark_red" }

hl.DiagnosticSignOk = { fg = "$dark12" }
hl.DiagnosticSignHint = { fg = "$purple2" }
hl.DiagnosticSignInfo = { fg = "$cyan2" }
hl.DiagnosticSignWarn = { fg = "$yellow2" }
hl.DiagnosticSignError = { fg = "$red2" }
hl.DiagnosticSignDeprecated = { fg = "$yellow2" }

hl.DiagnosticUnderlineWarn = { sp = "$yellow0", undercurl = true }
hl.DiagnosticUnderlineInfo = { sp = "$cyan0", undercurl = true }
hl.DiagnosticUnderlineHint = { sp = "$purple0", undercurl = true }
hl.DiagnosticUnderlineError = { sp = "$red0", undercurl = true }

-- LSP
hl["@lsp.type.keyword"] = { link = "@keyword" }
hl["@lsp.type.function"] = { link = "@function" }
hl["@lsp.type.variable"] = { link = "@variable" }
hl["@lsp.type.operator"] = { link = "@operator" }
hl["@lsp.type.type"] = { link = "@type" }
hl["@lsp.type.string"] = { link = "@string" }
hl["@lsp.type.number"] = { link = "@number" }
hl["@lsp.type.boolean"] = { link = "@boolean" }
hl["@lsp.type.enumMember"] = { link = "@variable.member" }

-- Diff
hl.DiffAdd = { bg = "$bg_green", fg = "$dark13" }
hl.DiffChange = { bg = "$bg_yellow", fg = "$dark13" }
hl.DiffDelete = { bg = "$bg_red", fg = "$dark13" }
hl.DiffText = { bg = "$bg_blue", fg = "$dark13" }
hl.Added = { fg = "$green0" }
hl.Deleted = { fg = "$red0" }
hl.Removed = { fg = "$red0" }
hl.Changed = { fg = "$yellow0" }

-- Language tweaks
require("darkslate.lang.css")(hl, o)

-- Plugin highlights
require("darkslate.plugin.lazy_nvim")(hl, o)
require("darkslate.plugin.blink_cmp")(hl, o)
require("darkslate.plugin.flash")(hl, o)
require("darkslate.plugin.snacks")(hl, o)
require("darkslate.plugin.oil")(hl, o)
require("darkslate.plugin.gitsigns")(hl, o)

return hl
