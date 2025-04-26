local M = {}

function M.tweak_opts(opts)
  local ds = require("darkslate")
  if ds.opts.level > 1 then return opts end

  opts.override_by_extension = opts.override_by_extension or {}
  local file_extension = require("darkslate.plugin.nvim_web_devicons.file_extension")
  local orig_file_extension = require("nvim-web-devicons.default.icons_by_file_extension")
  for ext, color in pairs(file_extension) do
    opts.override_by_extension[ext] = {
      icon = orig_file_extension[ext].icon,
      name = orig_file_extension[ext].name,
      color = color,
    }
  end

  opts.override_by_filename = opts.override_by_filename or {}
  local filename = require("darkslate.plugin.nvim_web_devicons.filename")
  local orig_filename = require("nvim-web-devicons.default.icons_by_filename")
  for fname, color in pairs(filename) do
    opts.override_by_filename[fname] = {
      icon = orig_filename[fname].icon,
      name = orig_filename[fname].name,
      color = color,
    }
  end

  opts.override_by_operating_system = opts.override_by_operating_system or {}
  local operating_system = require("darkslate.plugin.nvim_web_devicons.operating_system")
  local orig_operating_system = require("nvim-web-devicons.default.icons_by_operating_system")
  for os, color in pairs(operating_system) do
    opts.override_by_operating_system[os] = {
      icon = orig_operating_system[os].icon,
      name = orig_operating_system[os].name,
      color = color,
    }
  end

  opts.override_by_desktop_environment = opts.override_by_desktop_environment or {}
  local desktop_environment = require("darkslate.plugin.nvim_web_devicons.desktop_environment")
  local orig_desktop_environment = require("nvim-web-devicons.default.icons_by_desktop_environment")
  for de, color in pairs(desktop_environment) do
    opts.override_by_desktop_environment[de] = {
      icon = orig_desktop_environment[de].icon,
      name = orig_desktop_environment[de].name,
      color = color,
    }
  end

  opts.override_by_window_manager = opts.override_by_window_manager or {}
  local window_manager = require("darkslate.plugin.nvim_web_devicons.window_manager")
  local orig_window_manager = require("nvim-web-devicons.default.icons_by_window_manager")
  for wm, color in pairs(window_manager) do
    opts.override_by_window_manager[wm] = {
      icon = orig_window_manager[wm].icon,
      name = orig_window_manager[wm].name,
      color = color,
    }
  end

  return opts
end

return M
