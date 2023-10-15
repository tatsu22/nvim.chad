---@type MappingsTable
local M = {}

M.general = {
    n = {
        ["<C-d>"] = { "<C-d>zz", "page down and recenter" },
        ["<C-u>"] = { "<C-u>zz", "page up and recenter" },
        ["n"] = { "nzzzv", "find next and recenter" },
        ["N"] = { "Nzzzv", "find previous and recenter" },
        ["<leader>y"] = { [["+y"]], "yank to clipboard"},
        ["<leader>d"] = { [["_d"]], "delete without yank"},
        ["{"] = { "{zz", 'up a paragraph'},
        ["}"] = { "}zz", 'down a paragraph'},
        ["<leader>tf"] = { "<cmd>NvimTreeFindFile<CR>", 'find file in tree'},
    },
    v = {
        [">"] = { ">gv", "indent"},
        ["<leader>y"] = { [["+y"]], "yank to clipboard"},
        ["<leader>Y"] = { [["+Y"]], "yank to clipboard"},
        ["<leader>d"] = { [["_d"]], "delete without yank"},
    },
    x = {
        ["<leader>p"] = { [["_dP"]], "leader over without yank"}
    }

}

M.nvterm = {
    n = {
        ['<C-x>'] = {
            function() require("nvterm.terminal").toggle "float" end,
            'toggle floating terminal'
        }
    },
    t = {
        ['<C-x>'] = {
            function() require("nvterm.terminal").toggle "float" end,
            'toggle floating terminal',
        },
    }
}

-- Custom plugin keybinds
M.telescopeemoji = {
    n = {
        ['<leader>ie'] = {
            '<cmd>Telescope emoji<CR>',
            'Insert emoji',
        },
    }
}

M.vimfugitive = {
    n = {
        ['<leader>gs'] = {
            '<cmd>G<CR>',
            'git status'
        }
    }
}

M.undotree = {
    n = {
        ['<leader>u'] = {
            '<cmd>UndotreeToggle<CR>',
            'open undo tree'
        },
    },
}

M.gopher = {
    n = {
        ['<leader>gi'] = {
            '<cmd>GoIfErr<CR>',
            'generate if err block',
        },
        ['<leader>gj'] = {
            '<cmd>GoTagAdd json<CR>',
            'generate json struct tags',
        },
        ['<leader>gc'] = {
            '<cmd>GoCmt<CR>',
            'generate godoc comment',
        },
    }
}

return M
