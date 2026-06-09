--atomacer.lua
local sounds = require("__base__.prototypes.entity.sounds")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

{
    name = "atomacer",
	type = "assembling-machine",
    icon = "__Nexus-Graphics__/graphics/items/atomacer.png",
	icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
	place_result = "atomacer",
    minable = {mining_time = 0.8, result = "atomacer"},
    max_health = 600,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    icon_draw_specification = {shift = {0, -0.3}},
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = pipecoverspictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.west, position = {-4.85, 1} }},
		secondary_draw_orders = { north = -1.1 },{ east = -1.1 },{ south = -1.1 },
      },
      {
        production_type = "output",
        pipe_picture = pipecoverspictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-4.85, -1} }},
        secondary_draw_orders = { north = -1.1 },{ east = -1.1 },{ south = -1.1 },
      }
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-5.4, -5.4}, {5.4, 5.4}},
        selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "atomacer",
    --next_upgrade = "assembling-machine-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),

    crafting_categories = {"atomacer"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      --emissions_per_minute = { pollution = 4 }
    },
    energy_usage = "450MW",
	graphics_set =
    {
	animation = {
    filename = "__Nexus-Graphics__/graphics/entity/atomacer-animation.png",
    size = {1024, 1014},
    shift = {0.75, -0.55},
	scale = 0.42,
    line_length = 4,
    lines_per_file = 4,
    frame_count = 16,
    animation_speed = 0.6,
    run_mode = "backward",
    }
	},
	
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
	allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
	allowed_module_categories = {"speed", "quality", "omega"},
	module_slots = 4,
    effect_receiver = {uses_module_effects = true, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "metal",
    working_sound =
    {
    sound = {filename = "__space-age__/sound/entity/fusion/fusion-reactor.ogg", volume = 1.2},
    apparent_volume = 0.5,
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
})