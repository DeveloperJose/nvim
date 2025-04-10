-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Disable H and L for navigation, I'll get used to using full word movement
vim.keymap.set('n', 'h', '<Cmd> echo "Disabled H"<CR>')
vim.keymap.set('n', 'l', '<Cmd> echo "Disabled L"<CR>')

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Disabled"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Disabled"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Enable my desired keybinds
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

require('telescope').setup {
  pickers = {
    find_files = { hidden = true },
  },
  defaults = { file_ignore_patterns = { '.git/', 'node_modules/' } },
}

return {}
