--remove_tech.lua

	
data:extend({

----------------------------------------------------------------
----------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------DISABELED TECH-------

{
    type = "technology",
    name = "promethium-science-pack",
    icon = "__space-age__/graphics/technology/promethium-science-pack.png",
    icon_size = 256,
	visible_when_disabled = false,
	enabled = false,		---------Disabled Tech---------
    essential = false,		---------Disabled Tech---------
    effects =
    {
      {
        type = "unlock-space-location",
        space_location = "solar-system-edge"
      },
      {
        type = "unlock-space-location",
        space_location = "shattered-planet"
      },
      {
        type = "unlock-recipe",
        recipe = "promethium-science-pack",
      },
    },
    prerequisites = {"biter-egg-handling", "fusion-reactor"},
    unit =
    {
      count_formula = "2000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"cryogenic-science-pack", 1}
      },
      time = 60
    }
},
----------------------------------------------------------------
{
    type = "technology",
    name = "research-productivity",
    icon = "__space-age__/graphics/technology/research-productivity.png",
    icon_size = 256,
    icon_size = 256,
	visible_when_disabled = false,
	enabled = false,		---------Disabled Tech---------
    essential = false,		---------Disabled Tech---------
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.10
      },
    },
    prerequisites = {"promethium-science-pack"},
    unit =
    {
      count_formula = "1.2^L*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 120
    },
    max_level = "infinite",
    upgrade = true
},

----------------------------------------------------------------
----------------------------------------------------------------
})