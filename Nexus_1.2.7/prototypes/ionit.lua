local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

resource_autoplace.initialize_patch_set("ionit-ore", true)

----------------------------------------------------------------
----------------------------------------------------------------

local ionit_ore_control = table.deepcopy(data.raw["autoplace-control"].coal)
ionit_ore_control.localised_name = {
  "",
  "[entity=ionit-ore] ",
  {
    "entity-name.ionit-ore"
  }
}
ionit_ore_control.name = "ionit-ore"

local planetsetting = data.raw.planet.nexus
--local planetsetting = data.raw.planet.nauvis
planetsetting.map_gen_settings.autoplace_controls["ionit-ore"] = {}
planetsetting.map_gen_settings.autoplace_settings.entity.settings["ionit-ore"] = {}

----------------------------------------------------------------
----------------------------------------------------------------

local ionit_ore = {
  type = "resource",
  name = "ionit-ore",
  icon = "__Nexus-Graphics__/graphics/icons/ionit-ore.png",
  flags = {"placeable-neutral"},
  order = "a-b-b",
  tree_removal_probability = 0.1,
  tree_removal_max_distance = 32 * 32,
  walking_sound = sounds.ore,
  driving_sound = stone_driving_sound,
  minable =
  {
    count = 1,
    mining_particle = "stone-particle",
    mining_time = 0.5,
    result = "ionit-ore",
  },
  collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  autoplace = resource_autoplace.resource_autoplace_settings
  {
    name = "ionit-ore",
    order = "b",
    base_density = 8,
    base_spots_per_km2 = 1.25,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1.0,
    starting_rq_factor_multiplier = 1.1
  },
  stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
  stages =
  {
    sheet =
    {
	  filename = "__Nexus-Graphics__/graphics/icons/ionit.png",
	  icon_size = 64,
      priority = "extra-high",
      size = 128,
      frame_count = 8,
      variation_count = 8,
      scale = 0.5,
	  --tint = {b = 0.13921568627450981, g = 0.1, r = 0.788235294117647}
    }
  },
     stages_effect = {
      sheet = {
        filename = "__Nexus-Graphics__/graphics/icons/ionit.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        animation_speed = 3,
        variation_count = 8,
        draw_as_glow = true,
        hr_version = {
          filename = "__Nexus-Graphics__/graphics/icons/ionit-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          animation_speed = 3,
          variation_count = 8,
          scale = 0.5,
          draw_as_glow = true,
        },
      },
    },
	effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 5,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,	
	map_color = {0.1, 0.1, 0.9176},
    --mining_visualisation_tint = {b = 0.13921568627450981, g = 0.1, r = 0.788235294117647},
	factoriopedia_simulation = {
 },
}

----------------------------------------------------------------
----------------------------------------------------------------

data:extend({
  ionit_ore,
  ionit_ore_control,
})