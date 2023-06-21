local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')

lsp.nvim_workspace()

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'rome',
    'pyre'
})

local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = '',
        warn = '',
        hint = '󰛨',
        info = ''
    }
})

vim.diagnostic.config({
    virtual_text = true
})

lsp.setup()
