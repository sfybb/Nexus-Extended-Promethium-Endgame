--zero_point_energy_engine_injector_up.lua
local sounds = require("__base__.prototypes.entity.sounds")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

{
    name = "zero-point-energy-engine-injector-up",
	type = "assembling-machine",
	squeak_behaviour = false,										--compatibility with "squeak-through-2"
    icon = "__Nexus-Graphics__/graphics/items/zero-point-energy-engine-injector-up.png",
	icon_size = 64,
    --flags = {"placeable-neutral", "placeable-player", "player-creation"},
	flags = {"placeable-neutral", "player-creation", "not-rotatable"},
	place_result = "zero-point-energy-engine-injector-up",
    minable = {mining_time = 0.8, result = "zero-point-energy-engine-injector-up"},
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
        pipe_covers = pipecoverspictures(),
        pipe_picture = grey_south_pipe_picture,
        volume = 200,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -9.5} }},
		--secondary_draw_orders = { east = -1.1 },{ east = -1.1 },{ east = -1.1 },
      },
      {
        production_type = "output",
        --pipe_picture = pipecoverspictures(),
        --pipe_covers = pipecoverspictures(),
        volume = 200,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 7.89} }},
		--secondary_draw_orders = { north = -1.1 },{ east = -1.1 },{ south = -1.1 },
      }
    },
          
    fluid_boxes_off_when_no_fluid_recipe = false,
    collision_box = {{-6.4,-9.9},{6.4,7.9}},
    selection_box = {{-6.5,-10},{6.5,8}},
    --damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "zero-point-energy-engine-injector-up",
    --next_upgrade = "assembling-machine-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),

    crafting_categories = {"zero-point-energy-engine-injector-up"},
    crafting_speed = 1,
    energy_source =
    {
      type = "void",
      --usage_priority = "secondary-input",
      --emissions_per_minute = { pollution = 4 }
    },
    energy_usage = "1W",
	graphics_set =
    {
        animation = {
            filename = "__Nexus-Graphics__/graphics/entity/zero_point_energy_engine/zero_point_energy_engine_injector_up/zero-point-energy-engine-injector-up.png",
            size = {1080, 1080},
			scale = 0.58,
			shift = {0,-0.62},
			line_length = 1,
			lines_per_file = 1,
			frame_count = 1,
			animation_speed = 1,
        },
        working_visualisations = {
            {
			always_draw=true,					----dauerhafte animation----
			animated_pause = false,				----dauerhafte animation----
			constant_speed = true,				----dauerhafte animation----
              animation = 
              {
                filename = "__Nexus-Graphics__/graphics/entity/zero_point_energy_engine/zero_point_energy_engine_injector_up/zero-point-energy-engine-injector-up-animation.png",
                size = {1080, 1080},
				scale = 0.58,
				line_length = 3,
				lines_per_file = 3,
				frame_count = 9,
				animation_speed = 0.3,
				shift = {0,-0.62}
              }
            },
        },
		},
		
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
	--allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
	--allowed_module_categories = {"speed", "quality", "omega"},
	--module_slots = 4,
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "metal",
    working_sound =
    {
    sound = {filename = "__base__/sound/heat-exchanger.ogg", volume = 0.7},
    apparent_volume = 2.5,
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
})