require('mason').setup {
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
}

require('mason-lspconfig').setup {
  ensure_installed = {
    'lua_ls',
    'clangd',
    'rust_analyzer',
    'v_analyzer',
  },
  automatic_installation = true,
}

require('mason-null-ls').setup {
  ensure_installed = {
    'prettier',
    'stylua',
    'eslint_d',
  },
  automatic_installation = true,
}
