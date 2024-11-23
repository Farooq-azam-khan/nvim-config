local lsp_zero = require('lsp-zero')
local lsp_attach = function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end

vim.opt.signcolumn = 'yes'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)

lsp_zero.extend_lspconfig({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    lsp_attach = lsp_attach,
    ifloat_border = 'rounded',
    sign_text = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = ''
    },
})


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'rust_analyzer', 'ruff', 'elmls', 'tailwindcss' }, -- 'tsserver', 'eslint', 'tailwindcss', 'lua_ls', 'elmls'
    handlers = { function(server_name) require('lspconfig')[server_name].setup({}) end }
})



vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

vim.diagnostic.config({
    virtual_text = false,
    severity_sort = true,
    float = {
        style = 'minimal',
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = lsp_zero.cmp_format()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
    formatting = cmp_format,
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    window = {
        documentation = cmp.config.window.bordered(),
    },
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'buffer',  keyword_length = 3 },
        { name = 'luasnip', keyword_length = 2 },
    },
    mapping = cmp.mapping.preset.insert({
        -- Only exists for lifetime of buffer
        -- i.e. any mappings used below will not override other mappings
        ["<C-N>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    }
})
--
--lsp.set_preferences({
--    sign_icons = {}
--})
--
--lsp.setup_nvim_cmp({ mapping = cmp_mappings })
--
--
lsp_zero.setup()

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
