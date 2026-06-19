--burner_usage.lua



data:extend({
  {
    type = "burner-usage",
    name = "critical-photon-cube-energy",
    empty_slot_sprite =
    {
      filename = "__Nexus__/graphics/icons/no-photon-energy.png",
      priority = "extra-high-no-scale",
      size = 64,
      mipmap_count = 2,
      flags = {"gui-icon"},
    },
    empty_slot_caption = {"no-photon-energy"},
    empty_slot_description = {"photon-energy-needed"},

    icon =
    {
      filename = "__Nexus__/graphics/icons/no-photon-energy.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      flags = {"icon"}
    },
    no_fuel_status = {"entity-status.no-photon-energy"},

    accepted_fuel_key = "description.accepted-photon-cube",
    burned_in_key = "digested-by", -- factoriopedia
  },
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
})
