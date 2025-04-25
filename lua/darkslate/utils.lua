local M = {}

--- join a {t} keys with optional {sep}
---@param t table
---@param sep? string
---@return string
function M.join_keys(t, sep)
  local str = ""
  local i = 1
  for key, _ in pairs(t) do
    if sep and i > 1 then
      str = str .. sep
    end
    str = str .. key
    i = i + 1
  end
  return str
end

--- notify what is causing notification to neovim and with an optional
--- helpfull {hint}.
---@param level vim.log.levels
---@param cause string
---@param hint? string
function M.notify(level, cause, hint)
  local msg = "FORM: 'darkslate.nvim' plugin\nCAUSE: " .. cause
  if hint then
    msg = msg .. "\nHINT: " .. hint
  end
  vim.notify_once(msg, level)
end

--- notify what is causing an error to neovim and with an optional
--- helpfull {hint}.
---@param cause string
---@param hint? string
function M.notify_error(cause, hint)
  M.notify(vim.log.levels.ERROR, cause, hint)
end

return M
