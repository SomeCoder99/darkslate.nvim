local M = {}

function M.highlight(hl, _)
  hl.SnacksPickerFile = { fg = "$dark12" }
  hl.SnacksPickerBold = { bold = true }
  hl.SnacksPickerItalic = { italic = true }
  hl.SnacksPickerDir = { fg = "$dark8", bold = true }
  hl.SnacksPickerKeySep = { fg = "$dark10" }
  hl.SnacksPickerIcon = { fg = "$dark15" }
  hl.SnacksPickerLink = { fg = "$cyan2", underline = true }
  hl.SnacksPickerTime = { fg = "$green0" }
  hl.SnacksPickerMatch = { fg = "$dark15", underline = true }
  hl.SnacksPickerGitIssue = { fg = "$red1" }
  hl.SnacksPickerPrompt = { fg = "$cyan2" }
  hl.SnacksPickerRegister = { fg = "$green0" }
  hl.SnacksPickerSelected = { fg = "$blue0" }
  hl.SnacksPickerGitDate = { fg = "$green0" }
  hl.SnacksPickerManPage = { fg = "$orange1" }
  hl.SnacksPickerBufFlags = { fg = "$yellow2" }
  hl.SnacksPickerBufNr = { fg = "$orange2" }
  hl.SnacksPickerKeymapMode = { fg = "$red1" }
  hl.SnacksPickerManSection = { fg = "$blue0" }
  hl.SnacksPickerKeymapLhs = { fg = "$blue1" }
  hl.SnacksPickerKeymapRhs = { fg = "$green1" }
  hl.SnacksPickerLspEnabled = { fg = "$green0" }
  hl.SnacksPickerPathHidden = { fg = "$dark7" }
  hl.SnacksPickerListCursorLine = { bg = "$dark3" }
  hl.SnacksPickerDirectory = { link = "SnacksPickerDir" }
  hl.SnacksPickerDiagnosticCode = { fg = "$red0" }
  hl.SnacksPickerGitBranchCurrent = { fg = "$orange2" }
  hl.SnacksPickerGitBranch = { fg = "$orange0" }
  hl.SnacksPickerCol = { fg = "$orange0" }
end

return M
