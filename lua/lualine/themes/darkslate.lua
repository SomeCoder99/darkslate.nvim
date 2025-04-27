local opts = require("darkslate").opts
local c = opts.color or require("darkslate.color")

local lopt = opts.plugin.lualine or {}
local b = lopt.brightness
local a_bg, b_bg, c_bg, a_fg, b_fg, c_fg, mode_fg
local normal = lopt.normal
local command = lopt.command
local insert = lopt.insert
local visual = lopt.visual
local terminal = lopt.terminal
local replace = lopt.replace

if b < -1 then
  normal = "bg_" .. normal
  command = "bg_" .. command
  insert = "bg_" .. insert
  visual = "bg_" .. visual
  terminal = "bg_" .. terminal
  replace = "bg_" .. replace
  mode_fg = "dark7"
  a_bg, b_bg, c_bg, a_fg, b_fg, c_fg = 2, 1, 0, 11, 10, 9
elseif b == -1 then
  normal = "dark_" .. normal
  command = "dark_" .. command
  insert = "dark_" .. insert
  visual = "dark_" .. visual
  terminal = "dark_" .. terminal
  replace = "dark_" .. replace
  mode_fg = "dark12"
  a_bg, b_bg, c_bg, a_fg, b_fg, c_fg = 2, 1, 0, 12, 11, 10
else
  normal = normal .. b
  command = command .. b
  insert = insert .. b
  visual = visual .. b
  terminal = terminal .. b
  replace = replace .. b
  mode_fg = "dark0"
  a_bg, b_bg, c_bg, a_fg, b_fg, c_fg = 3, 2, 1, 14, 13, 12
end

local theme = {
  normal = {
    a = { fg = c[mode_fg], bg = c[normal], gui = "bold" },
    b = { fg = c["dark" .. (b_fg + 1)], bg = c["dark" .. (b_bg + 1)] },
    c = { fg = c["dark" .. (c_fg + 1)], bg = c["dark" .. (c_bg + 1)] },
  },
  command = { a = { fg = c[mode_fg], bg = c[command], gui = "bold" } },
  insert = { a = { fg = c[mode_fg], bg = c[insert], gui = "bold" } },
  visual = { a = { fg = c[mode_fg], bg = c[visual], gui = "bold" } },
  terminal = { a = { fg = c[mode_fg], bg = c[terminal], gui = "bold" } },
  replace = { a = { fg = c[mode_fg], bg = c[replace], gui = "bold" } },
  inactive = {
    a = { fg = c["dark" .. a_fg], bg = c["dark" .. a_bg] },
    b = { fg = c["dark" .. b_fg], bg = c["dark" .. b_bg] },
    c = { fg = c["dark" .. c_fg], bg = c["dark" .. c_bg] },
  },
}

return theme
