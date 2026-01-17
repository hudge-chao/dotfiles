return {
  -- 扩展 nvim-lspconfig 的配置
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 这里配置 volar
        volar = {
          init_options = {
            vue = {
              -- 对于 Vue 2，建议关闭混合模式以提高兼容性
              hybridMode = false,
            },
          },
          -- 如果你需要指定特定的文件类型
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
        },
      },
    },
  },
}
