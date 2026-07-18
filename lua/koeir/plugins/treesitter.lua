return {
	{
		-- NOTE: The `main` branch is the rewrite required for Neovim 0.11+/0.12.
		-- The old `master` branch is frozen and crashes on 0.12 (get_node_text /
		-- "attempt to call method 'range'"). The API is completely different:
		-- there is no `configs.setup()`, no `highlight`/`indent`/`ensure_installed`
		-- opts. Parsers are installed via `install()` and features are turned on
		-- per-buffer with Neovim's built-in `vim.treesitter.*`.
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false, -- does not support lazy-loading
		build = ":TSUpdate",
        opts = {
            -- Parsers to install up front. Add languages here as you need them.
            ensure_installed = {
                "bash",
                "c",
                "diff",
                "html",
                "javascript",
                "typescript",
                "tsx",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "query",
                "vim",
                "vimdoc",
            }
        }
	},
}
