local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
  return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer= bufnr }
  -- 设置键位


  
  if client.name == "tsserver" then
    keymap.set("n", "<leader>rn", ":TypescriptRenameFile<CR>")
  end
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach
  }
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["bashls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["jsonls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["yamlls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})
