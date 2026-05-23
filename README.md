### The original `charcoal.nvim` repository was deleted by the creator. <br> This repository exists as a community backup and continuation of the project.

### Installation

```lua
{
  "atif-1402/charcoal.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    require("charcoal").setup({
      monochrome = false,
    })

    vim.cmd("colorscheme charcoal")
  end,
}
```
---

## Original Readme >>

<div align="center">
    <h1>charcoal.nvim</h1>
    <p>A warm and simple colorscheme.</p>
    <p><i>
        This repository is derived from
        <a href="https://github.com/mubin-thinks/charcoal">mubin-thinks/charcoal</a>.
    </i></p>

**[Preview] | [Install] | [Contribute]**
</div>

[Preview]: https://github.com/mubin-thinks/charcoal.nvim?tab=readme-ov-file#preview
[Install]: https://github.com/mubin-thinks/charcoal.nvim?tab=readme-ov-file#install
[Contribute]: https://github.com/mubin-thinks/charcoal.nvim?tab=readme-ov-file#contribute

## About
Charcoal is a warm colorscheme for text-editors, terminals, UI and more. The colorscheme
resembles warm/rural weather, wheat field, afternoon sky etc. The dark background of
Charcoal Dark is meant to help distinguish Code from UI. Charcoal is inspired by Gruvbox
and Gruvbox Material colorschemes and tries to be simple and easy-on-eyes theme.

## Preview
<a href="https://github.com/mubin-thinks/charcoal/blob/master/readme_resources/preview_neovim_v1.1.0.png?raw=true"><img alt="preview_neovim_v1.1.0.png" src="https://github.com/mubin-thinks/charcoal/blob/master/readme_resources/preview_neovim_v1.1.0.png?raw=true"></a>

## Install
Below are instructions to install Charcoal for different package managers:

**folke/lazy.nvim**:
```lua
{
    "mubin-thinks/charcoal.nvim",
    priority = 1000,
    config = function()
        require("charcoal").setup() -- optional configuration table here
        vim.cmd("colorscheme charcoal")
    end
}
```

**nvim-mini/mini.deps**:
```lua
MiniDeps.now(function()
    MiniDeps.add({
        source = "mubin-thinks/charcoal.nvim",
    })
    require("charcoal").setup() -- optional configuration table here
    vim.cmd("colorscheme charcoal")
end)
```

### Switching between dark and light themes
Switching between light and dark themes are done through `vim.o.background` variable.
To switch to dark theme (the default), set the variable to `vim.o.background = 'dark'`
and `vim.o.background = 'light'` otherwise.

Preferable to add it right before `vim.cmd("colorscheme charcoal_monochrome")`. Here is an
example with lazy.nvim:
```lua
{
    "mubin-thinks/charcoal.nvim",
    priority = 1000,
    config = function()
        vim.o.background = 'light' -- enables light mode (make sure to set it before setup function)
        require("charcoal").setup() -- optional configuration table here
        vim.cmd("colorscheme charcoal")
    end
}
```

## Optional Configurations
If you want to change some styles of Charcoal you can do it by passing a Lua table into
the `setup()` function. The default table is below:
```lua
{
    monochrome = false, -- currently monochrome is the only mode.
                        -- (i.e. `false` has no effect). Set it to false if you want to
                        -- apply the colorful version when it releases.
    bold = {
        comment = false,
        _function = true,
        _type = true,
        module = true,
        string = false,
        escape_code_characters = false,
        special_string = false,
        condition_and_loop_keyword = true,
        keyword = false,
        todo_like_comments = true,

        title = true,
        matched_text = true,
        important_text = true,
        current_line_number = true,
        selection = false,
        large_heading = true,
        small_heading = false,
        keybind = true,
        neovim_mode = true,
    },
    italic = {
        comment = true,
        _function = true,
        _type = false,
        module = true,
        string = true,
        escape_code_characters = true,
        special_string = true,
        condition_and_loop_keyword = false,
        keyword = false,
        todo_like_comments = false,

        title = true,
        matched_text = false,
        important_text = false,
        current_line_number = true,
        selection = false,
        large_heading = false,
        small_heading = false,
        keybind = true,
        neovim_mode = false,
    },
    highlight_group_overrides = {},
    plugins = true
}
```

## Contribute
If you would like to contribute to the project through posting an issue, please do so.
But as a reminder this repository does not accept any suggestions to change the
colorscheme. If you would like to suggest any change please refer to
[mubin-thinks/charcoal](https://github.com/mubin-thinks/charcoal). I will kindly view your
opinion.
