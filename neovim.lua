-- ────────────────────────────────────────────────────────────
-- Aura Theme for Neovim
-- A soft, pastel color scheme with excellent contrast
-- ────────────────────────────────────────────────────────────

return {
	{
		"bjarneo/aether.nvim",
		name = "aura-theme",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Base colors (monotone shades for UI elements)
				base00 = "#282A36", -- Main background (dark purple-blue)
				base01 = "#2E3040", -- Lighter background (panels, sidebars, line numbers)
				base02 = "#3A3C4E", -- Selection background / hover states
				base03 = "#8E8C9E", -- Comments (muted but readable lavender-gray)
				base04 = "#A8A6B9", -- Dark foreground / secondary text
				base05 = "#F8F8F2", -- Default foreground / main text (bright off-white)
				base06 = "#FFFFFF", -- Light foreground / emphasized text
				base07 = "#FFFFFF", -- Lightest foreground / strong emphasis

				-- Semantic accent colors
				base08 = "#FF79C6", -- Errors / Delete operations (saturated pink for visibility)
				base09 = "#FFB3D9", -- Numbers / Constants / Booleans (medium pink)
				base0A = "#FFC8DD", -- Classes / Warnings / Search highlights (bright pink)
				base0B = "#FFAFCC", -- Strings / Added lines (soft pink, highly readable)
				base0C = "#8BE9FD", -- Regex / Escape chars / Special symbols (bright cyan)
				base0D = "#BDE0FE", -- Functions / Methods / Attributes (soft blue)
				base0E = "#CBC3E3", -- Keywords / Storage / Control flow (lavender purple)
				base0F = "#B4B2C5", -- Deprecated / Misc special (muted lavender)
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
