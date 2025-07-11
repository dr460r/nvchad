require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--== Custom Keymaps ==--

-- map('n', '<Leader>e', ':Ex<CR>')
-- map('n', '<Leader>H', '<C-W>h')
-- map('n', '<Leader>L', '<C-W>l')

-- map('n', '<Leader>s', ':w<CR>')
-- map('n', '<Leader>S', ':wa<CR>')

map("n", "<Leader>e", function()
    vim.diagnostic.open_float(nil, { focusable = true })
end, { desc = "Show diagnostic message" })

map('n', '<C-S>', '<cmd> wa <cr>')

map('i', '<C-c>', '<Esc>')

map('n', '<Leader>p', function() vim.lsp.buf.format({ async = true }) end)
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- map({ 'n', 'v' }, 'd', '"xd')
-- map('n', '<C-p>', '"xp')
-- map('n', '<C-P>', '"xP')

