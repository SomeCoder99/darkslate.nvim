local M = {}

function M.highlight(hl, _)
  hl.WhichKey = { fg = "$yellow0" }
  hl.WhichKeyBorder = { link = "FloatBorder" }
  hl.WhichKeyDesc = { link = "Identifier" }
  hl.WhichKeyGroup = { fg = "$cyan0", bold = true }
  hl.WhichKeyIcon = { fg = "$dark9" }
  hl.WhichKeyIconAzure = { fg = "$blue0" }
  hl.WhichKeyIconBlue = { fg = "$blue2" }
  hl.WhichKeyIconCyan = { fg = "$cyan2" }
  hl.WhichKeyIconGreen = { fg = "$green2" }
  hl.WhichKeyIconGrey = { fg = "$dark8" }
  hl.WhichKeyIconOrange = { fg = "$orange2" }
  hl.WhichKeyIconPurple = { fg = "$purple2" }
  hl.WhichKeyIconRed = { fg = "$red2" }
  hl.WhichKeyIconYellow = { fg = "$yellow2" }
  hl.WhichKeyNormal = { link = "NormalFloat" }
  hl.WhichKeySeparator = { fg = "$dark6" }
  hl.WhichKeyTitle = { link = "FloatTitle" }
  hl.WhichKeyValue = { fg = "$red0" }
end

return M
