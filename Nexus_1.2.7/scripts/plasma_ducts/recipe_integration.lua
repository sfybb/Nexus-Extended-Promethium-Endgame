--recipe_integration.lua


data:extend({



{
	name = "plasma-duct",
	type = "recipe",
    enabled = false,
	ingredients = {
		  {type = "item", name = "omega-alloy", amount = 1},
		  {type = "item", name = "tungsten-plate", amount = 25},
          {type = "item", name = "superconductor", amount = 25},
		  {type = "item", name = "supercapacitor", amount = 25},
          {type = "item", name = "refined-concrete", amount = 100},
          {type = "fluid", name = "high-energetic-photonen-fluid", amount = 100},
	},
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10000,
        max = 10000
      },
	  {
        property = "gravity",
        min = 180,
        max = 180
      },
      {
        property = "magnetic-field",
        min = 120,
		max = 120
      }
    },
	results = {
	{type = "item", name = "plasma-duct", amount = 10}
	},
	energy_required = 38,
--	localised_description = "-----------------",
	category = "atomar-assembler",
	subgroup = "plasma-duct",
	order = "o-a",
	--always_show_made_in = true,
},



})