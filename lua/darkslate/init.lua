---@class darkslate.opts.plugin
--- config for 'lualine.nvim' plugin
---@field lualine? darkslate.opts.plugin.lualine

---@class darkslate.opts
--- key-value table with color name and color as its key and value.
---
--- example:
--- ```lua
--- {
---   real_red = "#ff0000",
---   pure_green = "#00ff00",
--- }
--- ```
---@field color? table<string, string|integer>
--- key-value table with highlight group name and [vim.api.keyset.highlight] as
--- its key and value, you can add '$' prefix for accessing current colorname
--- for this theme.
---
--- example:
--- ```lua
--- {
---   CustomHl = {
---     bg = "$dark10", -- use darkslate.nvim's 'dark10' color as bg color
---     fg = "#aabbcc", -- color in #aabbcc for fg color
---     underline = true, -- add underline
---   },
--- }
--- ```
---@field hl? table<string, vim.api.keyset.highlight>
--- key-value table with kind icon name and color as its key and value, this
--- option will be used for completion icon highlight, you can add '$' prefix
--- for accessing current colorname for this theme.
---
--- example:
--- ```lua
--- {
---   Function = "$red0",
---   Class = "$green2",
--- }
--- ```
---
--- used for completion plugins (e.g [blink.cmp](https://github.com/Saghen/blink.cmp)) icon color
---@field kind_color? table<string, string>
--- colorscheme brightness level (starts at 1)
---@field level? integer
--- configuration for specific plugins.
---@field plugin? darkslate.opts.plugin

local utils = require("darkslate.utils")
local M = {
  ---@type darkslate.opts
  opts = {
    level = 1,
    hl = {},
    kind_color = {
      Text = "$dark10",
      Method = "$purple0",
      Function = "$blue0",
      Constructor = "$orange2",
      Field = "$cyan0",
      Variable = "$red0",
      Class = "$orange0",
      Interface = "$blue2",
      Module = "$yellow0",
      Property = "$cyan1",
      Unit = "$orange0",
      Value = "$dark14",
      Enum = "$orange0",
      Keyword = "$purple0",
      Snippet = "$red2",
      Color = "$green2",
      File = "$yellow2",
      Reference = "$blue1",
      Folder = "$cyan2",
      EnumMember = "$orange1",
      Constant = "$dark6",
      Struct = "$purple2",
      Event = "$green0",
      Operator = "$red0",
      TypeParamter = "$orange0",
    },
    plugin = require("darkslate.plugin"),
  }
}

function M.expand_color(color)
  if type(color) ~= "string" then return color end
  local name = color:match("^%$([a-zA-Z0-9_]+)$")
  if name then
    local got = M.opts.color[name]
    if got then
      return got
    end
    local expanded_color = M.expand_color(got)
    if not expanded_color then
      utils.notify_error(
        string.format("no color with name '%s'", name),
        "available colors [" .. utils.join_keys(M.opts.color, ", ") .. "]"
      )
      return
    end
    return expanded_color
  else
    return color
  end
end

function M.reset_color_opt()
  local color = require("darkslate.color")
  M.opts.color = vim.tbl_extend("keep", color[M.opts.level] or color[1], {})
end

---@param opts darkslate.opts
function M.setup(opts)
  if opts.level ~= nil then
    if type(opts.level) == "number" then
      M.opts.level = math.floor(opts.level)
    else
      utils.notify(
        vim.log.levels.WARN,
        string.format("when 'setup(opts)' is called, 'opts.level' has type %s", type(opts.level)),
        "'opt.level' must be a number"
      )
    end
  end

  if not M.opts.color then M.reset_color_opt() end

  opts = opts or {}
  if opts.color ~= nil then
    if type(opts.color) ~= "table" then
      utils.notify_error(
        string.format("when 'setup(opts)' is called, 'opts.color' has type %s", type(opts.color)),
        "'opt.color' must be a table with format '{[color_name]: color}'"
      )
      return
    end

    for color, value in pairs(opts.color) do
      M.opts.color[color] = value
    end
  end

  if opts.hl ~= nil and type(opts.color) ~= "table" then
    utils.notify_error(
      string.format("when 'setup(opts)' is called, 'opts.hl' has type %s", type(opts.color)),
        "'opt.hl' must be a table with format '{[hl_group_name]: vim.api.keyset.highlight}'"
    )
    return
  end
  M.opts.hl = opts.hl

  if opts.kind_color ~= nil then
    if type(opts.kind_color) ~= "table" then
      utils.notify_error(
        string.format("when 'setup(opts)' is called, 'opts.kind_color' has type %s", type(opts.color)),
        "'opt.kind_color' must be a table with format '{[kind_name]: color}'"
      )
      return
    end

    for kind, value in pairs(opts.kind_color) do
      M.opts.kind_color[kind] = value
    end
  end

  if opts.plugin ~= nil then
    if type(opts.plugin) ~= "table" then
      utils.notify_error(
        string.format("when 'setup(opts)' is called, 'opts.plugin' has type %s", type(opts.color)),
        "'opt.plugin' must be a table with format '{[plugin_name]: config}'"
      )
      return
    end

    for plugin_name, config in pairs(opts.plugin) do
      if not M.opts.plugin[plugin_name] then
        utils.notify(
          vim.log.levels.WARN,
          string.format("configuration for '%s' plugin doesn't exists", plugin_name),
          "available plugins: [" .. utils.join_keys(M.opts.plugin) .. "]"
        )
      else
        for k, v in pairs(config) do
          M.opts.plugin[plugin_name][k] = v
        end
      end
    end
  end
end

function M.set_colorscheme()
  vim.cmd.highlight("clear")
  vim.g.colors_name = "darkslate"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  ---@type table<string, vim.api.keyset.highlight>
  local hl = {}

  for name, value in pairs(require("darkslate.hl")) do
    hl[name] = value
  end

  for name, value in pairs(M.opts.hl or {}) do
    if hl[name] then
      local orig = hl[name]
      hl[name] = vim.tbl_extend("force", orig, value)
      hl[name].bg = (value.bg or value.background) or (orig.bg or orig.background)
      hl[name].fg = (value.fg or value.foreground) or (orig.fg or orig.foreground)
      hl[name].sp = (value.sp or value.special) or (orig.sp or orig.special)
      hl[name].background = nil
      hl[name].foreground = nil
      hl[name].special = nil
    else
      hl[name] = value
    end
  end

  for name, value in pairs(hl) do
    local bg = M.expand_color(value.bg)
    if value.bg and not bg then return end
    local fg = M.expand_color(value.fg)
    if value.fg and not fg then return end
    local sp = M.expand_color(value.sp)
    if value.sp and not sp then return end

    vim.api.nvim_set_hl(0, name, vim.tbl_extend("force", value, {
      bg = bg,
      fg = fg,
      sp = sp,
    }))
  end
end

return M
