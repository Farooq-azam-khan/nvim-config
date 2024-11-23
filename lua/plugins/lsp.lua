vim.opt.signcolumn = 'yes'

local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

local lsp_zero = require('lsp-zero')
local lsp_attach = function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end

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
    ensure_installed = { 'ruff', },
    -- 'tsserver', 'eslint', 'tailwindcss', 'lua_ls', 'elmls', 'rust_analyzer', 'elmls',
    handlers = { function(server_name) require('lspconfig')[server_name].setup({}) end }
})

-- format on save
local buffer_autoformat = function(bufnr)
    local group = 'lsp_autoformat'
    vim.api.nvim_create_augroup(group, { clear = false })
    vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

    vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = bufnr,
        group = group,
        desc = 'LSP format on save',
        callback = function()
            -- note: do not enable async formatting
            vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
        end,
    })
end


-- semantic highligting is automatically added in neovim v0.9
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local id = vim.tbl_get(event, 'data', 'client_id')
        local client = id and vim.lsp.get_client_by_id(id)
        if client == nil then
            return
        end

        -- Disable semantic highlights
        client.server_capabilities.semanticTokensProvider = nil
        -- make sure there is at least one client with formatting capabilities
        if client.supports_method('textDocument/formatting') then
            buffer_autoformat(event.buf)
        end
    end
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
