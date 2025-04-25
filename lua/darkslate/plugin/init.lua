---@class darkslate.opts.plugin.lualine
--- specify mode indicator brightness, if brightness less than *-1* lualine
--- is displayed slighly bright text on very dark background, if brightness
--- is *-1* lualine is displaed as bright text on a dark background,
--- otherwise use a '<color-mode><brightness>' (e.g 'green0') on a dark text.
---
--- > (default to *-2*)
---@field brightness? integer

---@type darkslate.opts.plugin
return {
  lualine = {
    brightness = -2,
  },
}
