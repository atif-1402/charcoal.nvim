local charcoal = {}

local simplified_highlight_groups_monochrome =
        require("charcoal.simplified_highlight_groups_monochrome")
local highlight_groups = require("charcoal.highlight_groups")
local palettes = require("charcoal.palettes")

charcoal.default_config =
{
        monochrome = false,
        bold =
        {
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
        italic =
        {
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

charcoal.get_highlight_groups = function(palette, config)
        local shg = simplified_highlight_groups_monochrome.get(palette, config)
        return highlight_groups.get(shg, config)
end

charcoal.setup = function(opts)
        charcoal.config = vim.tbl_deep_extend("force", charcoal.default_config,
                opts or {})
end

charcoal.load = function()
         if vim.version().minor < 7 then
                 vim.notify_once("charcoal.nvim: requires neovim 0.7.0 or higher.")
         end

         if vim.g.colors_name then
                 vim.cmd("highlight clear")
         end
         vim.o.termguicolors = true
         vim.g.colors_name = nil

         local group_list = charcoal.get_highlight_groups(
                 palettes.get(charcoal.config), charcoal.config)
         for k, v in pairs(group_list) do
                 if (charcoal.config.highlight_group_overrides[k] ~= nil) then
                         vim.api.nvim_set_hl(0, k,
                                 charcoal.config.highlight_group_overrides[k])
                 else
                         vim.api.nvim_set_hl(0, k, v)
                 end
         end

         vim.g.colors_name = "charcoal"
end

return charcoal
