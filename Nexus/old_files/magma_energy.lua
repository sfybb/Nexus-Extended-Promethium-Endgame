local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

resource_autoplace.initialize_patch_set("magma-energy", true)

----------------------------------------------------------------
----------------------------------------------------------------

local magma_energy_control = table.deepcopy(data.raw["autoplace-control"].coal)
magma_energy_control.localised_name = {
  "",
  "[entity=magma-energy] ",
  {
    "entity-name.magma-energy"
  }
}
magma_energy_control.name = "magma-energy"

local planetsetting = data.raw.planet.nexus
--local planetsetting = data.raw.planet.nauvis
planetsetting.map_gen_settings.autoplace_controls["magma-energy"] = {}
planetsetting.map_gen_settings.autoplace_settings.entity.settings["magma-energy"] = {}

----------------------------------------------------------------
----------------------------------------------------------------

local magma_energy = {
  type = "resource",
  name = "magma-energy",
  icon = "__Nexus__/graphics/items/magma-energy.png",
  --icon_size = 64,
  flags = {"placeable-neutral"},
  category = "basic-fluid",
  --subgroup = "mineable-fluids",
  order = "a-b-b",
  tree_removal_probability = 0.1,
  tree_removal_max_distance = 32 * 32,
    infinite = false,
    highlight = true,
    minimum = 60000,
    normal = 300000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "magma-energy",
          amount_min = 10,
          amount_max = 10,
          probability = 1
        }
      }
    },
  collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  autoplace = resource_autoplace.resource_autoplace_settings
  {
      name = "magma-energy",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1
    },
  stage_counts = {0},
  stages =
  {
    sheet =
      {
		filename = "__Nexus__/graphics/icons/magma_energy/magma-energy.png",
	    width = 168,
		height = 124,
		shift = util.by_pixel( 0.5, -2.0),
		line_length = 4,
        priority = "extra-high",
        scale = 0.5,
        variation_count = 1,
        frame_count = 4,
      }
  },
    draw_stateless_visualisation_under_building = false,
    stateless_visualisation =
    {
      {
        count = 1,
        render_layer = "decorative",
        animation =
        {
		  filename = "__Nexus__/graphics/icons/magma_energy/magma-energy-animation.png",
		  width = 62,
		  height = 46,
   	      shift = util.by_pixel( 1.5, 3.5),
		  line_length = 8,
          priority = "extra-high",
          scale = 0.5,
          frame_count = 32,
          animation_speed = 0.2,
        }
      },
    },
	effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 5,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,	
	map_color = {0.764, 0.236, 0.0},
	--map_color = { r = 0.764, g = 0.236, b = 0.0 },
    --mining_visualisation_tint = {b = 0.13921568627450981, g = 0.1, r = 0.788235294117647},
	factoriopedia_simulation = {
 },
}

----------------------------------------------------------------
----------------------------------------------------------------

data:extend({
  magma_energy,
  magma_energy_control,
})



























--[[

local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

resource_autoplace.initialize_patch_set("magma-energy", true)

----------------------------------------------------------------
----------------------------------------------------------------

local magma_energy_control = table.deepcopy(data.raw["autoplace-control"].coal)
magma_energy_control.localised_name = {
  "",
  "[entity=magma-energy] ",
  {
    "entity-name.magma-energy"
  }
}
magma_energy_control.name = "magma-energy"

local planetsetting = data.raw.planet.nexus
--local planetsetting = data.raw.planet.nauvis
planetsetting.map_gen_settings.autoplace_controls["magma-energy"] = {}
planetsetting.map_gen_settings.autoplace_settings.entity.settings["magma-energy"] = {}

----------------------------------------------------------------
----------------------------------------------------------------

local magma_energy = {
  {
    type = "resource",
    name = "magma-energy",
    icon = "__Nexus__/graphics/icons/magma_energy/magma-energy.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    subgroup = "mineable-fluids",
    order="a",
    infinite = true,
    highlight = true,
    minimum = 60000,
    normal = 300000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "magma-energy",
          amount_min = 10,
          amount_max = 10,
          probability = 1
        }
      }
    },
    --walking_sound = tile_sounds.walking.oil({}),
    --driving_sound = tile_sounds.driving.oil,
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "magma-energy",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1
    },
    stage_counts = {0},

    draw_stateless_visualisation_under_building = false,
    stateless_visualisation =
    {
      {
        count = 1,
        render_layer = "decorative",
        animation = util.sprite_load("__Nexus__/graphics/icons/magma_energy/magma-energy-animation.png",
        {
          priority = "extra-high",
          scale = 0.5,
          frame_count = 32,
          animation_speed = 0.2,
        })
      },
      {
        count = 1,
        render_layer = "smoke",
        animation = {
          filename = "__base__/graphics/entity/crude-oil/oil-smoke-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 90,
          height = 188,
          animation_speed = 0.3,
          shift = util.by_pixel(-2, 24 -152),
          scale = 1.5,
          tint = util.multiply_color({r=0.3, g=0.3, b=0.3}, 0.2)
        }
      },
      {
        count = 1,
        render_layer = "smoke",
        animation = {
          filename = "__base__/graphics/entity/crude-oil/oil-smoke-inner.png",
          frame_count = 47,
          line_length = 16,
          width = 40,
          height = 84,
          animation_speed = 0.3,
          shift = util.by_pixel(0, 24 -78),
          scale = 1.5,
          tint = util.multiply_color({r=0.4, g=0.4, b=0.4}, 0.2)
        }
      }
    },
    map_color = {0.78, 0.2, 0.77},
    map_grid = false
  },
}

----------------------------------------------------------------
----------------------------------------------------------------

data:extend({
  magma_energy,
  magma_energy_control,
})



----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
local resource_autoplace = require("__core__.lualib.resource-autoplace")



data:extend({
  {
    type = "resource",
    name = "magma-energy",
    icon = "__Nexus__/graphics/resources/magma-energy.png",
    flags = { "placeable-neutral" },
    --category = "basic-fluid",
    --subgroup = "mineable-fluids",
    order = "a-b-a",
    infinite = false,
    map_grid = false,
    highlight = true,
    minimum = 20000,
    normal = 75000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 1,
    tree_removal_max_distance = 32 * 32,
    minable = {
      mining_time = 1,
      results = {
        {
          type = "fluid",
          name = "magma-energy",
          amount_min = 20,
          amount_max = 20,
          probability = 1,
        },
      },
    },
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "magma-energy",
      order = "c",
      base_density = 2,
      base_spots_per_km2 = 0.5,
      random_probability = 1 / 50,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1,
      additional_richness = 50000,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
    }),
    stage_counts = { 0 },
    stages = {
      sheet = {
        filename = "__Nexus__/graphics/resources/magma-energy.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        --frame_count = 8,
        --variation_count = 1,
		scale = 0.5,
        variation_count = 1,
        frame_count = 4,
      },
    },
    map_color = { r = 0.35, g = 0.5, b = 0.75 },
  },
  {
    type = "autoplace-control",
    name = "magma-energy",
    localised_name = { "", "[entity=magma-energy] ", { "autoplace-control-names.magma-energy" } },
    order = "k-b",
    richness = true,
    category = "resource",
  },
})


--]]