local M = {}

function M.highlight(hl, _)
  hl.OilHidden = { fg = "$dark9" }
  hl.OilDir = { fg = "$cyan2", bold = true }
  hl.OilDirHidden = { fg = "$cyan0", bold = true }
  hl.OilDirIcon = { fg = "$cyan1" }
  hl.OilSocket = { fg = "$dark11" }
  hl.OilSocket = { fg = "$dark8" }
  hl.OilLink = { fg = "$cyan2" }
  hl.OilLinkHidden = { fg = "$cyan0" }
  hl.OilLinkTarget = { fg = "$blue2" }
  hl.OilLinkTargetHidden = { fg = "$blue0" }
  hl.OilOrphanLink = { link = "OilLink" }
  hl.OilOrphanLinkHidden = { link = "OilLinkHidden" }
  hl.OilOrphanLinkTarget = { link = "OilLinkTarget" }
  hl.OilOrphanLinkTargetHidden = { link = "OilLinkTargetHidden" }
  hl.OilFile = { fg = "$dark13" }
  hl.OilFileHidden = { fg = "$dark10" }
  hl.OilCreate = { fg = "$green2" }
  hl.OilDelete = { fg = "$red1" }
  hl.OilMove = { fg = "$orange2" }
  hl.OilCopy = { fg = "$blue2" }
  hl.OilChange = { fg = "$orange1" }
  hl.OilRestore = { fg = "$purple2" }
  hl.OilPurge = { fg = "$red2", bold = true }
  hl.OilTrash = { fg = "$red0" }
  hl.OilTrashSourcePath = { fg = "$dark8" }
end

return M
