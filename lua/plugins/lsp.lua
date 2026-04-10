return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Vue 2/3 兼容：禁用 hybridMode，由 volar 全权处理 .vue 文件中的 TS/JS
        -- hybridMode = true 是 Vue 3 + tsserver 协同模式，但与 Vue 2 不兼容
        volar = {
          init_options = {
            vue = {
              hybridMode = false,
            },
          },
          filetypes = { "vue" },
        },
      },
    },
  },
  -- clangd 向 MinGW 编译器查询系统头文件路径，解决 <iostream> 等找不到的问题
  -- 路径通过 `where g++` 确认为 C:/msys64/ucrt64/bin/g++.exe
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local clangd = opts.servers.clangd or {}
      local cmd = vim.deepcopy(clangd.cmd or { "clangd" })
      table.insert(cmd, "--query-driver=C:/msys64/ucrt64/bin/g++.exe,C:/msys64/ucrt64/bin/gcc.exe")
      opts.servers.clangd = vim.tbl_deep_extend("force", clangd, { cmd = cmd })
      return opts
    end,
  },
}
