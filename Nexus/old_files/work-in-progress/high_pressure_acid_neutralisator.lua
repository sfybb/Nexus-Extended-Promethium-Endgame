--high_pressure_acid_generator.lua
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------




    {
        name = "high-pressure-acid-generator",
        type = "generator",
        icon = "__Nexus__/graphics/items/high-pressure-acid-generator.png",
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        max_health = 300,
        corpse = "big-remnants",
        collision_box = {{-3.4,-3.4},{3.4,3.4}},
        selection_box = {{-3.5,-3.5},{3.5,3.5}},
        --map_color = ei_data.colors.assembler,
        minable = {
            mining_time = 0.5,
            result = "high-pressure-acid-generator",
        },
        effectivity = 20,
		energy_source =
		{
		type = "electric",
		usage_priority = "secondary-output"
		},
        burns_fluid = true,
        fluid_usage_per_tick = 10,
        minimum_temperature = 25,
		maximum_temperature = 25,
		scale_fluid_usage = true,
		max_power_output = "400kW",
		production_type = "input",
        fluid_box = {
		  volume = 200,
          filter = "sulfuric-acid",
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = pipecoverspictures(),
      pipe_connections =
		{
			{ flow_direction = "input-output", direction = defines.direction.south, position = {0, 3.3} },
			{ flow_direction = "input-output", direction = defines.direction.north, position = {0, -3.3} }
		},
        },
        --animation
        horizontal_animation = {
            layers = {
                {
                    filename = "__Nexus__/graphics/entity/high-pressure-acid-generator-animation.png",
                    size = {512*2,512*2},
                    scale = 0.77/2,
                    line_length = 5,
                    lines_per_file = 5,
                    frame_count = 25,
                    animation_speed = 0.5,
                    shift = {0,-0.5} 
                },
                {
                    filename = "__Nexus__/graphics/icons/high-pressure-acid-generator-pipe.png",
                    size = {512*2,512*2},
                    scale = 0.77/2,
                    line_length = 1,
                    lines_per_file = 1,
                    frame_count = 1,
                    repeat_count = 25,
                    animation_speed = 0.5,
                    shift = {0,-0.5} 
                },
            }
        },
        vertical_animation = {
            layers = {
                {
                    filename = "__Nexus__/graphics/entity/high-pressure-acid-generator-animation.png",
                    size = {512*2,512*2},
                    scale = 0.77/2,
                    line_length = 5,
                    lines_per_file = 5,
                    frame_count = 25,
                    animation_speed = 0.5,
                    shift = {0,-0.5} 
                },
                {
                    filename = "__Nexus__/graphics/icons/high-pressure-acid-generator-pipe.png",
                    size = {512*2,512*2},
                    scale = 0.77/2,
                    line_length = 1,
                    lines_per_file = 1,
                    frame_count = 1,
                    repeat_count = 25,
                    animation_speed = 0.5,
                    shift = {0,-0.5} 
                },
            }
        },
        smoke = {
          {
              name = "smoke",
              tape = "trival-smoke",
              frequency = 1,
              position = {0,-3},
              --deviation = {x = -2, y = -2},
              duration = 1,
          },
        },
        working_sound =
        {
          sound = {filename = "__space-age__/sound/entity/fusion/fusion-reactor.ogg", volume = 1.2},
		  apparent_volume = 0.5,
        },
    },




----------------------------------------------------------------
----------------------------------------------------------------
})