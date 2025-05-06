local M = {}

function M.setup(opts)
	opts = opts or {}

	-- Register 'j' prefix description for LazyVim
	require("which-key").add({
		{ "<leader>j", group = "JSON Formatter" },
	})

	-- Expand JSON (pretty-print)
	function M.expand_json()
		vim.cmd("%!jq .")
	end

	-- Minify JSON (one-liner)
	function M.minify_json()
		vim.cmd("%!jq -c .")
	end

	-- Add leader key mappings for JSON formatting
	vim.keymap.set(
		"n",
		opts.expand_key or "<leader>je",
		M.expand_json,
		{ noremap = true, silent = true, desc = "Expand JSON (json-formatter)" }
	)
	vim.keymap.set(
		"n",
		opts.minify_key or "<leader>jm",
		M.minify_json,
		{ noremap = true, silent = true, desc = "Minify JSON (json-formatter)" }
	)
end

return M
