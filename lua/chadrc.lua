-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "tokyodark",
    theme_toggle = { "tokyodark", "tokyodark" },

    -- transparency = true,

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
        -- ["@cursor"] = { reverse = true  },
        -- Cursor = { bg = "black" },
    },
}

M.ui = {
    telescope = { 
        style = "bordered",
    },
    nvimtree = {
        filters = {
            dotfiles = false,
            git_ignored = false,
        },
    },
}

M.nvdash = {
    load_on_startup = true,
}


return M

