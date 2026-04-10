return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- 1. 定义不同文件类型的格式化器
      formatters_by_ft = {
        lua = { "stylua" },
        -- 针对 Vue 2 + JS，建议优先使用 prettier
        javascript = { "prettier" },
        vue = { "prettier" },
        python = { "ruff_format" },
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
    },
  },
}
