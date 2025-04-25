local c = require("darkslate").opts.color or require("darkslate.color")

local theme = {
  normal = {
    a = { fg = c.dark0, bg = c.green2, gui = "bold" },
    b = { fg = c.dark11, bg = c.dark2 },
    c = { fg = c.dark10, bg = c.dark1 },
  },
  command = { a = { fg = c.dark0, bg = c.yellow2, gui = "bold" } },
  insert = { a = { fg = c.dark0, bg = c.blue2, gui = "bold" } },
  visual = { a = { fg = c.dark0, bg = c.purple2, gui = "bold" } },
  terminal = { a = { fg = c.dark0, bg = c.cyan2, gui = "bold" } },
  replace = { a = { fg = c.dark0, bg = c.red2, gui = "bold" } },
  inactive = {
    a = { fg = c.dark12, bg = c.dark2 },
    b = { fg = c.dark11, bg = c.dark1 },
    c = { fg = c.dark10, bg = c.dark0 },
  },
}

return theme
