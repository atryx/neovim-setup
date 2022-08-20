
  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig').angularls.setup {
    capabilities = capabilities
  }
  require('lspconfig').omnisharp.setup {
	  cmd = { "dotnet", "/mnt/c/User/Downloads/omnisharp-build/OmniSharp.dll"},
	 -- Enables support for reading code style, naming convention and analyzer
    -- settings from .editorconfig.
    enable_editorconfig_support = true,

    -- If true, MSBuild project system will only load projects for files that
    -- were opened in the editor. This setting is useful for big C# codebases
    -- and allows for faster initialization of code navigation features only
    -- for projects that are relevant to code that is being edited. With this
    -- setting enabled OmniSharp may load fewer projects and may thus display
    -- incomplete reference lists for symbols.
    enable_ms_build_load_projects_on_demand = false,

    -- Enables support for roslyn analyzers, code fixes and rulesets.
    enable_roslyn_analyzers = false,

    -- Specifies whether 'using' directives should be grouped and sorted during
    -- document formatting.
    organize_imports_on_format = false,

    -- Enables support for showing unimported types and unimported extension
    -- methods in completion lists. When committed, the appropriate using
    -- directive will be added at the top of the current file. This option can
    -- have a negative impact on initial completion responsiveness,
    -- particularly for the first few completion sessions after opening a
    -- solution.
    enable_import_completion = false,

    -- Specifies whether to include preview versions of the .NET SDK when
    -- determining which version to use for project loading.
    sdk_include_prereleases = true,

    -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
    -- true
    analyze_open_documents_only = false,
    capabilities = capabilities
  }
  --  require('lspconfig').csharp_ls.setup {
    --capabilities = capabilities
  --}
  require('lspconfig').cssls.setup {
    capabilities = capabilities
  }
  require('lspconfig').graphql.setup {
    capabilities = capabilities
  }
  require('lspconfig').tsserver.setup {
    capabilities = capabilities
  }
  require('lspconfig').yamlls.setup {
	  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
      }
    }
  }
}
  require('lspconfig').jsonls.setup {
    capabilities = capabilities
  }
  require('lspconfig').vuels.setup {
    capabilities = capabilities
  }
  require('lspconfig').sqls.setup {
    capabilities = capabilities
  }
  require('lspconfig').html.setup {
    capabilities = capabilities
  }