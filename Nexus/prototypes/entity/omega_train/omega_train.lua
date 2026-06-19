--omega_train.lua




-- 1. COLOR DEFINITION
local grey_silver = {r = 0.7, g = 0.72, b = 0.75, a = 1}
--local grey_silver = {r = 0.35, g = 0.37, b = 0.4, a = 1}

-- 2. LOKOMOTIVE (Update for Canister Logic)
local omega_locomotive = table.deepcopy(data.raw["locomotive"]["locomotive"])
omega_locomotive.name = "omega-locomotive"
omega_locomotive.minable.result = "omega-locomotive"

-- Stats & Power
omega_locomotive.max_health = 15000
omega_locomotive.energy_per_hit_point = 1
omega_locomotive.air_resistance = 0.0075
omega_locomotive.friction_force = 0.5
omega_locomotive.max_speed = 3.0
omega_locomotive.max_power = "30MW"
omega_locomotive.braking_force = 400
omega_locomotive.weight = 4000
omega_locomotive.color = grey_silver
omega_locomotive.allow_any_color = false

-- Fuel system for canisters
omega_locomotive.energy_source = {
    type = "burner", 
    fuel_categories = {"photon-fuel"},
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
}

-- 3. ADJUST FUEL LOGIC
-- When this canister is empty, return “omega-canister”.
if data.raw["item"]["high-energetic-photonen-fluid-canister"] then
    data.raw["item"]["high-energetic-photonen-fluid-canister"].burnt_result = "omega-canister"
    -- Make sure it falls into the correct category
    data.raw["item"]["high-energetic-photonen-fluid-canister"].fuel_category = "photon-fuel"
end

-- 4. WAGGONS
local omega_cargo_wagon = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
omega_cargo_wagon.name = "omega-cargo-wagon"
omega_cargo_wagon.inventory_size = 200
omega_cargo_wagon.color = grey_silver

local omega_fluid_wagon = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
omega_fluid_wagon.name = "omega-fluid-wagon"
omega_fluid_wagon.capacity = 1000000
omega_fluid_wagon.color = grey_silver



----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------



data:extend({

omega_locomotive,
omega_cargo_wagon,
omega_fluid_wagon,



-- 5. ITEM-DEFINITION
    {
        type = "item-with-entity-data",
        name = "omega-locomotive",
		icons = {
        {
            icon = "__Nexus-Graphics__/graphics/items/omega-locomotive.png",
            icon_size = 64,
            tint = grey_silver
        }
    },
        subgroup = "omega-train",
        order = "p-a",
        place_result = "omega-locomotive",
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "omega-cargo-wagon",
        icons = {
        {
            icon = "__base__/graphics/icons/cargo-wagon.png",
            icon_size = 64,
            tint = grey_silver
        }
    },
        subgroup = "omega-train",
        order = "p-b",
        place_result = "omega-cargo-wagon",
        stack_size = 5
    },
    {
        type = "item-with-entity-data",
        name = "omega-fluid-wagon",
        icons = {
        {
            icon = "__base__/graphics/icons/fluid-wagon.png",
            icon_size = 64,
            tint = grey_silver
        }
    },
        subgroup = "omega-train",
        order = "p-c",
        place_result = "omega-fluid-wagon",
        stack_size = 5
    },

-- 6. RECIPE DEFINITION
    {
        type = "recipe",
        name = "omega-locomotive",
        enabled = false,
		subgroup = "omega-train",
        order = "p-a",
		ingredients = {
		{type = "item", name = "locomotive",amount = 1},
		{type = "item", name = "omega-alloy",amount = 20},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 12},
		{type = "item", name = "advanced-coil",amount = 4},
	},
		results = {{type = "item", name = "omega-locomotive", amount = 1}},
	},
    {
        type = "recipe",
        name = "omega-cargo-wagon",
        enabled = false,
		subgroup = "omega-train",
        order = "p-b",
        ingredients = {
		{type = "item", name = "cargo-wagon",amount = 1},
		{type = "item", name = "omega-alloy",amount = 20},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 12},
		{type = "item", name = "advanced-coil",amount = 4},
	},
		results = {{type = "item", name = "omega-cargo-wagon", amount = 1}},
    },
    {
        type = "recipe",
        name = "omega-fluid-wagon",
        enabled = false,
		subgroup = "omega-train",
        order = "p-c",
        ingredients = {
		{type = "item", name = "fluid-wagon",amount = 1},
		{type = "item", name = "omega-alloy",amount = 20},
		{type = "item", name = "omega-gear",amount = 40},
		{type = "item", name = "omega-beam",amount = 12},
		{type = "item", name = "advanced-coil",amount = 4},
	},
		results = {{type = "item", name = "omega-fluid-wagon", amount = 1}},
    }


})