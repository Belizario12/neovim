return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/cmp-buffer"
  },
  {
    "hrsh7th/cmp-path"
  },
  {
    "github/copilot.vim",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    }
  },
  {
    "hrsh7th/cmp-nvim-lua"
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require'cmp'
      local lspconfig = require'lspconfig'
      require("luasnip.loaders.from_vscode").lazy_load()
      lspconfig.angularls.setup({
        on_attach = function(client, bufnr)
        end
      })

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = {
          ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
        },
        sources = {
          { name = 'nvim_lsp' },  -- Para suporte LSP
          { name = 'buffer' },    -- Para sugestões no buffer atual
          { name = 'path' },      -- Para sugestões de caminhos de arquivo
          { name = 'nvim_lua' },  -- Para sugestões de Lua
          { name = 'cmp_tabnine' }, -- Se você deseja usar o TabNine como fonte de sugestões
          { name = 'cmp_omni' }, -- Para sugestões Omni
          { name = 'luasnip' },  -- Para suporte a Luasnip
          { name = 'cmp_emoji' },  -- Para sugestões de emojis
          { name = 'nvim_treesitter' }, -- Para suporte Treesitter
          { name = 'cmp_crates' }, -- Para suporte a Rust (pode não ser necessário se você não estiver escrevendo em Rust)
          { name = 'nvim_lua_cmp' }, -- Para sugestões de Lua (nvim-cmp)
          { name = 'nvim_lsp' }, -- Para sugestões de LSP (nvim-cmp)
          { name = 'buffer' },   -- Para sugestões do buffer (nvim-cmp)
          { name = 'path' },     -- Para sugestões de caminhos (nvim-cmp)
          { name = 'cmp_tabnine' }, -- Se estiver usando TabNine (nvim-cmp)
          { name = 'cmp_omni' }, -- Para sugestões Omni (nvim-cmp)
          { name = 'luasnip' },  -- Para suporte a Luasnip (nvim-cmp)
          { name = 'cmp_emoji' }, -- Para sugestões de emojis (nvim-cmp)
          { name = 'nvim_treesitter' }, -- Para suporte Treesitter (nvim-cmp)
          { name = 'cmp_crates' }, -- Para suporte a Rust (nvim-cmp)
          { name = "angularls" }, -- Para suporte a angularls
          { name = "cssls" }, -- Para suporte a cssls
          { name = "html" }, -- Para suporte a html
          { name = "json" }, -- Para suporte a json
          { name = "ts_ls" }, -- Para suporte a tsserver
          { name = "vim" }, -- Para suporte a vim
          { name = "yaml" }, -- Para suporte a yaml
          { name = "docker" }, -- Para suporte a docker
          { name = "tailwindcss" }, -- Para suporte a tailwindcss
          { name = "svelte" }, -- Para suporte a svelte
          { name = "graphql" }, -- Para suporte a graphql
          { name = "phpactor" }, -- Para suporte a phpactor
          { name = "intelephense" }, -- Para suporte a intelephense
          { name = "clangd" }, -- Para suporte a clangd
          { name = "cmake" }, -- Para suporte a cmake
          { name = "csharp" }, -- Para suporte a csharp
          { name = "elixir_ls" }, -- Para suporte a elixir_ls
          { name = "erlang_ls" }, -- Para suporte a erlang_ls
          { name = "hls" }, -- Para suporte a hls
          { name = "jdtls" }, -- Para suporte a jdtls
          { name = "jedi_language_server" }, -- Para suporte a jedi_language_server
          { name = "jsonls" }, -- Para suporte a jsonls
          { name = "kotlin_language_server" }, -- Para suporte a kotlin_language_server
          { name = "lemminx" }, -- Para suporte a lemminx
          { name = "nimls" }, -- Para suporte a nimls
          { name = "ocamllsp" }, -- Para suporte a ocamllsp
          { name = "omnisharp" }, -- Para suporte a omnisharp
          { name = "perlls" }, -- Para suporte a perlls
          { name = "pylsp" }, -- Para suporte a pylsp
          { name = "pyright" },
          { name = "angularls" }, -- Para suporte a Angular
        },
      })
    end
  }
}

