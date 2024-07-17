-- Enable Dart language server.
require('lspconfig').dartls.setup {
  name = 'dartls',
  cmd = { 'dart', 'language-server', '--protocol=lsp' },
  filetypes = { 'dart' },
  root_dir = require('lspconfig.util').root_pattern 'pubspec.yaml',
  settings = {
    dart = {
      analysisExcludeFolder = {
        '$HOME/.pub-cache',
        '$HOME/fvm/default',
      },
    },
  },
}
