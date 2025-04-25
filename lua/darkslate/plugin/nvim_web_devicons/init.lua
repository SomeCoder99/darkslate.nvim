local M = {}

function M.tweak_opts(opts)
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

  return opts
end

return M
