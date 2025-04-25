local M = {}

function M.highlight(hl, _)
  hl.FlashBackdrop = { link = "Comment" }
  hl.FlashMatch = { link = "Search" }
  hl.FlashCurrent = { link = "IncSearch" }
  hl.FlashLabel = { bg = "$bg_yellow", fg = "$blue2", bold = true }
  hl.FlashPrompt = { fg = "$yellow0" }
  hl.FlashPromptIcon = { fg = "$cyan2" }
end

return M
