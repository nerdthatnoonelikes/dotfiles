local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
    ensure_installed = {
        "javascript",
        "html",
        "css",
        "bash",
        "lua",
        "json",
        "python",
	    "rust",
	    "typescript",
	    "toml",
        "nix"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
