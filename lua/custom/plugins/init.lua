-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', 'h', '<Cmd> echo "Disabled H"<CR>')
vim.keymap.set('n', 'l', '<Cmd> echo "Disabled L"<CR>')
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

local n = 'n'
vim.keymap.set(n, '<leader>dk', function()
  require('dap').continue()
end, { desc = 'DAP (Continue)' })

vim.keymap.set(n, '<leader>dl', function()
  require('dap').run_last()
end, { desc = 'DAP (Run Last Config)' })

vim.keymap.set(n, '<leader>db', function()
  require('dap').toggle_breakpoint()
end, { desc = 'DAP (Toggle Breakpoint)' })

vim.keymap.set(n, '<leader>dr', function()
  require('dap').repl.open()
end, { desc = 'DAP (REPL)' })

vim.keymap.set('n', '<leader>do', function()
  require('dap').step_over()
end, { desc = 'DAP (Step Over)' })

vim.keymap.set('n', '<leader>di', function()
  require('dap').step_into()
end, { desc = 'DAP (Step Into)' })

return {}
