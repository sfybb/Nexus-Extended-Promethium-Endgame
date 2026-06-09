
local asteroid_util = require("__Nexus__.starmap_locations.add_asteroiden_spawn")
--local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

--data.raw.planet.aquilo.asteroid_spawn_influence = 0,


data:extend({


----------------------------------------------------------------
----------------------------------------------------------------
-------ADD SPACE LOCATION-------

  {
    type = "space-location",
    name = "sol",
    icon = "__Nexus-Graphics__/graphics/icons/sol.png",
	icon_size = 512,
	starmap_icon = "__Nexus-Graphics__/graphics/icons/sol.png",
    starmap_icon_size = 512,
    --order = "h[solar-system-edge]",
    subgroup = "planets",
    gravity_pull = -10,
    distance = 80,
    orientation = 0.35,
    magnitude = 1.0,
	draw_orbit = false,
    label_orientation = 0.15,
    --asteroid_spawn_influence = 1,
    --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge, 0.9)
  },
----------------------------------------------------------------
  {
    type = "space-location",
    name = "oort-cloud",
    icon = "__Nexus-Graphics__/graphics/icons/oort-cloud.png",
	icon_size = 512,
    starmap_icon = "__Nexus-Graphics__/graphics/icons/oort-cloud.png",
    starmap_icon_size = 512,
    --order = "i[shattered-planet]",
    subgroup = "planets",
    gravity_pull = -10,
    distance = 50,
    orientation = 0.35,
    magnitude = 1.0,
    draw_orbit = true,
    fly_condition = true,
    auto_save_on_first_trip = false,
    --asteroid_spawn_influence = 1,
	--asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus, 0.1),
  },

----------------------------------------------------------------
----------------------------------------------------------------
-------SPACE MAP CONNECTIONS------- 

    {
    type = "space-connection",
    name = "nexus-oort-cloud",
    subgroup = "planet-connections",
    from = "nexus",
    to = "oort-cloud",
    order = "i",
    length = 53333,
	asteroid_spawn_influence = 0,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.oort_cloud_trip),
	-------asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
  },
  {
    type = "space-connection",
    name = "oort-cloud-sol",
    subgroup = "planet-connections",
    from = "oort-cloud",
    to = "sol",
    order = "j",
    length = 2863311440,
	--length = 4294967295,
	asteroid_spawn_influence = 0,
    --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)
  },
----------------------------------------------------------------
----------------------------------------------------------------
-------ASTEROIDEN SPAWN------- 



----------------------------------------------------------------
----------------------------------------------------------------

})