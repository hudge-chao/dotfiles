return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          -- 针对 Vue 2 的关键配置
          init_options = {
            vue = {
              -- 必须关闭混合模式，Vue 2 才能获得稳定的提示
              hybridMode = false,
            },
          },
        },
        -- 确保 vtsls 或 ts_ls 加载 Vue 插件（处理 <script> 逻辑）
        vtsls = {
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSidePolyfills = true,
                },
              },
            },
            typescript = {
              tsdk = "node_modules/typescript/lib", -- 优先使用项目本地的 TS
            },
          },
        },
      },
    },
  },
}
