local M = {}

function M.tweak_opts(opts)
  opts.override_by_extension = {}
  local file_extension = require("darkslate.plugin.nvim_web_devicons.file_extension")
  local orig_file_extension = require("nvim-web-devicons.default.icons_by_file_extension")
  for ext, color in pairs(file_extension) do
    opts.override_by_extension[ext] = {
      icon = orig_file_extension[ext].icon,
      name = orig_file_extension[ext].name,
      color = color,
    }
  end
  return opts
end

return M
