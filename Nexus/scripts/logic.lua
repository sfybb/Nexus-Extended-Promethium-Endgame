--logic.lua


local logic = {}

-- Hier kannst du einfach neue Maschinen hinzufügen
logic.machine_configs = {
    ["zero-point-energy-engine-core"] = {
        base_limit = 1,
        tech_prefix = "zpe-core-limit-", -- Erwartet zpe-limit-1, zpe-limit-2...
        stages = 3,
        label = "ZPE-Kerne"
    }--[[,
    ["zero-point-energy-engine-colling-unit-down"] = {
        base_limit = 1,
        tech_prefix = "zpe-core-limit-",
        stages = 5,
       label = "Fusion-Reaktoren"
    }--]]
}

function logic.get_machine_limit(force, entity_name)
    local config = logic.machine_configs[entity_name]
    if not config then return 999999 end -- Kein Limit für andere Maschinen

    local limit = config.base_limit
    for i = 1, config.stages do
        local tech_name = config.tech_prefix .. i
        if force.technologies[tech_name] and force.technologies[tech_name].researched then
            limit = limit + 1
        end
    end
    return limit
end

return logic