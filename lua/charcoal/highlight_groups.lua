local M = {}

M.has_integration = function(plugin, config)
        local plugins_type = type(config.plugins)
        if plugins_type == "boolean" then
                return config.plugins
        end

        if plugins_type == "nil" then
                return false
        elseif plugins_type ~= "table" then
                return true
        end

        local plugin_type = type(config.plugins[plugin])
        if plugin_type == "nil" then
                return false
        elseif plugin_type ~= "boolean" then
                return true
        else
                return config.plugins[plugin]
        end
end

M.get = function(simplified_highlight_groups, config)
        local shg = simplified_highlight_groups
        -- highlight groups
        local hg = {}

        -- Group Names
        hg.Comment = shg.Comment

        hg.Constant = shg.Constant
        hg.String = shg.String_Literal
        hg.Character = shg.Constant
        hg.Number = shg.Constant
        hg.Boolean = shg.Constant
        hg.Float = shg.Constant
        hg.Identifier = shg.Variable

        hg.Function = shg.Function
        hg.Statement = shg.Text
        hg.Conditional = shg.Keyword_Condition_And_Loop
        hg.Repeat = shg.Keyword_Condition_And_Loop

        hg.Label = shg.Keyword
        hg.Operator = shg.Text
        hg.Keyword = shg.Keyword
        hg.Exception = shg.Keyword

        hg.PreProc = shg.Preprocessor_Keyword
        hg.Include = shg.Preprocessor_Keyword
        hg.Define = shg.Preprocessor_Keyword
        hg.Macro = shg.Preprocessor_keyword
        hg.PreCondit = shg.Preprocessor_keyword

        hg.Type = shg.Type
        hg.StorageClass = shg.Keyword
        hg.Structure = shg.Keyword
        hg.Typedef = shg.Keyword

        hg.Special = shg.Special_String
        hg.SpecialChar = shg.Escape_Code
        hg.Delimiter = shg.Delimiter
        hg.Debug = shg.Preprocessor_Keyword

        hg.Underlined = {sp = shg.Text.fg, underline = true}
        hg.Error = shg.Error
        hg.NvimInternalError = {link = "Error"}
        hg.Todo = shg.Todo
        hg.Note = shg.Note

        hg.Added = shg.Diff_Added
        hg.Changed = shg.Diff_Changed
        hg.Removed = shg.Diff_Removed

        -- Highlight Groups
        hg.Normal = shg.Normal
        hg.NormalFloat = shg.Layer_1
        hg.NormalNC = shg.Normal

        hg.ColorColumn = shg.Selected_Line_Background

        hg.Conceal = shg.Text

        hg.CurSearch = shg.Selected
        hg.Cursor = shg.Selected
        hg.CursorColumn = shg.Selected_Line_Background
        hg.CursorLine = shg.Selected_Line_Background
        hg.TermCursor = {link = "Cursor"}

        hg.Directory = shg.Directory

        hg.DiffAdd = shg.Diff_Added
        hg.DiffChange = shg.Diff_Changed
        hg.DiffDelete = shg.Diff_Removed
        hg.DiffText = shg.Text

        hg.EndOfBuffer = shg.Special_String

        hg.ErrorMsg = shg.Error

        hg.Folded = shg.Separator
        hg.FoldColumn = shg.Text
        hg.SignColumn = shg.Text

        hg.IncSearch = {link = "CurSearch"}

        hg.Substitute = shg.Search_Not_Current

        hg.LineNr = shg.Line_Number_Selected
        hg.LineNrAbove = shg.Line_Number_Deselected
        hg.LineNrBelow = shg.Line_Number_Deselected
        hg.CursorLineNr = {link = "LineNr"}
        hg.CursorLineFold = {link = "LineNr"}
        hg.CursorLineSign = {link = "LineNr"}

        hg.MatchParen = shg.Matched_Brackets

        hg.ModeMsg = shg.Neovim_Mode_1
        hg.MsgArea = shg.Text
        hg.MsgSeparator = shg.Separator
        hg.MoreMsg = shg.Text

        hg.RedrawDebugClear = shg.Text_Less_Important
        hg.RedrawDebugComposed = shg.Text
        hg.RedrawDebugRecompose = shg.Text_Important

        hg.NonText = shg.Comment

        hg.FloatBorder = shg.Border
        hg.FloatTitle  = shg.Title
        hg.FloatFooter = shg.Footer
        hg.FloatShadow = shg.Layer_1
        hg.FloatShadowThrough = {link = "FloatShadow"}

        hg.Pmenu = shg.Layer_1
        hg.PmenuSel = shg.Selected
        hg.PmenuKind = {link = "Pmenu"}
        hg.PmenuKindSel = {link = "PmenuSel"}
        hg.PmenuExtra = {link = "Pmenu"}
        hg.PmenuExtraSel = {link = "PmenuSel"}
        hg.PmenuSBar = shg.Scroll_Bar
        hg.PmenuThumb = shg.Scroll_Bar_Thumb
        hg.PmenuMatch = shg.Text_Matched
        hg.PmenuMatchSel = {link = "PmenuSel"}

        hg.ComplMatchIns = shg.Text_Matched

        hg.Question = shg.Text_Important
                    -- hit-enter prompt and yes/no questions

        hg.QuickFixLine = shg.Layer_1

        hg.Search = shg.Selected_Faded_1

        hg.SnippetTabstop = shg.Special_String

        hg.SpecialKey = shg.Special_String

        hg.SpellBad = {sp = shg.Text_Matched.fg, undercurl = true}
        hg.SpellCap = {sp = shg.Text.fg, undercurl = true}
        hg.SpellLocal  = {link = "SpellCap"}
        hg.SpellRare  = {link = "SpellCap"}

        hg.StatusLine = shg.Layer_2
        hg.StatusLineNC = shg.Layer_1
        hg.StatusLineTerm = {link = "StatusLine"}
        hg.StatusLineTermNC = {link = "StatusLineNC"}

        hg.TabLine = shg.Layer_1
        hg.TabLineFill = shg.Layer_1
        hg.TabLineSel = shg.Layer_3

        hg.Title = shg.Title

        hg.Visual = {bg = shg.Selected.bg, fg = shg.Selected.fg} -- visual mode selection
        hg.VisualNOS = shg.Selected_Faded_1

        hg.WarningMsg = shg.Warning

        hg.Whitespace = shg.Special_String

        hg.WildMenu = {link = "Pmenu"}

        hg.WinBar = shg.Title
        hg.WinBarNC = shg.Text

        hg.WinSeparator = shg.Separator

        hg["@variable"] = shg.Variable
        hg["@variable.builtin"] = shg.Variable
        hg["@variable.parameter.builtin"] = shg.Variable

        hg["@constant.builtin"] = shg.Constant

        hg["@module"] = shg.Module
        hg["@module.builtin"] = shg.Module

        hg["@string.regexp"] = shg.Constant
        hg["@string.escape"] = shg.Escape_Code
        hg["@string.special"] = shg.Escape_Code
        hg["@string.special.symbol"] = shg.Escape_Code
        hg["@string.special.path"] = shg.Directory

        hg["@type.builtin"] = shg.Type

        hg["@function.builtin"] = shg.Function

        hg["@keyword.type"] = {link = "Structure"}
        hg["@keyword.repeat"] = {link = "Repeat"}
        hg["@keyword.conditional"] = {link = "Conditional"}

        hg["@comment.error"] = shg.Error
        hg["@comment.warning"] = shg.Warning
        hg["@comment.note"] = shg.Note

        hg["@markup.heading.4"] = shg.Text
        hg["@markup.heading.5"] = shg.Text
        hg["@markup.heading.6"] = shg.Text

        hg["@comment.documentation"] = shg.Text

        hg.GitcommitBranch = shg.Title

        hg.GitcommitComment = shg.Comment

        hg.GitcommitDiscarded = shg.Warning
        hg.GitcommitDiscardedFile = shg.Warning
        hg.GitcommitDiscardedType = shg.Warning

        hg.GitcommitHeader = shg.Title
        hg.GitcommitOverflow = shg.Error

        hg.GitcommitSelected = shg.Selected
        hg.GitcommitSelectedFile = shg.Selected
        hg.GitcommitSelectedType = shg.Selected

        hg.GitcommitSummary = shg.Text

        hg.GitcommitUnmergedFile = shg.Warning
        hg.GitcommitUnmergedType = shg.Warning

        hg.GitcommitUntracked = shg.Comment
        hg.GitcommitUntrackedFile = shg.Comment

        -- Built-in diagnostic
        hg.DiagnosticError = shg.Error
        hg.DiagnosticHint = shg.Text_Hint
        hg.DiagnosticInfo = shg.Text_Info
        hg.DiagnosticOk = shg.Text
        hg.DiagnosticWarn = shg.Warning

        hg.DiagnosticFloatingError = {link = "DiagnosticError"}
        hg.DiagnosticFloatingHint = {link = "DiagnosticHint"}
        hg.DiagnosticFloatingInfo = {link = "DiagnosticInfo"}
        hg.DiagnosticFloatingOk = {link = "DiagnosticOk"}
        hg.DiagnosticFloatingWarn = {link = "DiagnosticWarn"}

        hg.DiagnosticSignError = {link = "DiagnosticError"}
        hg.DiagnosticSignHint = {link = "DiagnosticHint"}
        hg.DiagnosticSignInfo = {link = "DiagnosticInfo"}
        hg.DiagnosticSignOk = {link = "DiagnosticOk"}
        hg.DiagnosticSignWarn = {link = "DiagnosticWarn"}

        hg.DiagnosticUnderlineError = shg.Error
        hg.DiagnosticUnderlineHint = {fg = shg.Text.fg, underline = true}
        hg.DiagnosticUnderlineInfo =
        {
                fg = shg.Text_Important.fg,
                bold = shg.Text_Important.bold,
                underline = true
        }
        hg.DiagnosticUnderlineOk = {fg = shg.Success.fg, underline = true}
        hg.DiagnosticUnderlineWarn =
                {fg = shg.Warning.fg, bold = shg.Warning.bold, underline = true}


        hg.LspReferenceText = shg.Text
        hg.LspReferenceRead = shg.Text
        hg.LspReferenceWrite = shg.Text

        hg.LspSignatureActiveParameter = shg.Selected

        hg.LspCodeLens = shg.Comment
        hg.LspCodeLensSeparator = shg.Separator

        hg.SnippetTabstop = shg.Special_String
        hg.SnippetTabstopActive = shg.Special_String

        -- TODO: Remove 'echasnovski/mini.nvim' fallback after September 2026
        if M.has_integration('nvim-mini/mini.nvim', config) or
                M.has_integration('echasnovski/mini.nvim', config) then
                hg.MiniAnimateCursor = {link = "Cursor"}
                hg.MiniAnimateNormalFloat = {link = "NormalFloat"}

                hg.MiniClueBorder = {bg = shg.Normal.bg, fg = shg.Border.fg}
                hg.MiniClueDescGroup = {bg = shg.Normal.bg, fg = shg.Text.fg}
                hg.MiniClueDescSingle = {bg = shg.Normal.bg, fg = shg.Text.fg}
                hg.MiniClueNextKey =
                {
                        bg = shg.Normal.bg,
                        fg = shg.Keybind.fg,
                        bold = shg.Keybind.bold,
                        italic = shg.Keybind.italic
                }
                hg.MiniClueNextKeyWithPostkeys = {link = "MiniClueNextKey"}
                hg.MiniClueSeparator = {bg = shg.Normal.bg, fg = shg.Border.fg}
                hg.MiniClueTitle = shg.Title

                hg.MiniCmdlinePeekBorder = {link = "MiniClueBorder"}
                hg.MiniCmdlinePeekLineNr = {link = "LineNr"}
                hg.MiniCmdlinePeekNormal = {link = "Normal"}
                hg.MiniCmdlinePeekSep = {link = "MiniClueSeparator"}
                hg.MiniCmdlinePeekSign = shg.Icon
                hg.MiniCmdlinePeekTitle = {link = "MiniClueTitle"}

                hg.MiniCompletionActiveParameter = shg.Selected
                hg.MiniCompletionDeprecated = shg.Text_Less_Important
                hg.MiniCompletionInfoBorderOutdated = shg.Border_Inactive

                hg.MiniCursorword = {fg = shg.Text.fg, underline = true}
                hg.MiniCursorwordCurrent = {fg = shg.Text_Important.fg, underline = true}

                hg.MiniDepsChangeAdded = shg.Diff_Added
                hg.MiniDepsChangeRemoved = shg.Diff_Removed
                hg.MiniDepsHint = shg.Text_Hint
                hg.MiniDepsInfo = shg.Text_Info
                hg.MiniDepsMsgBreaking = shg.Text_Important
                hg.MiniDepsPlaceholder = shg.Text_Important
                hg.MiniDepsTitle = shg.Title
                hg.MiniDepsTitleError = shg.Error
                hg.MiniDepsTitleSame = shg.Title
                hg.MiniDepsTitleUpdate = shg.Title

                hg.MiniDiffSignAdd = shg.Icon_Important
                hg.MiniDiffSignChange = shg.Icon
                hg.MiniDiffSignDelete = shg.Icon
                hg.MiniDiffOverAdd = {link = "MiniDiffSignAdd"}
                hg.MiniDiffOverChange = {link = "MiniDiffSignChange"}
                hg.MiniDiffOverChangeBuf = {link = "MiniDiffSignChange"}
                hg.MiniDiffOverDelete = {link = "MiniDiffSignDelete"}
                hg.MiniDiffOverContext = shg.Text
                hg.MiniDiffOverContextBuf = shg.Text

                hg.MiniFilesBorder = {link = "FloatBorder"}
                hg.MiniFilesBorderModified = shg.Border_Inactive
                hg.MiniFilesCursorLine = {link = "CursorLine"}
                hg.MiniFilesDirectory = shg.Directory
                hg.MiniFilesFile = shg.File
                hg.MiniFilesNormal = shg.Text
                hg.MiniFilesTitle = shg.Sub_Title
                hg.MiniFilesTitleFocused = shg.Title

                hg.MiniHipatternsTodo = shg.Todo
                hg.MiniHipatternsNote = shg.Note
                hg.MiniHipatternsFixme = shg.Fixme
                hg.MiniHipatternsHack = shg.Hack

                hg.MiniIconsRed = {fg = shg.Red.strength_2}
                hg.MiniIconsGreen = {fg = shg.Green.strength_2}
                hg.MiniIconsBlue = {fg = shg.Blue.strength_2}
                hg.MiniIconsYellow = {fg = shg.Yellow.strength_2}
                hg.MiniIconsOrange = {fg = shg.Orange.strength_2}
                hg.MiniIconsCyan = {fg = shg.Teal.strength_2}
                hg.MiniIconsAzure = {fg = shg.Teal.strength_2}
                hg.MiniIconsPurple = {fg = shg.Purple.strength_2}
                hg.MiniIconsGrey = {fg = shg.Grey.strength_2}

                hg.MiniIndentscopeSymbol = shg.Border
                hg.MiniIndentscopeSymbolOff = {link = "MiniIndentscopeSymbol"}

                hg.MiniJump = shg.Text_Matched

                hg.MiniJump2dDim = shg.Text_Less_Important
                hg.MiniJump2dSpot = shg.Text_Matched
                hg.MiniJump2dSpotAhead = {link = "MiniJump2dSpot"}
                hg.MiniJump2dSpotUnique = {link = "MiniJump2dSpot"}

                hg.MiniMapNormal = {link = "Normal"}
                hg.MiniMapSymbolCount = shg.Text
                hg.MiniMapSymbolLine = {bg = shg.Selected.bg, fg = shg.Selected.bg}
                hg.MiniMapSymbolView = {fg = shg.Text_Less_Important.fg}

                hg.MiniNotifyBorder = {link = "FloatBorder"}
                hg.MiniNotifyLspProgress = shg.Text_Important
                hg.MiniNotifyNormal = shg.Text
                hg.MiniNotifyTitle = {link = "Title"}

                hg.MiniOperatorsExchangeFrom = shg.Selected_Faded_1

                hg.MiniPickBorder = shg.Border_Inactive
                hg.MiniPickBorderBusy = {link = "FloatBorder"}
                hg.MiniPickBorderText = shg.Text
                hg.MiniPickCursor = {link = "Cursor"}
                hg.MiniPickIconDirectory = shg.Icon
                hg.MiniPickIconFile = shg.Icon
                hg.MiniPickHeader = {link = "Title"}
                hg.MiniPickMatchCurrent = {bg = shg.Normal.bg}
                hg.MiniPickMatchMarked = {underline = true}
                hg.MiniPickMatchRanges = shg.Text_Matched
                hg.MiniPickNormal = shg.Normal
                hg.MiniPickPreviewLine = shg.Selected
                hg.MiniPickPreviewRegion = shg.Selected
                hg.MiniPickPrompt = shg.Text_Important
                hg.MiniPickPromptCaret = {link = "Cursor"}
                hg.MiniPickPromptPrefix = shg.Text_Less_Important

                hg.MiniSnippetsCurrent = shg.Text
                hg.MiniSnippetsCurrentReplace = shg.Selected
                hg.MiniSnippetsFinal = shg.Text_Less_Important
                hg.MiniSnippetsUnvisited = shg.Text
                hg.MiniSnippetsVisited = shg.Text_Less_Important

                hg.MiniStarterCurrent = shg.Text
                hg.MiniStarterFooter = {link = "FloatFooter"}
                hg.MiniStarterHeader = {link = "Title"}
                hg.MiniStarterInactive = shg.Text_Less_Important
                hg.MiniStarterItem = shg.Text
                hg.MiniStarterItemBullet = shg.Text
                hg.MiniStarterItemPrefix = shg.Text_Important
                hg.MiniStarterSection = {link = "Title"}
                hg.MiniStarterQuery = shg.Text_Matched

                hg.MiniStatuslineDevinfo = shg.Text
                hg.MiniStatuslineFileinfo = shg.Text
                hg.MiniStatuslineFilename = shg.Layer_1
                hg.MiniStatuslineInactive = shg.Normal
                hg.MiniStatuslineModeCommand = shg.Neovim_Mode_2
                hg.MiniStatuslineModeInsert = {link = "MiniStatuslineModeNormal"}
                hg.MiniStatuslineModeNormal = shg.Neovim_Mode_1
                hg.MiniStatuslineModeOther = shg.Neovim_Mode_2
                hg.MiniStatuslineModeReplace = {link = "MiniStatuslineModeNormal"}
                hg.MiniStatuslineModeVisual = {link = "MiniStatuslineModeNormal"}

                hg.MiniSurround = shg.Layer_1

                hg.MiniTablineCurrent = shg.Selected_Faded_1
                hg.MiniTablineModifiedCurrent = shg.Selected
                hg.MiniTablineVisible = shg.Layer_2
                hg.MiniTablineModifiedVisible = shg.Layer_2
                hg.MiniTablineHidden = shg.Layer_1
                hg.MiniTablineModifiedHidden = shg.Layer_1
                hg.MiniTablineFill = shg.Layer_1
                hg.MiniTablineTabpagesection = shg.Layer_1
                hg.MiniTablineTrunc = shg.Special_String

                hg.MiniTestEmphasis = shg.Text_Important
                hg.MiniTestFail = {link = "Error"}
                hg.MiniTestPass = shg.Success

                hg.MiniTrailspace = shg.Selected_Faded_1
        end

        if M.has_integration('akinsho/bufferline.nvim', config) then
                hg.BufferLineBuffer = shg.Layer_1
                hg.BufferLineBufferSelected = shg.Selected
                hg.BufferLineBufferVisible = shg.Layer_1
                hg.BufferLineCloseButton = shg.Icon
                hg.BufferLineCloseButtonSelected = shg.Icon_Important
                hg.BufferLineCloseButtonVisible = shg.Icon
                hg.BufferLineFill = shg.Layer_3
                hg.BufferLineTab = shg.Layer_2
                hg.BufferLineTabSelected = shg.Selected
        end

        if M.has_integration('anuvyklack/hydra.nvim', config) then
                hg.HydraRed = {fg = shg.Red.strength_2.fg}
                hg.HydraBlue = {fg = shg.Blue.strength_2.fg}
                hg.HydraAmaranth = {fg = shg.Red.strength_3.fg}
                hg.HydraTeal = {fg = shg.Teal.strength_2.fg}
                hg.HydraPink = {fg = shg.Purple.strength_2.fg}
                hg.HydraHint = shg.Text_Hint
        end

        if M.has_integration('DanilaMihailov/beacon.nvim', config) then
                hg.Beacon = shg.Layer_2
        end

        if M.has_integration('folke/lazy.nvim', config) then
                hg.LazyButton = shg.Icon
                hg.LazyButtonActive = shg.Icon_Important
                hg.LazyDimmed = shg.Text_Less_Important
                hg.LazyH1 = {link = "Title"}
        end

        if M.has_integration('folke/noice.nvim', config) then
                hg.NoiceCmdlinePopupBorder = {link = "FloatBorder"}
                hg.NoiceConfirmBorder = {link = "FloatBorder"}
        end

        if M.has_integration('folke/trouble.nvim', config) then
                hg.TroubleCount = shg.Title
                hg.TroubleFoldIcon = shg.Icon
                hg.TroubleIndent = {link = "LineNr"}
                hg.TroubleLocation = shg.Text_Important
                hg.TroubleSignError = {link = "Error"}
                hg.TroubleSignHint = shg.Text_Hint
                hg.TroubleSignInformation = shg.Text_Info
                hg.TroubleSignOther = shg.Text_Less_Important
                hg.TroubleSignWarning = {link = "WarningMsg"}
                hg.TroubleText = shg.Text
                hg.TroubleTextError = {link = "Error"}
                hg.TroubleTextHint = shg.Text_Hint
                hg.TroubleTextInformation = shg.TextInfo
                hg.TroubleTextWarning = {link = "WarningMsg"}
        end

        -- folke/todo-comments.nvim
        -- Everything works correctly out of the box

        if M.has_integration('folke/which-key.nvim', config) then
                hg.WhichKey = shg.Normal
                hg.WhichKeyDesc = shg.Text
                hg.WhichKeyFloat = shg.Layer_1
                hg.WhichKeyGroup = shg.Keybind
                hg.WhichKeySeparator = shg.Border
                hg.WhichKeyValue = shg.Text
        end

        if M.has_integration('ggandor/leap.nvim', config) then
                hg.LeapMatch = shg.Text_Matched
                hg.LeapLabel = shg.Layer_1
                hg.LeapLabelSelected = shg.Selected
                hg.LeapBackdrop = {link = "Comment"}
        end

        if M.has_integration('ggandor/lightspeed.nvim', config) then
                hg.LightspeedLabel = shg.Layer_1
                hg.LightspeedLabelDistant = {link = "Comment"}
                hg.LightspeedShortcut = shg.Keybind
                hg.LightspeedMaskedChar = shg.Text_Less_Important
                hg.LightspeedUnlabeledMatch = shg.Text_Less_Important
                hg.LightspeedGreyWash = shg.Text_Less_Important
                hg.LightspeedUniqueChar = shg.Text_Important
                hg.LightspeedOneCharMatch = shg.Text_Important
                hg.LightspeedPendingOpArea = shg.Layer_1
                hg.LightspeedCursor = {link = "Cursor"}
        end

        if M.has_integration('glepnir/dashboard-nvim', config) then
                hg.DashboardCenter = shg.Text
                hg.DashboardFooter = {link = "FloatFooter"}
                hg.DashboardHeader = {link = "Title"}
                hg.DashboardShortCut = shg.Keybind
        end

        if M.has_integration('glepnir/lspsaga.nvim', config) then
                hg.LspSagaCodeActionBorder = shg.Border
                hg.LspSagaCodeActionContent = shg.Text
                hg.LspSagaCodeActionTitle = {link = "Title"}

                hg.Definitions = shg.Text_Important
                hg.DefinitionsIcon = shg.Icon_Important
                hg.FinderParam = shg.Text
                hg.FinderVirtText = shg.Text_Less_Important
                hg.LspSagaAutoPreview = shg.Layer_1
                hg.LspSagaFinderSelection = shg.Selected
                hg.LspSagaLspFinderBorder = shg.Border
                hg.References = shg.Text_Important
                hg.ReferencesIcon = shg.Icon
                hg.TargetFileName = shg.Text_Matched

                hg.FinderSpinner = shg.Icon
                hg.FinderSpinnerBorder = shg.Border
                hg.FinderSpinnerTitle = {link = "Title"}

                hg.LspSagaDefPreviewBorder = shg.Border

                hg.LspSagaHoverBorder = shg.Border

                hg.LspSagaRenameBorder = shg.Border

                hg.LspSagaDiagnosticBorder = shg.Border
                hg.LspSagaDiagnosticHeader = {link = "Title"}
                hg.LspSagaDiagnosticSource = shg.Text_Important

                hg.LspSagaBorderTitle = {link = "Title"}

                hg.LspSagaSignatureHelpBorder = shg.Border

                hg.LSOutlinePreviewBorder = shg.Border
                hg.OutlineDetail = shg.Text
                hg.OutlineFoldPrefix = shg.Text_Matched
                hg.OutlineIndentEvn = shg.Special_String
                hg.OutlineIndentOdd = shg.Special_String
        end

        if M.has_integration('HiPhish/rainbow-delimiters.nvim', config) then
                hg.RainbowDelimiterRed = {fg = shg.Red.strength_2.fg}
                hg.RainbowDelimiterGreen = {fg = shg.Green.strength_2.fg}
                hg.RainbowDelimiterBlue = {fg = shg.Blue.strength_2.fg}
                hg.RainbowDelimiterYellow = {fg = shg.Yellow.strength_2.fg}
                hg.RainbowDelimiterOrange = {fg = shg.Orange.strength_2.fg}
                hg.RainbowDelimiterCyan = {fg = shg.Teal.strength_2.fg}
                hg.RainbowDelimiterViolet = {fg = shg.Purple.strength_2.fg}
        end

        if M.has_integration('hrsh7th/nvim-cmp', config) then
                hg.CmpItemAbbr = {link = "Pmenu"}
                hg.CmpItemAbbrDeprecated = shg.Text_Less_Important
                hg.CmpItemAbbrMatch = {link = "PmenuMatch"}
                hg.CmpItemAbbrMatchFuzzy = {link = "PmenuMatch"}
                hg.CmpItemKind = {link = "PmenuKind"}
                hg.CmpItemMenu = {link = "PmenuSel"}

                hg.CmpItemKindClass = {link = "Type"}
                hg.CmpItemKindColor = shg.Text
                hg.CmpItemKindConstant = {link = "Constant"}
                hg.CmpItemKindConstructor = {link = "Function"}
                hg.CmpItemKindEnum = {link = "Structure"}
                hg.CmpItemKindEnumMember = {link = "Identifier"}
                hg.CmpItemKindEvent = {link = "Function"}
                hg.CmpItemKindField = {link = "Identifier"}
                hg.CmpItemKindFile = shg.File
                hg.CmpItemKindFolder = shg.Directory
                hg.CmpItemKindFunction = {link = "Function"}
                hg.CmpItemKindInterface = {link = "Type"}
                hg.CmpItemKindKeyword = {link = "Keyword"}
                hg.CmpItemKindMethod = {link = "Function"}
                hg.CmpItemKindModule = {link = "@module"}
                hg.CmpItemKindOperator = {link = "Operator"}
                hg.CmpItemKindProperty = {link = "Identifier"}
                hg.CmpItemKindReference = shg.Text_Important
                hg.CmpItemKindSnippet = shg.Text
                hg.CmpItemKindStruct = {link = "Structure"}
                hg.CmpItemKindText = shg.Text
                hg.CmpItemKindTypeParameter = {link = "Type"}
                hg.CmpItemKindUnit = {link = "Constant"}
                hg.CmpItemKindValue = {link = "Identifier"}
                hg.CmpItemKindVariable = {link = "Identifier"}
        end

        if M.has_integration('ibhagwan/fzf-lua', config) then
                hg.FzfLuaBufFlagAlt = shg.Text
                hg.FzfLuaBufFlagCur = shg.Text_Important
                hg.FzfLuaBufNr = {link = "LineNr"}
                hg.FzfLuaHeaderBind = shg.Keybind
                hg.FzfLuaHeaderText = {link = "Title"}
                hg.FzfLuaLiveSym = shg.Text_Matched
                hg.FzfLuaPathColNr = {link = "ColorColumn"}
                hg.FzfLuaPathLineNr = {link = "LineNr"}
                hg.FzfLuaTabMarker = shg.Text
                hg.FzfLuaTabTitle = {link = "Title"}
                hg.FzfLuaTitle = {link = "Title"}
                hg.FzfLuaBorder = {link = "FloatBorder"}
        end

        if M.has_integration('justinmk/vim-sneak', config) then
                hg.Sneak = shg.Layer_2
                hg.SneakCurrent = shg.Selected
                hg.SneakScope = shg.Selected
                hg.SneakLabel = shg.Layer_2
        end

        if M.has_integration('kevinhwang91/nvim-bqf', config) then
                hg.BqfPreviewFloat = shg.Layer_1
                hg.BqfPreviewTitle = shg.Title
                hg.BqfSign = shg.Text
        end

        -- 'kevinhwang91/nvim-ufo'
        -- Everything works correctly out of the box

        if M.has_integration('lewis6991/gitsigns.nvim', config) then
                hg.GitSignsAdd = shg.Diff_Added
                hg.GitSignsAddLn = shg.Text_Important
                hg.GitSignsAddInline = shg.Diff_Added

                hg.GitSignsChange = shg.Diff_Changed
                hg.GitSignsChangeLn = shg.Text
                hg.GitSignsChangeInline = shg.Diff_Changed

                hg.GitSignsDelete = shg.Diff_Removed
                hg.GitSignsDeleteLn = shg.Text_Less_Important
                hg.GitSignsDeleteInline = shg.Diff_Removed

                hg.GitSignsUntracked = shg.Text_Less_Important
                hg.GitSignsUntrackedLn = shg.Line_Number_Deselected
                hg.GitSignsUntrackedInline = shg.Text_Less_Important
        end

        if M.has_integration('lukas-reineke/indent-blankline.nvim', config) then
                hg.IndentBlanklineChar = shg.Border
                hg.IndentBlanklineContextChar = shg.Text
                hg.IndentBlanklineContextStart = shg.Text_Important
                hg.IndentBlanklineIndent1 = shg.Border
                hg.IndentBlanklineIndent2 = shg.Border
                hg.IndentBlanklineIndent3 = shg.Border
                hg.IndentBlanklineIndent4 = shg.Border
                hg.IndentBlanklineIndent5 = shg.Border
                hg.IndentBlanklineIndent6 = shg.Border
                hg.IndentBlanklineIndent7 = shg.Border
                hg.IndentBlanklineIndent8 = shg.Border
        end

        if M.has_integration('MeanderingProgrammer/render-markdown.nvim', config) then
                hg.RenderMarkdownBullet = shg.Text
                hg.RenderMarkdownChecked = shg.Text_Important
                hg.RenderMarkdownUnchecked = shg.Text
                hg.RenderMarkdownCode = {bg = shg.Layer_1.bg}
                hg.RenderMarkdownCodeInline = {bg = shg.Normal.bg}
                hg.RenderMarkdownDash = shg.Text_Important
                hg.RenderMarkdownH1 = shg.Heading_Large
                hg.RenderMarkdownH1Bg = {bg = shg.Heading_Large.bg}
                hg.RenderMarkdownH2 = shg.Heading_Large
                hg.RenderMarkdownH2Bg = {bg = shg.Heading_Large.bg}
                hg.RenderMarkdownH3 = shg.Text
                hg.RenderMarkdownH3Bg = {bg = shg.Layer_1.bg}
                hg.RenderMarkdownH4 = shg.Text
                hg.RenderMarkdownH4Bg = {bg = shg.Layer_1.bg}
                hg.RenderMarkdownH5 = shg.Heading_Small
                hg.RenderMarkdownH5Bg = {bg = shg.Heading_Small.bg}
                hg.RenderMarkdownH6 = shg.Text_Less_Important
                hg.RenderMarkdownH6Bg = {bg = shg.Heading_Small.bg}
                hg.RenderMarkdownTodo = {link = "Todo"}
        end

        if M.has_integration('neoclide/coc.nvim', config) then
                hg.CocCodeLens = {link = "Comment"}
                hg.CocDisabled = {link = "Comment"}
                hg.CocFadeOut = shg.Text_Less_Important
                hg.CocMarkdownLink = shg.Link
                hg.CocMenuSel = {link = "PmenuSel"}
                hg.CocNotificationProgress = shg.Text_Important
                hg.CocPumVirtualText = shg.Text_Less_Important
                hg.CocSearch = shg.Text_Matched
                hg.CocSelectedText = {link = "PmenuSel"}
        end

        if M.has_integration('NeogitOrg/neogit', config) then
                hg.NeogitCommitViewHeader = {link = "Title"}
                hg.NeogitDiffAddHighlight = shg.Diff_Added
                hg.NeogitDiffAdd = shg.Diff_Added
                hg.NeogitDiffDeleteHighlight = shg.Diff_Removed
                hg.NeogitDiffDelete = shg.Diff_Removed
                hg.NeogitFold = {link = "Folded"}
                hg.NeogitHunkHeader = {link = "Title"}
                hg.NeogitHunkHeaderHighlight = {link = "Title"}
                hg.NeogitNotificationError = {link = "Error"}
                hg.NeogitNotificationInfo = shg.Text_Info
                hg.NeogitNotificationWarning = {link = "WarningMsg"}
        end

        -- nvim-lualine/lualine.nvim
        -- Everything works correctly out of the box

        if M.has_integration('nvim-neo-tree/neo-tree.nvim', config) then
                hg.NeoTreeDimText = shg.Text_Less_Important
                hg.NeoTreeDotfile = shg.Directory
                hg.NeoTreeFadeText1 = shg.Text
                hg.NeoTreeFadeText2 = shg.Text_Less_Important
                hg.NeoTreeGitAdded = shg.Diff_Added
                hg.NeoTreeGitConflict = shg.WarningMsg
                hg.NeoTreeGitDeleted = shg.Diff_Removed
                hg.NeoTreeGitModified = shg.Diff_Changed
                hg.NeoTreeGitUnstaged = shg.WarningMsg
                hg.NeoTreeGitUntracked = shg.Text_Less_Important
                hg.NeoTreeMessage = shg.Text
                hg.NeoTreeModified = shg.Text_Important
                hg.NeoTreeRootName = shg.Title
                hg.NeoTreeTabInactive = shg.Layer_1
                hg.NeoTreeTabSeparatorActive = shg.Separator
                hg.NeoTreeTabSeparatorInactive = shg.Separator_Inactive
        end

        if M.has_integration('nvim-telescope/telescope.nvim', config) then
                hg.TelescopeBorder = {link = "FloatBorder"}
                hg.TelescopeMatching = shg.Text_Matched
                hg.TelescopeMultiSelection = shg.Text_Matched
                hg.TelescopeSelection = shg.Selected
        end

        if M.has_integration('nvim-tree/nvim-tree.lua', config) then
                hg.NvimTreeExecFile = shg.File_Executable
                hg.NvimTreeFolderIcon = shg.Icon
                hg.NvimTreeGitDeleted = shg.Diff_Removed
                hg.NvimTreeGitDirty = shg.WarningMsg
                hg.NvimTreeGitMerge = shg.Success
                hg.NvimTreeGitNew = shg.Success
                hg.NvimTreeGitRenamed = shg.WarningMsg
                hg.NvimTreeGitStaged = shg.Success
                hg.NvimTreeImageFile = shg.File
                hg.NvimTreeIndentMarker = shg.Special_String
                hg.NvimTreeOpenedFile = shg.Text_Important
                hg.NvimTreeRootFolder = shg.Text_Important
                hg.NvimTreeSpecialFile = shg.File
                hg.NvimTreeSymlink = shg.File
                hg.NvimTreeWindowPicker = shg.Layer_1
        end

        if M.has_integration('OXY2DEV/helpview.nvim', config) then
                hg.HelpviewHeading1 = shg.Heading_Large
                hg.HelpviewHeading2 = shg.Heading_Large
                hg.HelpviewHeading3 = shg.Heading_Large
                hg.HelpviewHeading4 = shg.Heading_Small
                hg.HelpviewMentionlink = shg.Link
                hg.HelpviewOptionlink = shg.Link
                hg.HelpviewTaglink = {link = "OptionLink"}
                hg.HelpviewTitle = {link = "Title"}
        end

        if M.has_integration('OXY2DEV/markview.nvim', config) then
                hg.MarkviewPalette0 = {bg = shg.Layer_2.bg, fg = shg.Text_Important.fg}
                hg.MarkviewPalette0Fg = {fg = shg.Text_Important.fg}
                hg.MarkviewPalette0Bg = {bg = shg.Layer_2.bg}
                hg.MarkviewPalette0Sign = {link = "MarkviewPalette0Fg"}
                hg.MarkviewPalette1 = {link = "MarkviewPalette0"}
                hg.MarkviewPalette1Fg = {link = "MarkviewPalette0Fg"}
                hg.MarkviewPalette1Bg = {link = "MarkviewPalette0Bg"}
                hg.MarkviewPalette1Sign = {link = "MarkviewPalette0Sign"}
                hg.MarkviewPalette2 = {link = "MarkviewPalette0"}
                hg.MarkviewPalette2Fg = {link = "MarkviewPalette0Fg"}
                hg.MarkviewPalette2Bg = {link = "MarkviewPalette0Bg"}
                hg.MarkviewPalette2Sign = {link = "MarkviewPalette0Sign"}
                hg.MarkviewPalette3 = {bg = shg.Layer_1.bg, fg = shg.Text.fg}
                hg.MarkviewPalette3Fg = {fg = shg.Text.fg}
                hg.MarkviewPalette3Bg = {bg = shg.Layer_1.bg}
                hg.MarkviewPalette3Sign = {fg = shg.Text.fg}
                hg.MarkviewPalette4 = {link = "MarkviewPalette3"}
                hg.MarkviewPalette4Fg = {link = "MarkviewPalette3Fg"}
                hg.MarkviewPalette4Bg = {link = "MarkviewPalette3Bg"}
                hg.MarkviewPalette4Sign = {link = "MarkviewPalette3Sign"}
                hg.MarkviewPalette5 = {link = "MarkviewPalette3"}
                hg.MarkviewPalette5Fg = {link = "MarkviewPalette3Fg"}
                hg.MarkviewPalette5Bg = {link = "MarkviewPalette3Bg"}
                hg.MarkviewPalette5Sign = {link = "MarkviewPalette3Sign"}
                hg.MarkviewPalette6 = {fg = shg.Text_Less_Important.fg}
                hg.MarkviewPalette6Fg = {fg = shg.Text_Less_Important.fg}
                hg.MarkviewPalette6Bg = {}
                hg.MarkviewPalette6Sign = {fg = shg.Text_Less_Important.fg}
                hg.MarkviewPalette7 = {link = "MarkviewPalette6"}
                hg.MarkviewPalette7Fg = {link = "MarkviewPalette6Fg"}
                hg.MarkviewPalette7Bg = {link = "MarkviewPalette6Bg"}
                hg.MarkviewPalette7Sign = {link = "MarkviewPalette6Sign"}
        end

        if M.has_integration('rcarriga/nvim-dap-ui', config) then
                hg.DapUIScope = shg.Text
                hg.DapUIType = {link = "Type"}
                hg.DapUIModifiedValue = shg.Text_Important
                hg.DapUIDecoration = shg.Separator
                hg.DapUIThread = shg.Layer_2
                hg.DapUIStoppedThread = shg.Layer_1
                hg.DapUISource = shg.Text
                hg.DapUILineNumber = {link = "LineNr"}
                hg.DapUIFloatBorder = {link = "FloatBorder"}
                hg.DapUIWatchesEmpty = shg.Text_Less_Important
                hg.DapUIWatchesValue = shg.Text
                hg.DapUIWatchesError = {link = "Error"}
                hg.DapUIBreakpointsPath = {link = "Directory"}
                hg.DapUIBreakpointsInfo = shg.Text_Info
                hg.DapUIBreakpointsCurrentLine = {link = "LineNr"}
                hg.DapUIBreakpointsDisabledLine = shg.Line_Number_Deselected
        end

        if M.has_integration('rcarriga/nvim-notify', config) then
                hg.NotifyDebugBorder = {link = "FloatBorder"}
                hg.NotifyDebugIcon = shg.Icon
                hg.NotifyDebugTitle = {link = "Title"}
                hg.NotifyErrorBorder = {link = "FloatBorder"}
                hg.NotifyErrorIcon = shg.Icon_Important
                hg.NotifyErrorTitle = {link = "Title"}
                hg.NotifyInfoBorder = {link = "FloatBorder"}
                hg.NotifyInfoIcon = shg.Icon
                hg.NotifyInfoTitle = shg.Sub_Title
                hg.NotifyTraceBorder = {link = "FloatBorder"}
                hg.NotifyTraceIcon = shg.Icon_Important
                hg.NotifyTraceTitle = shg.Sub_Title
                hg.NotifyWarnBorder = {link = "FloatBorder"}
                hg.NotifyWarnIcon = shg.Icon_Important
                hg.NotifyWarnTitle = shg.Title
        end

        if M.has_integration('rlane/pounce.nvim', config) then
                hg.PounceMatch = shg.Text_Matched
                hg.PounceGap = {link = "Separator"}
                hg.PounceAccept = shg.Success
                hg.PounceAcceptBest = shg.Success
        end

        if M.has_integration('romgrk/barbar.nvim', config) then
                -- TODO: add proper simplified_highlight_groups to improve choice.
                hg.BufferCurrent = shg.Layer_3
                hg.BufferCurrentIcon = shg.Icon
                hg.BufferCurrentIndex = {fg = shg.Selected_Faded_1.fg}
                hg.BufferCurrentMod = {fg = shg.Layer_3.fg}
                hg.BufferCurrentSign = {fg = shg.Normal.bg}
                hg.BufferCurrentTarget = {fg = shg.Normal.bg}

                hg.BufferInactive = {fg = shg.Layer_1.fg}
                hg.BufferInactiveIcon = shg.Icon
                hg.BufferInactiveIndex = shg.Text_Less_Important
                hg.BufferInactiveMod = shg.Text
                hg.BufferInactiveSign = shg.Text
                hg.BufferInactiveTarget = shg.Text_Important

                hg.BufferOffset = shg.Text
                hg.BufferTabpages = shg.Text_Important
                hg.BufferTabpageFill = shg.Text_Less_Important

                hg.BufferVisible = shg.Layer_1
                hg.BufferVisibleIcon = shg.Icon
                hg.BufferVisibleIndex = shg.Text_Less_Important
                hg.BufferVisibleMod = shg.Text
                hg.BufferVisibleSign = shg.Text
                hg.BufferVisibleTarget = shg.Text
        end

        -- stevearc/aerial.nvim
        -- Everything works correctly out of the box

        if M.has_integration('williamboman/mason.nvim', config) then
                hg.MasonError = {link = "Error"}
                hg.MasonHeader = {link = "Title"}
                hg.MasonHeaderSecondary = shg.Sub_Title
                hg.MasonHeading = {link = "Title"}
                hg.MasonHighlight = shg.Text_Matched
                hg.MasonHighlightSecondary = {link = "MasonHighlight"}
                hg.MasonHighlightBlock = shg.Text
                hg.MasonHighlightBlockBold = shg.Text_Important
                hg.MasonHighlightBlockSecondary = {link = "MasonHighlightBlock"}
                hg.MasonHighlightBlockBoldSecondary = {link = "MasonHighlightBlockBold"}
                hg.MasonLink = shg.Link
                hg.MasonMuted = shg.Text_Less_Important
                hg.MasonMutedBlock = shg.Text_Less_Important
                hg.MasonMutedBlockBold = {link = "MasonMutedBlock"}
        end

        return hg
end

return M
