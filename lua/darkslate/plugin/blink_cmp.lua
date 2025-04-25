return function(hl, o)
  hl.BlinkCmpMenu = { link = "Pmenu" }
  hl.BlinkCmpMenuBorder = { link = "FloatBorder" }
  hl.BlinkCmpMenuSelection = { link = "PmenuSel" }
  hl.BlinkCmpMenuScrollBarGutter = { link = "PmenuSbar" }
  hl.BlinkCmpMenuScrollBarThumb = { link = "PmenuThumb" }
  hl.BlinkCmpMenuLabel = { fg = "$dark10" }
  hl.BlinkCmpLabelDeprecated = { link = "DiagnosticDeprecated" }
  hl.BlinkCmpLabelMatch = { link = "PmenuMatch" }
  hl.BlinkCmpLabelDetail = { link = "Comment" }
  hl.BlinkCmpLabelDescription = { link = "@comment.documentation" }
  hl.BlinkCmpKind = { fg = "$dark8" }
  hl.BlinkCmpSource = { fg = "$dark12" }
  hl.BlinkCmpGhostText = { fg = "$dark5" }
  hl.BlinkCmpDoc = { link = "NormalFloat" }
  hl.BlinkCmpDocBorder = { link = "FloatBorder" }
  hl.BlinkCmpDocSeparator = { fg = "$dark6" }
  hl.BlinkCmpDocCursorLine = { link = "NormalFloat" }
  hl.BlinkCmpSignatureHelp = { link = "NormalFloat" }
  hl.BlinkCmpSignatureHelpBorder = { link = "FloatBorder" }
  hl.BlinkCmpSignatureHelpActiveParameter = { link = "Visual" }

  for kind, color in pairs(o.kind_color) do
    hl["BlinkCmpKind" .. kind] = { fg = color }
  end
end
