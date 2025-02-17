local util = require("newpaper.util")
local M = {}

function M.setup(configColors, configStyle)

    -- stylua: ignore start

    local rustSyn  = {}
    rustSyn.colors = configColors
    rustSyn.style  = configStyle
    local newpaper = rustSyn.colors
    local style    = rustSyn.style

    rustSyn.loadSyntax = function()
        local syntax = {

        }

        return syntax
    end

    rustSyn.loadTreeSitter = function()

        local treesitter = {
            ["@storageclass.lifetime"] = { fg = newpaper.tag_navy, style = style.k_style },
        }

        return treesitter
    end

    rustSyn.loadPlugins = function()
        local plugins = {
            -- Plugin
        }

        return plugins
    end

    -- stylua: ignore end

    return rustSyn
end

return M
