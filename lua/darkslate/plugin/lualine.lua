local M = {}

function M.highlight(hl, o)
  local b = o.plugin.lualine.brightness
  if b < -1 then
    b = 0
  elseif b == -1 then
    b = 1
  else
    b = 2
  end

  hl.LuaLineDiffAdd = { fg = "$green" .. b }
  hl.LuaLineDiffDelete = { fg = "$red" .. b }
  hl.LuaLineDiffChange = { fg = "$yellow" .. b }
end

return M
