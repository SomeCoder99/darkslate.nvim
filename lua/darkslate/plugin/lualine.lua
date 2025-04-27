local M = {}

function M.highlight(hl, _)
  hl.LuaLineDiffAdd = { link = "Added" }
  hl.LuaLineDiffDelete = { link = "Deleted" }
  hl.LuaLineDiffChange = { link = "Changed" }
end

return M
