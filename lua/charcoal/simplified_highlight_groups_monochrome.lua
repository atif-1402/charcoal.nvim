local M = {}

M.get_light = function(palette, config)
        local shg = {}

        shg.Red =
        {
                strength_1 = palette.black3,
                strength_2 = palette.black2,
                strength_3 = palette.black1
        }
        shg.Green =
        {
                strength_1 = palette.black4,
                strength_2 = palette.black2,
                strength_3 = palette.black3
        }
        shg.Blue = shg.Green
        shg.Yellow = shg.Red
        shg.Orange = shg.Red
        shg.Teal = shg.Green
        shg.Purple = shg.Green
        shg.Grey =
        {
                strength_1 = palette.white1,
                strength_2 = palette.black3,
                strength_3 = palette.black1
        }

        shg.Normal = {bg = palette.white4, fg = palette.black2}

        shg.Text = {fg = palette.black2}
        shg.Text_Less_Important = {fg = palette.black3}
        shg.Text_Important = {fg = palette.black1, bold = config.bold.important_text}
        shg.Text_Matched =
        {
                fg = palette.black1,
                bold = config.bold.matched_text,
                italic = config.italic.matched_text,
                underline = true
        }
        shg.Text_Info = shg.Text_Less_Important
        shg.Text_Hint = shg.Text


        shg.Layer_1 = {bg = palette.white3, fg = palette.black3}
        shg.Layer_2 = {bg = palette.white2, fg = palette.black2}
        shg.Layer_3 = {bg = palette.white1, fg = palette.black1}

        shg.Border = {fg = palette.black1}
        shg.Border_Inactive = {fg = palette.black3}
        shg.Title =
        {
                fg = palette.black1,
                bold = config.bold.title,
                italic = config.italic.title
        }
        shg.Sub_Title =
        {
                fg = palette.black2,
                bold = config.bold.title,
                italic = config.italic.title
        }
        shg.Footer = {fg = palette.black3}
        shg.Scroll_Bar = {bg = palette.white2}
        shg.Scroll_Bar_Thumb = {bg = palette.black2}

        shg.Selected =
                {bg = palette.black1, fg = palette.white2, bold = config.bold.selection}
        shg.Selected_Faded_1 = {bg = palette.black3, fg = palette.white2}
        shg.Selected_Faded_2 = {bg = palette.black4, fg = palette.white4}
        shg.Selected_Faded_3 = {bg = palette.black1, bold = true}
        shg.Selected_Line_Background = {bg = palette.white3}

        shg.Separator = {fg = palette.white2}
        shg.Separator_Inactive = {fg = palette.white3}

        shg.Line_Number_Selected =
        {
                fg = palette.black1,
                bold = config.bold.current_line_number,
                italic = config.italic.current_line_number
        }
        shg.Line_Number_Deselected = {fg = palette.black4}

        shg.Comment = {fg = palette.black4, italic = config.italic.comment}
        shg.Function =
        {
                fg = palette.black1,
                bold = config.bold._function,
                italic = config.italic._function
        }
        shg.Variable = {fg = palette.black2}
        shg.Constant = {fg = palette.black1}
        shg.String_Literal =
        {
                fg = shg.Constant.fg,
                bold = config.bold.string,
                italic = config.italic.string
        }
        shg.Type =
                {fg = palette.black1, bold = config.bold._type, italic = config.bold.type}
        shg.Module =
        {
                fg = palette.black1,
                bold = config.bold.module,
                italic = config.italic.module
        }
        shg.Keyword =
        {
                fg = palette.black3,
                bold = config.bold.keyword,
                italic = config.italic.keyword
        }
        shg.Keyword_Condition_And_Loop =
        {
                fg = palette.black2,
                bold = config.bold.condition_and_loop_keyword,
                italic = config.italic.condition_and_loop_keyword
        }
        shg.Preprocessor_Keyword =
        {
                fg = palette.black1,
                bold = config.bold.keyword,
                italic = config.italic.keyword
        }
        shg.Special_String =
        {
                fg = palette.black3,
                bold = config.bold.special_string,
                italic = config.italic.special_string
        }
        shg.Escape_Code =
        {
                fg = palette.black3,
                bold = config.bold.escape_code_characters,
                italic = config.italic.escape_code_characters
        }
        shg.Delimiter = {fg = palette.black3}

        shg.Error =
                {bg = palette.white3, fg = palette.black1, bold = true, undercurl = true}
        shg.Warning = {fg = palette.black1, bold = true}
        shg.Success = {fg = palette.black1}

        -- TODO add config table for bold option for more customization
        shg.Todo =
        {
                bg = palette.black2,
                fg = palette.white3,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Note =
        {
                bg = palette.black3,
                fg = palette.white4,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Fixme =
        {
                bg = palette.black2,
                fg = palette.white3,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Hack =
        {
                bg = palette.black3,
                fg = palette.white4,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Bug =
        {
                bg = palette.black2,
                fg = palette.white3,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }

        shg.Diff_Added = {bg = palette.white2, fg = palette.black1}
        shg.Diff_Changed = {bg = palette.white2, fg = palette.black2}
        shg.Diff_Removed = {bg = palette.white3, fg = palette.black2}

        shg.File = {fg = palette.black3}
        shg.File_Executable = {fg = palette.black1, underline = true}
        shg.Directory = {fg = palette.black2}

        shg.Matched_Brackets = {fg = palette.black1}
        shg.Keybind =
        {
                fg = palette.black1,
                bold = config.bold.keybind,
                italic = config.italic.keybind
        }

        shg.Heading_Large =
        {
                bg = palette.white2,
                fg = palette.black1,
                bold = config.bold.large_heading,
                italic = config.italic.large_heading
        }
        shg.Heading_Small =
        {
                fg = palette.black2,
                bold = config.bold.small_heading,
                italic = config.italic.small_heading
        }

        shg.Link = {fg = palette.black1, underline = true}

        shg.Icon = {fg = palette.black2}
        shg.Icon_Important = {fg = palette.black1}

        shg.Neovim_Mode_1 =
        {
                bg = palette.black2,
                fg = palette.white3,
                bold = config.bold.neovim_mode,
                italic = config.italic.neovim_mode
        }
        shg.Neovim_Mode_2 =
        {
                bg = palette.black3,
                fg = palette.white3,
                bold = config.bold.neovim_mode,
                italic = config.italic.neovim_mode
        }

        return shg
end

M.get_dark = function(palette, config)
        local shg = {}

        shg.Red =
        {
                strength_1 = palette.white1,
                strength_2 = palette.white3,
                strength_3 = palette.white4
        }
        shg.Green =
        {
                strength_1 = palette.black4,
                strength_2 = palette.white2,
                strength_3 = palette.white3
        }
        shg.Blue = shg.Green
        shg.Yellow = shg.Red
        shg.Orange = shg.Red
        shg.Teal = shg.Green
        shg.Purple = shg.Green
        shg.Grey =
        {
                strength_1 = palette.black3,
                strength_2 = palette.white1,
                strength_3 = palette.white3
        }

        shg.Normal = {bg = palette.black1, fg = palette.white3}

        shg.Text = {fg = palette.white3}
        shg.Text_Less_Important = {fg = palette.white2}
        shg.Text_Important = {fg = palette.white4, bold = config.bold.important_text}
        shg.Text_Matched =
        {
                fg = palette.white4,
                bold = config.bold.matched_text,
                italic = config.italic.matched_text,
                underline = true
        }
        shg.Text_Info = shg.Text_Less_Important
        shg.Text_Hint = shg.Text


        shg.Layer_1 = {bg = palette.black2, fg = palette.white2}
        shg.Layer_2 = {bg = palette.black3, fg = palette.white3}
        shg.Layer_3 = {bg = palette.black4, fg = palette.white4}

        shg.Border = {fg = palette.white2}
        shg.Border_Inactive = {fg = palette.white1}
        shg.Title =
        {
                fg = palette.white4,
                bold = config.bold.title,
                italic = config.italic.title
        }
        shg.Sub_Title =
        {
                fg = palette.white3,
                bold = config.bold.title,
                italic = config.italic.title
        }
        shg.Footer = {fg = palette.white2}
        shg.Scroll_Bar = {bg = palette.white1}
        shg.Scroll_Bar_Thumb = {bg = palette.white3}

        shg.Selected =
                {bg = palette.white3, fg = palette.black1, bold = config.bold.selection}
        shg.Selected_Faded_1 = {bg = palette.white2, fg = palette.black1}
        shg.Selected_Faded_2 = {bg = palette.black3, fg = palette.white3}
        shg.Selected_Faded_3 = {bg = palette.white4, bold = true}
        shg.Selected_Line_Background = {bg = palette.black3}

        shg.Separator = {fg = palette.black3}
        shg.Separator_Inactive = {fg = palette.black2}

        shg.Line_Number_Selected =
        {
                fg = palette.white3,
                bold = config.bold.current_line_number,
                italic = config.italic.current_line_number
        }
        shg.Line_Number_Deselected = {fg = palette.white1}

        shg.Comment = {fg = palette.white1, italic = config.italic.comment}
        shg.Function =
        {
                fg = palette.white4,
                bold = config.bold._function,
                italic = config.italic._function
        }
        shg.Variable = {fg = palette.white3}
        shg.Constant = {fg = palette.white4}
        shg.String_Literal =
        {
                fg = shg.Constant.fg,
                bold = config.bold.string,
                italic = config.italic.string
        }
        shg.Type =
                {fg = palette.white4, bold = config.bold._type, italic = config.bold.type}
        shg.Module =
        {
                fg = palette.white4,
                bold = config.bold.module,
                italic = config.italic.module
        }
        shg.Keyword =
        {
                fg = palette.white2,
                bold = config.bold.keyword,
                italic = config.italic.keyword
        }
        shg.Keyword_Condition_And_Loop =
        {
                fg = palette.white2,
                bold = config.bold.condition_and_loop_keyword,
                italic = config.italic.condition_and_loop_keyword
        }
        shg.Preprocessor_Keyword =
        {
                fg = palette.white4,
                bold = config.bold.keyword,
                italic = config.italic.keyword
        }
        shg.Special_String =
        {
                fg = palette.white2,
                bold = config.bold.special_string,
                italic = config.italic.special_string
        }
        shg.Escape_Code =
        {
                fg = palette.white2,
                bold = config.bold.escape_code_characters,
                italic = config.italic.escape_code_characters
        }
        shg.Delimiter = {fg = palette.white2}

        shg.Error =
                {bg = palette.white3, fg = palette.black1, bold = true, undercurl = true}
        shg.Warning = {fg = palette.white4, bold = true}
        shg.Success = {fg = palette.white4}

        -- TODO add config table for bold option for more customization
        shg.Todo =
        {
                bg = palette.white4,
                fg = palette.black1,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Note =
        {
                bg = palette.white2,
                fg = palette.black2,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Fixme =
        {
                bg = palette.white4,
                fg = palette.black1,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Hack =
        {
                bg = palette.white2,
                fg = palette.black2,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }
        shg.Bug =
        {
                bg = palette.white4,
                fg = palette.black1,
                bold = config.bold.todo_like_comments,
                italic = config.italic.todo_like_comments,
        }

        shg.Diff_Added = {bg = palette.white1, fg = palette.black1}
        shg.Diff_Changed = {bg = palette.black3, fg = palette.white4}
        shg.Diff_Removed = {bg = palette.black2, fg = palette.white3}

        shg.File = {fg = palette.white2}
        shg.File_Executable = {fg = palette.white4, underline = true}
        shg.Directory = {fg = palette.white3}

        shg.Matched_Brackets = {fg = palette.white4}
        shg.Keybind =
        {
                fg = palette.white4,
                bold = config.bold.keybind,
                italic = config.italic.keybind
        }

        shg.Heading_Large =
        {
                bg = palette.black2,
                fg = palette.white4,
                bold = config.bold.large_heading,
                italic = config.italic.large_heading
        }
        shg.Heading_Small =
        {
                fg = palette.white3,
                bold = config.bold.small_heading,
                italic = config.italic.small_heading
        }

        shg.Link = {fg = palette.white4, underline = true}

        shg.Icon = {fg = palette.white3}
        shg.Icon_Important = {fg = palette.white4}

        shg.Neovim_Mode_1 =
        {
                bg = palette.white3,
                fg = palette.black1,
                bold = config.bold.neovim_mode,
                italic = config.italic.neovim_mode
        }
        shg.Neovim_Mode_2 =
        {
                bg = palette.white2,
                fg = palette.black1,
                bold = config.bold.neovim_mode,
                italic = config.italic.neovim_mode
        }

        return shg
end

M.get = function(palette, config)
        shg = {}
        if vim.o.background == "light" then
                shg = M.get_light(palette, config)
        else
                shg = M.get_dark(palette, config)
        end
        return shg
end

return M
