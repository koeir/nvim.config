return {
  -- Treat template HTML files as jinja
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        pattern = { [".*/templates/.*%.html"] = "jinja" },
      })
    end,
    opts = {
      servers = {
        jinja_lsp = {
          filetypes = { "jinja", "htmldjango" },
          init_options = {
            templates = "./templates",
            backend = { "./" },
            lang = "python",
          },
        },
      },
    },
  },

  -- Make sure Mason installs it
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "jinja-lsp", "djlint" } },
  },
}
