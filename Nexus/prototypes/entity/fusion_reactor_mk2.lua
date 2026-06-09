--fusion_reactor_mk2.lua
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

{
	name = "fusion-generator-mk2",
    type = "fusion-generator",
    factoriopedia_description = {"factoriopedia-description.fusion-generator"},
    icon = "__space-age__/graphics/icons/fusion-generator.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "fusion-generator-mk2"},
    max_health = 1000,
    impact_category = "metal",
    corpse = "fusion-generator-remnants",
    dying_explosion = "fusion-generator-explosion",
    -- alert_icon_shift = util.by_pixel(0, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "fusion-generator",
    graphics_set = require ("__space-age__.prototypes.entity.fusion-system-pictures").generator_graphics_set,
    working_sound =
    {
      sound =
      {
        filename = "__space-age__/sound/entity/fusion/fusion-generator.ogg",
        volume = 0.15,
        speed_smoothing_window_size = 60,
        advanced_volume_control = {attenuation = "exponential"},
        audible_distance_modifier = 0.8,
      },
      use_doppler_shift = false,
      match_speed_to_activity = true,
      activity_to_speed_modifiers = {multiplier = 1.2},
      match_volume_to_activity = true,
      max_sounds_per_prototype = 2,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    perceived_performance = {minimum = 0.25, performance_to_activity_rate = 2.0},

    vehicle_impact_sound = sounds.generic_impact,

    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
      output_flow_limit = "1250MW", -- This is used to define max power output. 50MW at normal quality
    },
    max_fluid_usage = 50/second, -- at normal quality -- original Version 1.0.5
	--max_fluid_usage = 5/second, --changed in Version 1.0.6--error

    input_fluid_box =
    {
      production_type = "input",
      --pipe_covers = pipecoverspictures(),
      volume = 10,
      filter = "fusion-plasma",
      volume_reservation_fraction = 0.5,
      pipe_connections =
      {
        { flow_direction="input",  direction = defines.direction.south, position = {-1,  2}, connection_category = {"fusion-plasma"} },
        { flow_direction="input",  direction = defines.direction.south, position = { 1,  2}, connection_category = {"fusion-plasma"} },
        { flow_direction="output", direction = defines.direction.north, position = { 0, -2}, connection_category = {"fusion-plasma"} },
        { flow_direction="output", direction = defines.direction.west,  position = {-1,  0}, connection_category = {"fusion-plasma"} },
        { flow_direction="output", direction = defines.direction.east,  position = { 1,  0}, connection_category = {"fusion-plasma"} },
        { flow_direction="output", direction = defines.direction.west,  position = {-1, -1}, connection_category = {"fusion-plasma"} },
        { flow_direction="output", direction = defines.direction.east,  position = { 1, -1}, connection_category = {"fusion-plasma"} },
      },
    },
    output_fluid_box =
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      volume = 100,
      filter = "fluoroketone-hot",
      pipe_connections =
      {
        { flow_direction="output", direction = defines.direction.north, position = {-1, -2} },
        { flow_direction="output", direction = defines.direction.north, position = {1, -2} },
      }
    }
},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
{
    name = "fusion-reactor-mk2",
    type = "fusion-reactor",
    factoriopedia_description = {"factoriopedia-description.fusion-reactor"},
    icon = "__space-age__/graphics/icons/fusion-reactor.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "fusion-reactor-mk2"},
    max_health = 1000,
    impact_category = "metal",
    corpse = "fusion-reactor-remnants",
    dying_explosion = "fusion-reactor-explosion",
    -- alert_icon_shift = util.by_pixel(0, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "fusion-reactor",
    neighbour_connectable =
    {
      connections =
      {
        { location = { position = { -1.5, -3   }, direction = defines.direction.north }, category = "fusion-reactor-plasma",  neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = {  1.5, -3   }, direction = defines.direction.north }, category = "fusion-reactor-plasma",  neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = {  3,   -1.5 }, direction = defines.direction.east  }, category = "fusion-reactor-coolant", neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = {  3,    1.5 }, direction = defines.direction.east  }, category = "fusion-reactor-coolant", neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = {  1.5,  3   }, direction = defines.direction.south }, category = "fusion-reactor-plasma",  neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = { -1.5,  3   }, direction = defines.direction.south }, category = "fusion-reactor-plasma",  neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = { -3,    1.5 }, direction = defines.direction.west  }, category = "fusion-reactor-coolant", neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
        { location = { position = { -3,   -1.5 }, direction = defines.direction.west  }, category = "fusion-reactor-coolant", neighbour_category = {"fusion-reactor-plasma", "fusion-reactor-coolant"} },
      }
    },

    two_direction_only = true,
    graphics_set = require ("__space-age__.prototypes.entity.fusion-system-pictures").reactor_graphics_set,
    working_sound =
    {
      sound = {filename = "__space-age__/sound/entity/fusion/fusion-reactor.ogg", volume = 0.6, modifiers = volume_multiplier("main-menu", 1.44)},
      use_doppler_shift = false,
      match_volume_to_activity = true,
      max_sounds_per_prototype = 2,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    perceived_performance = {minimum = 0.25, performance_to_activity_rate = 2.0},

    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.reactor_open,
    close_sound = sounds.reactor_close,

    energy_source =
    {
      type = "electric",
      usage_priority = "primary-input",
    },
    power_input = "250MW", -- at normal quality
    max_fluid_usage = 100/second, -- at normal quality

    burner =
    {
      type = "burner",
      fuel_categories = {"dark-matter-fuel"},
      effectivity = 25,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 0 },
      light_flicker =
      {
        color = {1,0,0.7},
        minimum_intensity = 0.0,
        maximum_intensity = 0.1,
      }
    },
    input_fluid_box =
    {
      production_type = "input",
      volume = 1000,
      filter = "fluoroketone-cold",
      pipe_connections =
      {
        { flow_direction = "input-output", direction = defines.direction.west, position = {-2.5, -1.5} },
        { flow_direction = "input-output", direction = defines.direction.west, position = {-2.5,  1.5} },
        { flow_direction = "input-output", direction = defines.direction.east, position = { 2.5, -1.5} },
        { flow_direction = "input-output", direction = defines.direction.east, position = { 2.5,  1.5} },
      },
    },
    output_fluid_box =
    {
      production_type = "output",
      volume = 10,
      filter = "fusion-plasma",
      pipe_connections =
      {
        { flow_direction = "input-output", direction = defines.direction.south, position = {-1.5,  2.5}, connection_category = {"fusion-plasma"} },
        { flow_direction = "input-output", direction = defines.direction.south, position = { 1.5,  2.5}, connection_category = {"fusion-plasma"} },
        { flow_direction = "input-output", direction = defines.direction.north, position = {-1.5, -2.5}, connection_category = {"fusion-plasma"} },
        { flow_direction = "input-output", direction = defines.direction.north, position = { 1.5, -2.5}, connection_category = {"fusion-plasma"} },
      }
    }
  }

----------------------------------------------------------------
----------------------------------------------------------------
})