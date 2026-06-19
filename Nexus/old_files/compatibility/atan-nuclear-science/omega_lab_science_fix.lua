--omega_lab_science_fix.lua


local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

	
data:extend({

----------------------------------------------------------------
----------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------OMEGA LAB-------

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
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
	  "nuclear-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
      "metallurgic-science-pack",
      "agricultural-science-pack",
      "electromagnetic-science-pack",
      "cryogenic-science-pack",
      "promethium-science-pack",
	  "antimatter-science-pack",
----------------------------------------------------------------
	  "omega-automation-science-pack",
      "omega-logistic-science-pack",
      "omega-military-science-pack",
      "omega-chemical-science-pack",
      "omega-production-science-pack",
      "omega-utility-science-pack",
      "omega-space-science-pack",
      "omega-metallurgic-science-pack",
      "omega-agricultural-science-pack",
      "omega-electromagnetic-science-pack",
      "omega-cryogenic-science-pack",
      "promethium-science-pack",
	  "antimatter-science-pack",
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
		allowed_effects = {"speed"},
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