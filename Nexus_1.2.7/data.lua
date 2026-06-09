--data.lua



require("prototypes.pipe_covers")
require("prototypes.module_category")
--require("prototypes.module_integration")
require("prototypes.subgroups")
--require("prototypes.circuit-connector-generated-definitions")
--require("change_game_data.remove_tech")
--require("change_game_data.remove_space_locations")
--require("change_game_data.change_biolab")



require("change_game_data.move_promethium_tech")   -----work in progress



--<<Space-Age-Hardcore-Mode compatibility>>--
if mods["Space-Age-Hardcore-Mode"] then
    require("__Nexus__.compatibility.Space-Age-Hardcore-Mode.add_space_locations_distance_fix")
else
	require("starmap_locations.add_space_locations")
end
--plasma-duct integration
if mods["plasma-duct"] then
    require("__Nexus__.scripts.plasma_ducts.technology_integration")
	require("__Nexus__.scripts.plasma_ducts.recipe_integration")
end

--plasma-duct planet compatibility
if mods["Paracelsin"] then
    require("__Nexus__.compatibility.paracelsin.planet_paracelsin_compatibility")
end
--[[
--Krastorio2-spaced-out compatibility
if mods["Krastorio2-spaced-out"] then
    require("__Nexus__.compatibility.Krastorio2-spaced-out.omega_lab_tech_card_fix")
	require("__Nexus__.compatibility.Krastorio2-spaced-out.technology_fix")
	require("__Nexus__.compatibility.Krastorio2-spaced-out.remove_tech")
end
--]]

--<<squeak-through-2 compatibility>>--
if mods["squeak-through-2"] then
    require("__Nexus__.compatibility.squeak-through-2.zero_point_energy_engine_core.pump_zero_point_energy_core")
	require("__Nexus__.compatibility.squeak-through-2.zero_point_energy_engine_core.zero_point_energy_engine_core")
	require("__Nexus__.compatibility.squeak-through-2.zero_point_energy_engine_core.zero_point_energy_engine_injector_down")
	require("__Nexus__.compatibility.squeak-through-2.zero_point_energy_engine_core.zero_point_energy_engine_injector_up")
	require("__Nexus__.compatibility.squeak-through-2.zero_point_energy_engine_core.zero_point_energy_engine_injector_left")
	require("__Nexus__.compatibility.squeak-through-2.zero_point_energy_engine_core.zero_point_energy_engine_injector_right")
else
	require("prototypes.entity.zero_point_energy_engine_core.pump_zero_point_energy_core")
	require("prototypes.entity.zero_point_energy_engine_core.zero_point_energy_engine_core")
	require("prototypes.entity.zero_point_energy_engine_core.zero_point_energy_engine_injector_down")
	require("prototypes.entity.zero_point_energy_engine_core.zero_point_energy_engine_injector_up")
	require("prototypes.entity.zero_point_energy_engine_core.zero_point_energy_engine_injector_left")
	require("prototypes.entity.zero_point_energy_engine_core.zero_point_energy_engine_injector_right")
end

require("prototypes.fuelcategory")
--require("prototypes.burner_usage")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.planet.planet")


require("prototypes.ionit")
--require("prototypes.magma_energy")
require("prototypes.entity.singularity_assembler")
--require("prototypes.entity.high_pressure_acid_neutralisator")
require("prototypes.entity.fusion_reactor_mk2")
require("prototypes.entity.photon_stream_thruster")
require("prototypes.entity.warp_drive_engine")
require("prototypes.entity.atomacer")
require("prototypes.entity.atomar_separator")
require("prototypes.entity.photon_enrichment_chamber")
require("prototypes.entity.photon_enrichment_chamber_mk2")
require("prototypes.entity.atomar_assembler")
require("prototypes.entity.roller_factory")
require("prototypes.entity.nano_factory")
require("prototypes.entity.advanced_crusher")
require("prototypes.entity.matter_stabilizer")
require("prototypes.entity.nano_fluid_factory")
require("prototypes.entity.matter_activator")
require("prototypes.entity.omega_lab")
require("prototypes.entity.omega_substation")
require("prototypes.entity.omega_beacon")
require("prototypes.entity.omega_tank")
require("prototypes.entity.omega_accumulator")
require("prototypes.entity.omega_train.omega_train")



require("prototypes.explosion.explosion_photon_cube")
require("prototypes.explosion.explosion_dark_matter_crystal")



local INFINITY_ROUNDED_DOWN                                           = 100      -- Max Belt/Stacker Stack Size

data.raw["utility-constants"].default.max_belt_stack_size             = INFINITY_ROUNDED_DOWN
data.raw["utility-constants"].default.inserter_hand_stack_max_sprites = INFINITY_ROUNDED_DOWN