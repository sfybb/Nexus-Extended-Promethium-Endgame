--technology_integration.lua


data:extend({



{
	name = "plasma-duct",
	type = "technology",
	icon = "__plasma-duct__/graphics/technology/plasma-duct.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "plasma-duct"},
	  },
	prerequisites = {"rare-metal-refining"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
      },
      time = 60
    }
},



})