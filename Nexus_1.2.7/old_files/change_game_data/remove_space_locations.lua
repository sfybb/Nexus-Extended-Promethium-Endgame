
local asteroid_util = require("__Nexus__.change_game_data.change_asteroiden_spawn")
--local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

--data.raw.planet.aquilo.asteroid_spawn_influence = 0,


data:extend({


----------------------------------------------------------------
----------------------------------------------------------------
-------CHANGE SPACE LOCATION-------

  {
    type = "space-location",
    name = "solar-system-edge",
    icon = "__space-age__/graphics/icons/solar-system-edge.png",
    order = "f[solar-system-edge]",
    subgroup = "planets",
    gravity_pull = -10,
    distance = 80,
    orientation = 0.25,
    magnitude = 1.0,
	draw_orbit = false,
    label_orientation = 0.15,
    --asteroid_spawn_influence = 1,
    --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge, 0.9)
  },
----------------------------------------------------------------
  {
    type = "space-location",
    name = "shattered-planet",
    icon = "__space-age__/graphics/icons/shattered-planet.png",
    starmap_icon = "__space-age__/graphics/icons/starmap-shattered-planet.png",
    starmap_icon_size = 512,
    order = "g[shattered-planet]",
    subgroup = "planets",
    gravity_pull = -10,
    distance = 50,
    orientation = 0.25,
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
    name = "aquilo-solar-system-edge",
    subgroup = "planet-connections",
    from = "aquilo",
    to = "shattered-planet",
    order = "h",
    length = 100000,
	asteroid_spawn_influence = 0,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.shattered_planet_trip)
	-------asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
  },
  {
    type = "space-connection",
    name = "solar-system-edge-shattered-planet",
    subgroup = "planet-connections",
    from = "shattered-planet",
    to = "solar-system-edge",
    order = "i",
    length = 4294967295,
	asteroid_spawn_influence = 0,
    --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)
  },
  
----------------------------------------------------------------
----------------------------------------------------------------
-------ASTEROIDEN SPAWN------- 



----------------------------------------------------------------
----------------------------------------------------------------

})