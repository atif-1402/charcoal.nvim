local M = {}

M.get_palette_monochrome = function()
        local palette = {}
        if vim.o.background == "light" then
                palette.black1 = "#150f05"
                palette.black2 = "#2e2412"
                palette.black3 = "#4a3c25"
                palette.black4 = "#695a40"

                palette.white1 = "#9f8f69"
                palette.white2 = "#ad9c74"
                palette.white3 = "#bcab85"
                palette.white4 = "#c9ba96"
        else
                palette.black1 = "#120e08"
                palette.black2 = "#1b140a"
                palette.black3 = "#231b0e"
                palette.black4 = "#2a2012"

                palette.white1 = "#655030"
                palette.white2 = "#8c734e"
                palette.white3 = "#b3976d"
                palette.white4 = "#d1b994"
        end
        return palette
end

M.get = function(config)
        -- TODO: Add non-monochrome color scheme.
        palette = M.get_palette_monochrome()
        return palette
end

return M
