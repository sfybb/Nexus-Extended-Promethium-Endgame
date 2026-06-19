--omega_beacon.lua
local sounds = require("__base__.prototypes.entity.sounds")


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------

{
    name = "omega-beacon",
    type = "beacon",
    icon = "__Nexus-Graphics__/graphics/items/omega-beacon.png",
    icon_size = 64,
    flags = {"player-creation","placeable-neutral","not-upgradable"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.2,-1.2},{1.2,1.2}},
    selection_box = {{-1.5,-1.5},{1.5,1.5}},
    --map_color = ei_data.colors.assembler,
    allowed_effects = {"speed", "consumption", "productivity", "pollution"},
    minable = {
        mining_time = 1,
        result = "omega-beacon",
    },
	fast_replaceable_group = "beacon",
    distribution_effectivity = 2.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        --input_flow_limit = "400MW",
    },
    energy_usage = "20MW",
    beacon_counter = "same_type",
	module_slots = 4,
    supply_area_distance = 8,
    radius_visualisation_picture =
    {
        filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
        width = 10,
        height = 10,
    },
    graphics_set = {
        module_icons_suppressed = false,
        
        animation_list = {
            -- Beacon Base
            {
                render_layer = "lower-object-above-shadow",
                always_draw = true,
                animation = {
                    layers = {
                        -- Base
                        {
                            filename = "__Nexus-Graphics__/graphics/entity/omega-beacon.png",
                            width = 232,
                            height = 186,
                            shift = util.by_pixel(13, 1.5),
                            scale = 0.525
                        },
                            -- Shadow
                        {
                            filename = "__Nexus-Graphics__/graphics/entity/omega-beacon-shadow.png",
                            width = 116*2,
                                height = 93*2,
                                shift = util.by_pixel(13, 1.5),
                                draw_as_shadow = true,
                                scale = 0.5
                            }
                        }
                    }
                },
                -- Beacon Antenna
                {
                    render_layer = "object",
                    always_draw = true,
                    animation = {
                        layers = {
                            -- Base
                            {
                                filename = "__Nexus-Graphics__/graphics/entity/omega-beacon-animation.png",
                                width = 54*2,
                                height = 50*2,
                                line_length = 8,
                                frame_count = 32,
                                animation_speed = 0.5,
                                shift = util.by_pixel(1, -57),
                                scale = 0.5
                            },
                            -- Shadow
                            {
                                filename = "__Nexus-Graphics__/graphics/entity/omega-beacon-top-shadow.png",
                                width = 63*2,
                                height = 49*2,
                                line_length = 8,
                                frame_count = 32,
                                animation_speed = 0.5,
                                shift = util.by_pixel(102.5, 17.5),
                                draw_as_shadow = true,
                                scale = 0.5
                            }
                        }
                    }
                }
            }
        }
},

----------------------------------------------------------------
----------------------------------------------------------------
})



--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
data.raw["beacon"]["beacon"].next_upgrade = "omega-beacon"
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------