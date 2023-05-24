--[[     Fake latency on melee      ]]--
--[[           Terminator           ]]--
--[[  (github.com/titaniummachine1  ]]--

function OnCreateMove()
    local pLocal = entities.GetLocalPlayer() -- Get the local player
    local pWeapon = pLocal:GetPropEntity("m_hActiveWeapon")-- get active weapon

    local isMelee = pWeapon:IsMeleeWeapon() -- check if using melee weapon

    if pWeapon ~= nil then -- if the weapon is not nil
        if isMelee then -- if the weapon is a melee
            gui.SetValue("Fake Latency", 1) -- set fake latency to 1
        else
            gui.SetValue("Fake Latency", 0) -- disable fake latency
        end
    end
end

--[[ Unregister previous callbacks ]]--
callbacks.Unregister("CreateMove", "MCT_CreateMove")            -- Unregister the "CreateMove" callback
--[[ Register callbacks ]]--
callbacks.Register("CreateMove", "MCT_CreateMove", OnCreateMove)             -- Register the "CreateMove" callback
