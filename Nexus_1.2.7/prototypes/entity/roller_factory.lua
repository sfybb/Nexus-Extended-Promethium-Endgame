--roller_factory.lua
local sounds = require("__base__.prototypes.entity.sounds")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

{
    name = "roller-factory",
	type = "assembling-machine",
    icon = "__Nexus-Graphics__/graphics/items/roller-factory.png",
	icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
	place_result = "roller-factory",
    minable = {mining_time = 0.8, result = "roller-factory"},
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
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.west, position = {-1, 0} }},
		secondary_draw_orders = { north = -1 }
      },
--      {
--        production_type = "output",
--        pipe_picture = pipecoverspictures(),
--        pipe_covers = pipecoverspictures(),
--        volume = 1000,
--        pipe_connections = {{ flow_direction="output", direction = defines.direction.west, position = {-4.85, -0} }},
--		secondary_draw_orders = { north = -1.1 },{ east = -1.1 },{ south = -1.1 },
--      }
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    --damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "roller_factory",
    --next_upgrade = "assembling-machine-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),

    crafting_categories = {"roller-factory"},
    crafting_speed = 1.0,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      --emissions_per_minute = { pollution = 4 }
    },
    energy_usage = "400MW",
	graphics_set =
    {
        animation = {
            filename = "__Nexus-Graphics__/graphics/entity/roller-factory.png",
            size = {512,512},
            width = 512,
            height = 512,
            shift = {0,-0.2},
	        scale = 0.44/2,
            line_length = 1,
            --lines_per_file = 2,
            frame_count = 1,
            -- animation_speed = 0.2,
        },
        working_visualisations = {
            {
              animation = 
              {
                filename = "__Nexus-Graphics__/graphics/entity/roller-factory-animation.png",
                size = {512,512},
                width = 512,
                height = 512,
                shift = {0,-0.2},
	            scale = 0.44/2,
                line_length = 4,
                lines_per_file = 4,
                frame_count = 16,
                animation_speed = 0.6,
                run_mode = "backward",
              }
            },
            {
                light = {
                type = "basic",
                intensity = 1,
                size = 15
                }
            }
        },
		},
		
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    allowed_effects = {"speed", "productivity", "quality"},
	module_slots = 4,
    effect_receiver = {uses_module_effects = true, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "metal",
    working_sound =
    {
    sound = {filename = "__space-age__/sound/entity/tesla-turret/tesla-turret-rotation-stop.ogg", volume = 0.7},
    apparent_volume = 0.4,
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
})