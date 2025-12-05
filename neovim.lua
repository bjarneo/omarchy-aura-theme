-- ────────────────────────────────────────────────────────────
-- Aura Theme for Neovim
-- A soft, pastel color scheme with excellent contrast
-- Standalone implementation with no external dependencies
-- ────────────────────────────────────────────────────────────

return {
	{
		name = "aura-theme",
		dir = vim.fn.stdpath("config"),
		priority = 1000,
		config = function()
			-- Clear existing highlights
			vim.cmd("highlight clear")
			if vim.fn.exists("syntax_on") then
				vim.cmd("syntax reset")
			end

			vim.o.termguicolors = true
			vim.g.colors_name = "aura"

			-- Aura Color Palette
			local colors = {
				-- Background and UI
				bg = "#282A36",
				bg_light = "#2E3040",
				bg_lighter = "#3A3C4E",
				bg_selection = "#44475A",

				-- Foreground
				fg = "#F8F8F2",
				fg_dark = "#A8A6B9",
				fg_darker = "#8E8C9E",

				-- Accent colors from Aura palette
				pink = "#FFAFCC",
				pink_bright = "#FFC8DD",
				pink_vivid = "#FF79C6",
				pink_medium = "#FFB3D9",
				cyan = "#8BE9FD",
				blue = "#BDE0FE",
				purple = "#CBC3E3",
				purple_muted = "#B4B2C5",

				-- Semantic colors
				none = "NONE",
			}

			local function hl(group, opts)
				opts.force = true
				vim.api.nvim_set_hl(0, group, opts)
			end

			-- Editor UI
			hl("Normal", { fg = colors.fg, bg = colors.bg })
			hl("NormalFloat", { fg = colors.fg, bg = colors.bg_light })
			hl("FloatBorder", { fg = colors.purple, bg = colors.bg_light })
			hl("NormalNC", { fg = colors.fg, bg = colors.bg })
			hl("LineNr", { fg = colors.fg_darker, bg = colors.bg })
			hl("CursorLineNr", { fg = colors.cyan, bg = colors.bg, bold = true })
			hl("CursorLine", { bg = colors.bg_light })
			hl("ColorColumn", { bg = colors.bg_light })
			hl("SignColumn", { bg = colors.bg })
			hl("VertSplit", { fg = colors.bg_lighter })
			hl("WinSeparator", { fg = colors.bg_lighter })
			hl("StatusLine", { fg = colors.fg, bg = colors.bg_lighter })
			hl("StatusLineNC", { fg = colors.fg_darker, bg = colors.bg_light })
			hl("Pmenu", { fg = colors.fg, bg = colors.bg_light })
			hl("PmenuSel", { fg = colors.bg, bg = colors.cyan, bold = true })
			hl("PmenuSbar", { bg = colors.bg_lighter })
			hl("PmenuThumb", { bg = colors.purple })
			hl("TabLine", { fg = colors.fg_darker, bg = colors.bg_light })
			hl("TabLineFill", { bg = colors.bg_light })
			hl("TabLineSel", { fg = colors.cyan, bg = colors.bg, bold = true })

			-- Search and Visual
			hl("Visual", { bg = colors.bg_selection })
			hl("VisualNOS", { bg = colors.bg_selection })
			hl("Search", { fg = colors.bg, bg = colors.pink_bright, bold = true })
			hl("IncSearch", { fg = colors.bg, bg = colors.cyan, bold = true })
			hl("CurSearch", { fg = colors.bg, bg = colors.pink_vivid, bold = true })
			hl("Substitute", { fg = colors.bg, bg = colors.pink_bright })

			-- Messages and Prompts
			hl("ErrorMsg", { fg = colors.pink_vivid, bold = true })
			hl("WarningMsg", { fg = colors.pink_bright, bold = true })
			hl("ModeMsg", { fg = colors.cyan, bold = true })
			hl("MoreMsg", { fg = colors.blue })
			hl("Question", { fg = colors.cyan })

			-- Cursor
			hl("Cursor", { fg = colors.bg, bg = colors.fg })
			hl("lCursor", { fg = colors.bg, bg = colors.fg })
			hl("CursorIM", { fg = colors.bg, bg = colors.fg })
			hl("TermCursor", { fg = colors.bg, bg = colors.fg })
			hl("TermCursorNC", { fg = colors.bg, bg = colors.fg_dark })

			-- Diff
			hl("DiffAdd", { fg = colors.cyan, bg = colors.bg_light })
			hl("DiffChange", { fg = colors.pink_bright, bg = colors.bg_light })
			hl("DiffDelete", { fg = colors.pink_vivid, bg = colors.bg_light })
			hl("DiffText", { fg = colors.blue, bg = colors.bg_lighter, bold = true })

			-- Git signs
			hl("GitSignsAdd", { fg = colors.cyan })
			hl("GitSignsChange", { fg = colors.pink_bright })
			hl("GitSignsDelete", { fg = colors.pink_vivid })

			-- Spelling
			hl("SpellBad", { sp = colors.pink_vivid, undercurl = true })
			hl("SpellCap", { sp = colors.pink_bright, undercurl = true })
			hl("SpellLocal", { sp = colors.cyan, undercurl = true })
			hl("SpellRare", { sp = colors.purple, undercurl = true })

			-- Folds and other UI
			hl("Folded", { fg = colors.purple, bg = colors.bg_light })
			hl("FoldColumn", { fg = colors.purple, bg = colors.bg })
			hl("Conceal", { fg = colors.purple_muted })
			hl("Directory", { fg = colors.blue, bold = true })
			hl("SpecialKey", { fg = colors.cyan })
			hl("Title", { fg = colors.pink_bright, bold = true })
			hl("WildMenu", { fg = colors.bg, bg = colors.cyan })
			hl("MatchParen", { fg = colors.cyan, bg = colors.bg_lighter, bold = true })

			-- Syntax Highlighting
			hl("Comment", { fg = colors.fg_darker, italic = true })
			hl("Constant", { fg = colors.pink_medium })
			hl("String", { fg = colors.pink })
			hl("Character", { fg = colors.pink })
			hl("Number", { fg = colors.pink_medium })
			hl("Boolean", { fg = colors.pink_medium })
			hl("Float", { fg = colors.pink_medium })

			hl("Identifier", { fg = colors.fg })
			hl("Function", { fg = colors.blue })

			hl("Statement", { fg = colors.purple })
			hl("Conditional", { fg = colors.purple })
			hl("Repeat", { fg = colors.purple })
			hl("Label", { fg = colors.purple })
			hl("Operator", { fg = colors.fg })
			hl("Keyword", { fg = colors.purple })
			hl("Exception", { fg = colors.purple })

			hl("PreProc", { fg = colors.pink_bright })
			hl("Include", { fg = colors.purple })
			hl("Define", { fg = colors.purple })
			hl("Macro", { fg = colors.pink_bright })
			hl("PreCondit", { fg = colors.purple })

			hl("Type", { fg = colors.pink_bright })
			hl("StorageClass", { fg = colors.purple })
			hl("Structure", { fg = colors.pink_bright })
			hl("Typedef", { fg = colors.pink_bright })

			hl("Special", { fg = colors.cyan })
			hl("SpecialChar", { fg = colors.cyan })
			hl("Tag", { fg = colors.pink_bright })
			hl("Delimiter", { fg = colors.fg })
			hl("SpecialComment", { fg = colors.cyan, italic = true })
			hl("Debug", { fg = colors.pink_vivid })

			hl("Underlined", { underline = true })
			hl("Ignore", { fg = colors.bg_lighter })
			hl("Error", { fg = colors.pink_vivid, bold = true })
			hl("Todo", { fg = colors.cyan, bg = colors.bg_light, bold = true })

			-- Treesitter Highlights
			hl("@variable", { fg = colors.fg })
			hl("@variable.builtin", { fg = colors.pink_vivid })
			hl("@variable.parameter", { fg = colors.fg_dark })
			hl("@variable.member", { fg = colors.fg })

			hl("@constant", { fg = colors.pink_medium })
			hl("@constant.builtin", { fg = colors.pink_medium })
			hl("@constant.macro", { fg = colors.pink_bright })

			hl("@module", { fg = colors.pink_bright })
			hl("@label", { fg = colors.purple })

			hl("@string", { fg = colors.pink })
			hl("@string.regex", { fg = colors.cyan })
			hl("@string.escape", { fg = colors.cyan })
			hl("@character", { fg = colors.pink })
			hl("@character.special", { fg = colors.cyan })

			hl("@number", { fg = colors.pink_medium })
			hl("@boolean", { fg = colors.pink_medium })
			hl("@float", { fg = colors.pink_medium })

			hl("@function", { fg = colors.blue })
			hl("@function.builtin", { fg = colors.blue })
			hl("@function.macro", { fg = colors.pink_bright })
			hl("@function.method", { fg = colors.blue })

			hl("@constructor", { fg = colors.pink_bright })
			hl("@operator", { fg = colors.fg })

			hl("@keyword", { fg = colors.purple })
			hl("@keyword.function", { fg = colors.purple })
			hl("@keyword.operator", { fg = colors.purple })
			hl("@keyword.return", { fg = colors.purple })
			hl("@keyword.conditional", { fg = colors.purple })
			hl("@keyword.repeat", { fg = colors.purple })
			hl("@keyword.import", { fg = colors.purple })
			hl("@keyword.exception", { fg = colors.purple })

			hl("@type", { fg = colors.pink_bright })
			hl("@type.builtin", { fg = colors.pink_bright })
			hl("@type.definition", { fg = colors.pink_bright })
			hl("@type.qualifier", { fg = colors.purple })

			hl("@property", { fg = colors.fg })
			hl("@attribute", { fg = colors.blue })

			hl("@comment", { fg = colors.fg_darker, italic = true })
			hl("@comment.documentation", { fg = colors.fg_darker, italic = true })
			hl("@comment.error", { fg = colors.pink_vivid, bold = true })
			hl("@comment.warning", { fg = colors.pink_bright })
			hl("@comment.todo", { fg = colors.cyan, bold = true })
			hl("@comment.note", { fg = colors.blue })

			hl("@markup.strong", { bold = true })
			hl("@markup.italic", { italic = true })
			hl("@markup.strikethrough", { strikethrough = true })
			hl("@markup.underline", { underline = true })
			hl("@markup.heading", { fg = colors.pink_bright, bold = true })
			hl("@markup.link", { fg = colors.blue, underline = true })
			hl("@markup.link.url", { fg = colors.cyan, underline = true })
			hl("@markup.raw", { fg = colors.cyan })
			hl("@markup.list", { fg = colors.purple })
			hl("@markup.quote", { fg = colors.fg_dark, italic = true })

			hl("@tag", { fg = colors.pink_bright })
			hl("@tag.attribute", { fg = colors.blue })
			hl("@tag.delimiter", { fg = colors.fg_darker })

			-- LSP Semantic Tokens
			hl("@lsp.type.class", { fg = colors.pink_bright })
			hl("@lsp.type.decorator", { fg = colors.blue })
			hl("@lsp.type.enum", { fg = colors.pink_bright })
			hl("@lsp.type.enumMember", { fg = colors.pink_medium })
			hl("@lsp.type.function", { fg = colors.blue })
			hl("@lsp.type.interface", { fg = colors.pink_bright })
			hl("@lsp.type.macro", { fg = colors.pink_bright })
			hl("@lsp.type.method", { fg = colors.blue })
			hl("@lsp.type.namespace", { fg = colors.pink_bright })
			hl("@lsp.type.parameter", { fg = colors.fg_dark })
			hl("@lsp.type.property", { fg = colors.fg })
			hl("@lsp.type.struct", { fg = colors.pink_bright })
			hl("@lsp.type.type", { fg = colors.pink_bright })
			hl("@lsp.type.typeParameter", { fg = colors.pink_bright })
			hl("@lsp.type.variable", { fg = colors.fg })

			-- LSP Diagnostics
			hl("DiagnosticError", { fg = colors.pink_vivid })
			hl("DiagnosticWarn", { fg = colors.pink_bright })
			hl("DiagnosticInfo", { fg = colors.blue })
			hl("DiagnosticHint", { fg = colors.cyan })
			hl("DiagnosticOk", { fg = colors.cyan })

			hl("DiagnosticUnderlineError", { sp = colors.pink_vivid, undercurl = true })
			hl("DiagnosticUnderlineWarn", { sp = colors.pink_bright, undercurl = true })
			hl("DiagnosticUnderlineInfo", { sp = colors.blue, undercurl = true })
			hl("DiagnosticUnderlineHint", { sp = colors.cyan, undercurl = true })

			hl("DiagnosticVirtualTextError", { fg = colors.pink_vivid, bg = colors.bg_light })
			hl("DiagnosticVirtualTextWarn", { fg = colors.pink_bright, bg = colors.bg_light })
			hl("DiagnosticVirtualTextInfo", { fg = colors.blue, bg = colors.bg_light })
			hl("DiagnosticVirtualTextHint", { fg = colors.cyan, bg = colors.bg_light })

			-- Telescope
			hl("TelescopeBorder", { fg = colors.purple })
			hl("TelescopePromptBorder", { fg = colors.cyan })
			hl("TelescopeResultsBorder", { fg = colors.purple })
			hl("TelescopePreviewBorder", { fg = colors.blue })
			hl("TelescopeSelection", { fg = colors.fg, bg = colors.bg_lighter, bold = true })
			hl("TelescopeSelectionCaret", { fg = colors.cyan })
			hl("TelescopeMatching", { fg = colors.pink_bright, bold = true })

			-- Neo-tree
			hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
			hl("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg })
			hl("NeoTreeDirectoryIcon", { fg = colors.blue })
			hl("NeoTreeDirectoryName", { fg = colors.blue })
			hl("NeoTreeFileName", { fg = colors.fg })
			hl("NeoTreeFileIcon", { fg = colors.fg_dark })
			hl("NeoTreeGitModified", { fg = colors.pink_bright })
			hl("NeoTreeGitAdded", { fg = colors.cyan })
			hl("NeoTreeGitDeleted", { fg = colors.pink_vivid })
			hl("NeoTreeIndentMarker", { fg = colors.bg_lighter })

			-- WhichKey
			hl("WhichKey", { fg = colors.cyan, bold = true })
			hl("WhichKeyGroup", { fg = colors.purple })
			hl("WhichKeyDesc", { fg = colors.fg })
			hl("WhichKeySeparator", { fg = colors.fg_darker })
			hl("WhichKeyFloat", { bg = colors.bg_light })

			-- Notify
			hl("NotifyERRORBorder", { fg = colors.pink_vivid })
			hl("NotifyWARNBorder", { fg = colors.pink_bright })
			hl("NotifyINFOBorder", { fg = colors.blue })
			hl("NotifyDEBUGBorder", { fg = colors.fg_darker })
			hl("NotifyTRACEBorder", { fg = colors.purple })
			hl("NotifyERRORTitle", { fg = colors.pink_vivid, bold = true })
			hl("NotifyWARNTitle", { fg = colors.pink_bright, bold = true })
			hl("NotifyINFOTitle", { fg = colors.blue, bold = true })
			hl("NotifyDEBUGTitle", { fg = colors.fg_darker, bold = true })
			hl("NotifyTRACETitle", { fg = colors.purple, bold = true })

			-- Cmp (completion)
			hl("CmpItemAbbrDeprecated", { fg = colors.purple_muted, strikethrough = true })
			hl("CmpItemAbbrMatch", { fg = colors.cyan, bold = true })
			hl("CmpItemAbbrMatchFuzzy", { fg = colors.cyan })
			hl("CmpItemKindVariable", { fg = colors.fg })
			hl("CmpItemKindInterface", { fg = colors.pink_bright })
			hl("CmpItemKindText", { fg = colors.fg })
			hl("CmpItemKindFunction", { fg = colors.blue })
			hl("CmpItemKindMethod", { fg = colors.blue })
			hl("CmpItemKindKeyword", { fg = colors.purple })
			hl("CmpItemKindProperty", { fg = colors.fg })
			hl("CmpItemKindUnit", { fg = colors.pink_medium })
			hl("CmpItemKindClass", { fg = colors.pink_bright })
			hl("CmpItemKindModule", { fg = colors.pink_bright })
			hl("CmpItemKindConstant", { fg = colors.pink_medium })
			hl("CmpItemKindEnum", { fg = colors.pink_bright })
			hl("CmpItemKindStruct", { fg = colors.pink_bright })

			-- Dashboard
			hl("DashboardHeader", { fg = colors.pink_bright })
			hl("DashboardCenter", { fg = colors.cyan })
			hl("DashboardFooter", { fg = colors.purple, italic = true })

			-- Buffer line
			hl("BufferLineFill", { bg = colors.bg_light })
			hl("BufferLineBackground", { fg = colors.fg_darker, bg = colors.bg_light })
			hl("BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg, bold = true })
			hl("BufferLineModified", { fg = colors.pink_bright })
			hl("BufferLineModifiedSelected", { fg = colors.pink_bright, bg = colors.bg })
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aura",
		},
	},
}
