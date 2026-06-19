--move_promethium_tech.lua


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------MOVE PROMETHIUM TECH-------

{
    type = "technology",
    name = "research-productivity",
    icon = "__space-age__/graphics/technology/research-productivity.png",
	icon_size = 256,
	prerequisites = {"promethium-science-pack", "warp-drive-engine"},
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.10
      },
    },
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
        {"promethium-science-pack", 1},
		--{"antimatter-science-pack", 1},
      },
      time = 120
    },
    max_level = "infinite",
    upgrade = true
},

--[[
{
    type = "technology",
    name = "promethium-science-pack",
    icon = "__space-age__/graphics/technology/promethium-science-pack.png",
    icon_size = 256,
	prerequisites = {"warp-drive-engine"},
	research_trigger =
    {
      type = "build-entity",
      entity = "warp-drive-engine"
    },
},

----------------------------------------------------------------
{
    type = "technology",
    name = "research-productivity",
    icon = "__space-age__/graphics/technology/research-productivity.png",
	icon_size = 256,
	prerequisites = {"promethium-science-pack"},
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
        {"promethium-science-pack", 1},
		{"antimatter-science-pack", 1},
      },
      time = 120
    },
    max_level = "infinite",
    upgrade = true
},
--]]
----------------------------------------------------------------
----------------------------------------------------------------
})