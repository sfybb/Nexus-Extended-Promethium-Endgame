--omega_tank.lua
local sounds = require("__base__.prototypes.entity.sounds")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

       
   
        

{
    name = "omega-tank",
    type = "storage-tank",
    icon = "__Nexus-Graphics__/graphics/items/omega-tank.png",
	icon_size = 64,
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.2, result = "omega-tank"},
    max_health = 750,
    corpse = "big-remnants",
    resistances = {
      { type = "physical", percent = 35 },
      { type = "fire",     percent = 75 },
      { type = "impact",   percent = 50 },
    },
    collision_box = {{-1.4,-1.4},{1.4,1.4}},
    selection_box = {{-1.5,-1.5},{1.5,1.5}},
    fluid_box = {
      base_area = 500,
      volume = 2000000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { direction = defines.direction.north, position = { 0, -1 } },
        { direction = defines.direction.east,  position = { 1, 0 } },
        { direction = defines.direction.south, position = { 0, 1 } },
        { direction = defines.direction.west,  position = { -1, 0 } }
      },
    },
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = {
            picture = {
                filename = "__Nexus-Graphics__/graphics/entity/omega-tank.png",
                width = 512,
                height = 512,
                shift = {0,-0.2},
	            scale = 0.47/2,---0.44
            },
            window_background = {
                filename = "__Nexus-Graphics__/graphics/other/64_empty.png",
                width = 64,
                height = 64,
                scale = 1,
            },
            fluid_background = {
                filename = "__Nexus-Graphics__/graphics/other/64_empty.png",
                width = 64,
                height = 64,
                scale = 1,
            },
            flow_sprite = {
                filename = "__Nexus-Graphics__/graphics/other/64_empty.png",
                width = 64,
                height = 64,
                scale = 1,
            },
            gas_flow = {
                filename = "__Nexus-Graphics__/graphics/other/64_empty.png",
                width = 64,
                height = 64,
                scale = 1,
                line_length = 1,
                frame_count = 1,
                animation_speed = 1,
            }
        },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.5,
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3,
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },


----------------------------------------------------------------
----------------------------------------------------------------
})