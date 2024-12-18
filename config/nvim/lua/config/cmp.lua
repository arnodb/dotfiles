local cmp = require 'cmp'
cmp.setup {
  completion = { autocomplete = false, completeopt = 'menu,menuone,noinsert' },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Esc>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm { select = false },
    -- ['<Tab>'] = function(fallback)
    --   if cmp.visible() then
    --     cmp.select_next_item()
    --   else
    --     fallback()
    --   end
    -- end,

    -- ['<Tab>'] = cmp.mapping(function(fallback)
    --   cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
    -- end, {
    --   'i',
    --   's', --[[ "c" (to enable the mapping in command mode) ]]
    -- }),
    -- ['<S-Tab>'] = cmp.mapping(function(fallback)
    --   cmp_ultisnips_mappings.jump_backwards(fallback)
    -- end, {
    --   'i',
    --   's', --[[ "c" (to enable the mapping in command mode) ]]
    -- }),
  },
  sources = {
    { name = 'nvim_lua' },
    { name = 'nvim_lsp', priority = 10 },
    { name = 'path' },
    {
      name = 'buffer',
      priority = 2,
      keyword_length = 5,
      max_item_count = 10,
    },
    { name = 'calc' },
  },
  view = {
    entries = 'native',
  },
  experimental = { ghost_text = true },
  flags = {
    debounce_text_changes = 150,
  },
}
-- Use buffer source for `/`.
-- cmp.setup.cmdline('/', {sources = {{name = 'buffer'}}})

-- Use cmdline & path source for ':'.
-- cmp.setup.cmdline(':', {
--     sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})
-- })
