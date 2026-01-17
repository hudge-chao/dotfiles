return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "vetur-vls",
      },
    },
  },
}

-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         -- 1. 显式禁用 volar 和 vue_ls (防冲突)
--         volar = { enabled = false },
--         vue_ls = { enabled = false },
--         -- 2. 手动配置 vls (Vetur)
--         vuels = {
--           -- 关键：确保 vls 关联到 .vue 文件
--           filetypes = { "vue" },
--           settings = {
--             vetur = {
--               -- 针对纯 JS 项目的优化
--               useWorkspaceDependencies = true,
--               validation = {
--                 template = true,
--                 script = true,
--                 style = true,
--               },
--               completion = {
--                 autoImport = true,
--                 useScaffoldSnippets = true,
--                 tagCasing = "kebab", -- Vue 2 习惯
--               },
--               format = {
--                 enable = true, -- 如果你想让 Vetur 负责格式化
--                 defaultFormatter = {
--                   js = "prettier",
--                   html = "prettyhtml",
--                 },
--               },
--             },
--           },
--         },
--       },
--     },
--   },
-- }
