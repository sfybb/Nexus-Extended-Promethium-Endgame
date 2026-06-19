--accumulator_upgrades.lua


local upgrades = {}

function upgrades.perform_omega_upgrade(force, old_name, new_name)
    -- 1. Rezept sperren
    if force.recipes[old_name] then force.recipes[old_name].enabled = false end
    
    -- 2. Welt-Entitäten ersetzen
    for _, surface in pairs(game.surfaces) do
        local old_entities = surface.find_entities_filtered{name = old_name, force = force}
        for _, old_ent in pairs(old_entities) do
            if old_ent.valid then
                local pos, dir, qual = old_ent.position, old_ent.direction, old_ent.quality
                local current_joules = old_ent.energy
                old_ent.destroy()
                local new_ent = surface.create_entity{
                    name = new_name, position = pos, force = force, direction = dir,
                    quality = qual, fast_replace = true, raise_built = false
                }
                if new_ent and new_ent.valid then 
                    new_ent.energy = current_joules 
                end
            end
        end
    end

    -- Hilfsfunktion für Inventare
    local function upgrade_inv(inventory)
        if not inventory or not inventory.valid then return end
        for i = 1, #inventory do
            local stack = inventory[i]
            if stack and stack.valid_for_read and stack.name == old_name then
                local count, qual = stack.count, stack.quality
                inventory.remove(stack)
                inventory.insert({name = new_name, count = count, quality = qual})
            end
        end
    end

    -- 3. Inventare & Truhen
    for _, player in pairs(force.players) do upgrade_inv(player.get_main_inventory()) end
    for _, surface in pairs(game.surfaces) do
        local containers = surface.find_entities_filtered{force = force, type = {"container", "logistic-container"}}
        for _, container in pairs(containers) do upgrade_inv(container.get_inventory(defines.inventory.chest)) end
    end

    -- 4. Montagemaschinen
    for _, surface in pairs(game.surfaces) do
        local assemblers = surface.find_entities_filtered{force = force, type = "assembling-machine"}
        for _, assembler in pairs(assemblers) do
            if assembler.get_recipe() and assembler.get_recipe().name == old_name then
                assembler.set_recipe(new_name)
            end
        end
    end

    -- 5. Logistik-Slots (2.0 Section System)
    for _, surface in pairs(game.surfaces) do
        local requester_containers = surface.find_entities_filtered{force = force, type = {"logistic-container"}}
        for _, container in pairs(requester_containers) do
            local sections = container.get_logistic_sections()
            if sections then
                for i = 1, sections.sections_count do
                    local sec = sections.get_section(i)
                    for j = 1, sec.filters_count do
                        local slot = sec.get_slot(j)
                        if slot and slot.value and slot.value.name == old_name then
                            sec.set_slot(j, {value = {name = new_name, quality = slot.value.quality}, min = slot.min})
                        end
                    end
                end
            end
        end
    end
end

return upgrades