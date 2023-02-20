local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
     "eslint", "rust_analyzer", "tsserver" 
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    -- Only exists for lifetime of buffer 
    -- i.e. any mappings used below will not override other mappings
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select), 
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select), 
    ["<C-y>"] = cmp.mapping.confirm({select=true}), 
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup_nvim_cmp({ mapping = cmp_mappings })


lsp.setup()
