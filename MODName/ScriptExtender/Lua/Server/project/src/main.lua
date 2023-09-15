local debug = false
local root_template = "Server/project/src/"

local utils = Ext.Require(root_template .. "modules/utils.lua")
local mod = "00a20a92-3aa3-429a-8333-02a3ede6351b"
local check_mod_status, mod_uuid = utils.check_mod_status(mod, debug)

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level, isEditorMode)
    if check_mod_status then
       utils.print_msg("LevelGameplayStarted: "..level .. " isEditorMode: "..isEditorMode, 0, 1)
    end
end)
