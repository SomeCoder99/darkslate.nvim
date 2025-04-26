# Dark Slate
A pure dark [Neovim](https://neovim.io) theme written in [Lua](https://lua.org).

![Dark Slate Theme Preview](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/preview.png)

## Features
- Easy to configure
- Supports a few plugins

<details>
<summary>Supported plugins</summary>

- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim) (source [`oil.lua`](lua/darkslate/plugin/oil.lua))
- [folke/flash.nvim](https://github.com/folke/flash.nvim) (source [`flash.lua`](lua/darkslate/plugin/flash.lua))
- [folke/snacks.nvim](https://github.com/folke/snacks.nvim) (source [`snacks.lua`](lua/darkslate/plugin/snacks.lua))
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) (source [`gitsigns.lua`](lua/darkslate/plugin/gitsigns.lua))
- [Saghen/blink.cmp](https://github.com/Saghen/blink.cmp) (source [`blink.lua`](lua/darkslate/plugin/blink.lua))
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) (source [`lazy_nvim.lua`](lua/darkslate/plugin/lazy_nvim.lua))
- [nvim-tree/nvim-web-devicons.nvim](https://github.com/nvim-tree/nvim-web-devicons.nvim) (source [`init.lua`](lua/darkslate/plugin/nvim_web_devicons/init.lua))

</details>

## Quickstart

1. Install `SomeCoder99/darkslate.nvim`
    example with lazy.nvim

    ```lua
    { "SomeCoder99/darkslate.nvim", opts = {} }
    ```

2. Add configuration (**optional**)
    ```lua
    {
      "SomeCoder99/darkslate.nvim",
      ---@module "darkslate"
      ---@type darkslate.opts
      opts = {
          color = {}, -- create/override color name
          hl = {}, -- create/override highlight group
          plugin = {}, -- plugin specific configuration
      },
    }
    ```

3. Set your colorscheme to `darkslate`

4. Setup other plugins (**optional**)
<details>
<summary>Make <i>nvim-web-devicons</i> colors darker</summary>

```lua
{
  "nvim-tree/nvim-web-devicons",
  dependencies = { "SomeCoder99/darkslate.nvim" },
  opts = function (_, opts)
    return require("darkslate.plugin.nvim_web_devicons").tweak_opts(opts)
  end,
}
```

</details>

## Screenshots

- Screenshot of lualine.nvim with various brightness (_dark to bright_)
    ![Screenshot of lualine with brightness -2](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot1.png)
    ![Screenshot of lualine with brightness -1](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot2.png)
    ![Screenshot of lualine with brightness 0](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot3.png)
    ![Screenshot of lualine with brightness 1](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot4.png)
    ![Screenshot of lualine with brightness 2](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot5.png)

- Screenshot for snacks.nvim
    ![`snacks.picker.files()` screenshot](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot6.png)
    ![`snacks.picker.buffers()` screenshot](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot7.png)

- Screenshot for blink.cmp
    ![blink.cmp screenshot](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot8.png)

- Screenshot for darker nvim-web-devicons
    ![Darker nvim-web-devicons screenshot](https://github.com/SomeCoder99/darkslate.nvim/blob/main/images/screenshot9.png)
