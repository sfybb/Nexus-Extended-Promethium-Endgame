--omega_substation.lua


local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

	
data:extend({

----------------------------------------------------------------
----------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------OMEGA SUBSTATION-------

  {
    type = "electric-pole",
    name = "omega-substation",
    icon = "__Nexus__/graphics/items/omega-substation.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "omega-substation"},
    fast_replaceable_group = "omega-substation",
    max_health = 1000,
    corpse = "substation-remnants",
    dying_explosion = "substation-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
	collision_box = {{-5.1, -6.4}, {6.0, 6.2}},
    selection_box = {{-5.1, -6.4}, {6.0, 6.2}},
	--collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    --selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    --selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity({{-0.5, -2.5}, {0.5, 0.5}}),
    drawing_box_vertical_extension = 2,
    maximum_wire_distance = 64,
    supply_area_distance = 32,
	draw_copper_wires = false,
	draw_circuit_wires = false,
    pictures =
    {
      layers =
      {

        {
          filename = "__Nexus__/graphics/entity/omega-substation.png",
          priority = "high",
          --[[width = 138,
          height = 270,
          direction_count = 4,
          shift = util.by_pixel(0, 1-32),
          scale = 0.5--]]
		  width = 256,
            height = 256,
			frame_count = 32,
			direction_count = 1,
            shift = {0, 0},
            scale = 1.6,--0.16
        },
 --[[       {
          filename = "__base__/graphics/entity/substation/substation-shadow.png",
          priority = "high",
          width = 370,
          height = 104,
          direction_count = 4,
          shift = util.by_pixel(62, 42-32),
          draw_as_shadow = true,
          scale = 0.5
        }--]]
      }
    },

    impact_category = "metal",
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/substation.ogg",
        volume = 0.4,
        audible_distance_modifier = 0.32,
      },
      max_sounds_per_prototype = 3,
      fade_in_ticks = 30,
      fade_out_ticks = 40,
      use_doppler_shift = false
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(136, 8),
          green = util.by_pixel(124, 8),
          red = util.by_pixel(151, 9)
        },
        wire =
        {
          copper = util.by_pixel(0, -86),
          green = util.by_pixel(-21, -82),
          red = util.by_pixel(22, -81)
        }
      },
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
--[[    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/substation/substation-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }--]]
  },

----------------------------------------------------------------
----------------------------------------------------------------
})