--omega_lab.lua


local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

	
data:extend({

----------------------------------------------------------------
----------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------OMEGA LAB-------
--[[
  {
    type = "lab",
    name = "omega-lab",
    icon = "__Nexus-Graphics__/graphics/entity/omega-lab.png",
	icon_size = 64,
    minable = {mining_time = 0.5, result = "omega-lab"},
    --subgroup = "production-machine",
    --order = "z-z[z-lab]",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    max_health = 1000,
    impact_category = "metal",
    alert_icon_shift = util.by_pixel(0, -12),
    --icon_draw_specification = {shift = {0, -0.3}},
    corpse = "lab-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
	surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
    damaged_trigger_effect = hit_effects.entity(),
        animation = {
            filename ="__Nexus-Graphics__/graphics/entity/omega-lab.png",
            size = {512,512},
            shift = {0, 0},
	        scale = 0.35,
            line_length = 1,
            --lines_per_file = 2,
            frame_count = 1,
            -- animation_speed = 0.2,
        },
	graphics_set =
    {
        animation = {
            filename = "__Nexus-Graphics__/graphics/entity/omega-lab.png",
            size = {512,512},
            shift = {0, 0},
	        scale = 0.35,
            line_length = 1,
            --lines_per_file = 2,
            frame_count = 1,
            -- animation_speed = 0.2,
        },
        working_visualisations = {
            {
              animation = 
              {
                filename = "__Nexus-Graphics__/graphics/entity/omega-lab-animation.png",
                size = {512,512},
                shift = {0, 0},
	            scale = 0.35,
                line_length = 4,
                lines_per_file = 4,
                frame_count = 16,
                animation_speed = 0.3,
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
    open_sound = sounds.lab_open,
    close_sound = sounds.lab_close,
    working_sound =
    {
    filename = "__base__/sound/lab.ogg",
    volume = 0.7,
    modifiers = {volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8)},
    audible_distance_modifier = 0.7,
    },
    researching_speed = 2,
    inputs =
    {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
      "metallurgic-science-pack",
      "agricultural-science-pack",
      "electromagnetic-science-pack",
      "cryogenic-science-pack",
      "promethium-science-pack",
	  "antimatter-science-pack"
    },
    science_pack_drain_rate_percent = 50,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      --emissions_per_minute = { pollution = 8 }
    },
    energy_usage = "80MW",
	allowed_effects = {"speed"},
    module_slots = 4,
    icons_positioning =
    {
      {inventory_index = defines.inventory.lab_modules, shift = {0, 1.6}},
      {inventory_index = defines.inventory.lab_input, shift = {0, 0.4}, max_icons_per_row = 6, separation_multiplier = 1/1.1}
    }
  },
----------------------------------------------------------------
----------------------------------------------------------------
})

--]]

    {
        name = "omega-lab",
        type = "lab",
        icon ="__Nexus-Graphics__/graphics/entity/omega-lab.png",
        icon_size = 512,
        flags = {"player-creation","placeable-neutral"},
        max_health = 1000,
        corpse = "big-remnants",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        map_color = {r=0, g=0, b=1, a=1},
		alert_icon_shift = util.by_pixel(0, -12),
        minable = {
            mining_time = 1,
            result = "omega-lab",
        },
        researching_speed = 2,
		energy_source =
		{	
		type = "electric",
		usage_priority = "secondary-input",
		--emissions_per_minute = { pollution = 4 }
		},
		energy_usage = "100MW",
--[[		
		energy_source = {
			type = "burner",
			fuel_categories = {"photon-cube-energy"},
			effectivity = 1,
			--burner_usage = "critical-photon-cube-energy",
			fuel_inventory_size = 1,
			burnt_inventory_size = 1,
		},
        energy_usage = "20MW",
--]]
    inputs =
    {
      -- in data.final.fixed include all existing science packs
		"automation-science-pack",
		"logistic-science-pack",
		"military-science-pack",
		"chemical-science-pack",
		"production-science-pack",
		"utility-science-pack",
		"space-science-pack",
		"metallurgic-science-pack",
		"agricultural-science-pack",
		"electromagnetic-science-pack",
		"cryogenic-science-pack",
		"promethium-science-pack",
		"antimatter-science-pack"
    },
        allowed_effects = {"speed", "productivity", "consumption", "pollution"},
        module_specification = {
            module_info_icon_shift = {
                0,
                0.8
            },
            module_slots = 6
        }, 
        off_animation = {
            filename ="__Nexus-Graphics__/graphics/entity/omega-lab.png",
            size = {512,512},
            shift = {0, 0},
	        scale = 0.35,
            line_length = 1,
            --lines_per_file = 2,
            frame_count = 1,
            -- animation_speed = 0.2,
        },
        on_animation = {
            layers = {
                {
                    filename ="__Nexus-Graphics__/graphics/entity/omega-lab-animation.png",
					size = {512,512},
					shift = {0, 0},
					scale = 0.35,
					line_length = 4,
					lines_per_file = 4,
					frame_count = 16,
					animation_speed = 0.3,
					run_mode = "backward",
                }
            }
        },
		
        open_sound = sounds.lab_open,
		close_sound = sounds.lab_close,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		allowed_module_categories = {"speed", "omega"},
		module_slots = 4,
		effect_receiver = {uses_module_effects = true, uses_beacon_effects = false, uses_surface_effects = true},
        working_sound = { 
            sound = { filename = "__base__/sound/lab.ogg"},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 0.7,
        },
    },

----------------------------------------------------------------
----------------------------------------------------------------
})