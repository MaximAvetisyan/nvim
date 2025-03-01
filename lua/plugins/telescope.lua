return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = '[S]earch by [G]rep' })
        vim.keymap.set('n', 'gr', builtin.lsp_references, { desc ='[G]oto [R]eferences'})
        vim.keymap.set('v', '<leader>ps', function()
        	local text = vim.getVisualSelection()
        	builtin.live_grep({ default_text = text })
          end, { noremap = true, silent = true })

    end
}

