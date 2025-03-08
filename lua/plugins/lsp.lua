local keyMapper = require('utils.keyMapper').mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "gopls", "clangd" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.clangd.setup({})

      -- vim.lsp.buf.hover -- 팝업 창으로 정보
      -- vim.lsp.buf.definition -- 커서의 정의로 이동
      -- vim.lsp.buf.code_action -- 빠른 변수 이름 변경 등 제공
      keyMapper('K', vim.lsp.buf.hover)
      keyMapper('<C-]>', vim.lsp.buf.definition)
      keyMapper('<leader>ca', vim.lsp.buf.code_action)
    end
  }
}
