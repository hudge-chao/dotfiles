return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
        border = "rounded",
        width = 0.8,
        height = 0.9,
      },
      max_concurrent_installers = 4,
      PATH = "prepend",
      ensure_installed = {
        "clang-format",
      },
    },
  },
}
