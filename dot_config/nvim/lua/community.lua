-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.python", enabled = true },
	{ import = "astrocommunity.recipes.heirline-nvchad-statusline" },
	{ import = "astrocommunity.recipes.heirline-vscode-winbar" },
	{ import = "astrocommunity.markdown-and-latex.markview-nvim" },
	{ import = "astrocommunity.completion.codeium-nvim" },
	-- import/override with your plugins folder
}
