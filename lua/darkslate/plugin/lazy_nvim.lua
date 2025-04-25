local M = {}

function M.highlight(hl, _)
  hl.LazyBold = { bold = true }
  hl.LazyButton = { link = "Visual" }
  hl.LazyButtonActive = { bg = "$dark4", fg = "$dark13" }
  hl.LazyComment = { link = "@comment.documentation" }
  hl.LazyCommit = { fg = "$red0" }
  hl.LazyCommitIssue = { fg = "$red2", bold = true }
  hl.LazyCommitScope = { italic = true }
  hl.LazyCommitType = { fg = "$orange0" }
  hl.LazyDimmed = { link = "Conceal" }
  hl.LazyDir = { link = "Directory" }
  hl.LazyError = { link = "DiagnosticError" }
  hl.LazyH1 = { bg = "$dark_blue", fg = "$dark14", bold = true }
  hl.LazyH2 = { fg = "$dark13", bold = true }
  hl.LazyInfo = { link = "DiagnosticInfo" }
  hl.LazyItalic = { italic = true }
  hl.LazyLocal = { link = "Constant" }
  hl.LazyNoCond = { link = "DiagnosticWarn" }
  hl.LazyNormal = { link = "NormalFloat" }
  hl.LazyProgressDone = { fg = "$green2" }
  hl.LazyProgressTodo = { fg = hl["@comment.todo"].fg }
  hl.LazyProp = { fg = "$dark10" }
  hl.LazyReasonCmd = { fg = "$dark10" }
  hl.LazyReasonEvent = { fg = "$green0" }
  hl.LazyReasonFt = { fg = "$orange0" }
  hl.LazyReasonImport = { fg = "$purple0" }
  hl.LazyReasonKeys = { fg = "$yellow2" }
  hl.LazyReasonPlugin = { fg = "$yellow0" }
  hl.LazyReasonRequire = { fg = "$red0" }
  hl.LazyReasonRuntime = { fg = "$dark12" }
  hl.LazyReasonSource = { fg = "$orange2" }
  hl.LazySpecial = { link = "Special" }
  hl.LazyTaskOutput = { fg = hl.MsgArea.fg }
  hl.LazyUrl = { link = "@markup.link" }
  hl.LazyValue = { fg = "$dark13" }
  hl.LazyWarning = { link = "DiagnosticWarn" }
end

return M
