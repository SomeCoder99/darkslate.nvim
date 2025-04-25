return function(hl, _)
  hl.GitSignsAdd = { link = "Added" }
  hl.GitSignsChange = { link = "Changed" }
  hl.GitSignsDelete = { link = "Deleted" }
  hl.GitSignsChangedelete = { link = "GitSignsChange" }
  hl.GitSignsTopdelete = { link = "GitSignsDelete" }
  hl.GitSignsUntracked = { fg = "$orange0" }
  hl.GitSignsAddNr = { link = "GitSignsAdd" }
  hl.GitSignsChangeNr = { link = "GitSignsChange" }
  hl.GitSignsDeleteNr = { link = "GitSignsDelete" }
  hl.GitSignsChangedeleteNr = { link = "GitSignsChangedelete" }
  hl.GitSignsTopdeleteNr = { link = "GitSignsTopdelete" }
  hl.GitSignsUntrackedNr = { link = "GitSignsUntracked" }
  hl.GitSignsAddLn = { link = "DiffAdd" }
  hl.GitSignsChangeLn = { link = "DiffChange" }
  hl.GitSignsChangedeleteLn = { link = "GitSignsChangeLn" }
  hl.GitSignsTopdeleteLn = { link = "DiffDelete" }
  hl.GitSignsUntrackedLn = { bg = "$bg_orange" }
  hl.GitSignsAddCul = { link = "GitSignsAdd" }
  hl.GitSignsChangeCul = { link = "GitSignsChange" }
  hl.GitSignsDeleteCul = { link = "GitSignsDelete" }
  hl.GitSignsChangedeleteCul = { link = "GitSignsChangedelete" }
  hl.GitSignsTopdeleteCul = { link = "GitSignsTopdelete" }
  hl.GitSignsUntrackedCul = { link = "GitSignsUntracked" }
  hl.GitSignsCurrentLineBlame = { link = "NonText" }
end
