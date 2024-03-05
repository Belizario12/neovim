return {
  'leafgarland/typescript-vim',

  -- Configuração do Language Server
  setup = function()
    local lspconfig = require('lspconfig')
    local null_ls = require('null-ls')

    require('null-ls').config {}

    lspconfig.tsserver.setup({
      on_attach = function (client, bufnr)
        require("lspkind").init({})
        require("null-ls").setup{}
        require("lsp_signature").on_attach()
      end
    })
  end
}
