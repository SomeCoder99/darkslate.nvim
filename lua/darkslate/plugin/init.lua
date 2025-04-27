---@alias darkslate.opts.plugin.lualine.mode_color
---| "red"
---| "orange"
---| "yellow"
---| "green"
---| "cyan"
---| "blue"
---| "purple"
---| string

---@class darkslate.opts.plugin.lualine
--- specify mode indicator brightness, if brightness less than *-1* lualine
--- is displayed slighly bright text on very dark background, if brightness
--- is *-1* lualine is displaed as bright text on a dark background,
--- otherwise use a '<color-mode><brightness>' (e.g 'green0') on a dark text.
---
--- > (default to *-2*)
---@field brightness? integer
---@field normal? darkslate.opts.plugin.lualine.mode_color
---@field command? darkslate.opts.plugin.lualine.mode_color
---@field insert? darkslate.opts.plugin.lualine.mode_color
---@field visual? darkslate.opts.plugin.lualine.mode_color
---@field terminal? darkslate.opts.plugin.lualine.mode_color
---@field replace? darkslate.opts.plugin.lualine.mode_color

---@type darkslate.opts.plugin
return {
  lualine = {
    brightness = -2,
    normal = "green",
    command = "yellow",
    insert = "blue",
    visual = "purple",
    terminal = "cyan",
    replace = "red",
  },
}
