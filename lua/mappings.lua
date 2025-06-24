vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>y","\"+y")
vim.keymap.set("v", "<leader>y","\"+y")
vim.keymap.set("n", "<leader>o","o<Esc>")
vim.keymap.set("n", "<leader>gs", function() vim.cmd('vert Git') end);
vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiff);
vim.keymap.set("n", "<leader>x", vim.cmd.bd);
vim.keymap.set("n", "<leader>gb", function() vim.cmd('Git blame') end);
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "yf", ":%y+<CR>", { desc = 'Copy the whole file to clipboard' });
vim.keymap.set("n", "<leader>m", ":let @+=expand('%:p')<CR>", { desc = 'Copy full file path to clipboard' });
vim.keymap.set("n", "yy","^vg_y")
vim.keymap.set("n", "<leader>f","*")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader><leader>", function() require("fzf-lua").buffers() end, { silent = true, desc = "Fuzz current buffers" })
vim.keymap.set("n", "<leader>pf", function() require("fzf-lua").files() end, { silent = true, desc = "Fuzz all buffers" })
vim.keymap.set("n", "<leader>ps", function() require("fzf-lua").live_grep() end, { silent = true, desc = "Live grep" })
vim.keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions     jump1=true ignore_current_line=true<cr>", { silent = true, desc = "Goto Definition"} )
vim.keymap.set("n", "gr", "<cmd>FzfLua lsp_references      jump1=true ignore_current_line=true<cr>", {desc = "References", nowait = true })
vim.keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations jump1=true ignore_current_line=true<cr>", {desc = "Goto Implementation" })
