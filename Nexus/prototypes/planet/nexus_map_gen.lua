
nexus = function()
  return
  {
    property_expression_names =
    {
      elevation = "vulcanus_elevation",
      temperature = "vulcanus_temperature",
      moisture = "vulcanus_moisture",
      aux = "vulcanus_aux",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",
      --["entity:tungsten-ore:probability"] = "vulcanus_tungsten_ore_probability",
      --["entity:tungsten-ore:richness"] = "vulcanus_tungsten_ore_richness",
      --["entity:coal:probability"] = "vulcanus_coal_probability",
      --["entity:coal:richness"] = "vulcanus_coal_richness",
      --["entity:calcite:probability"] = "vulcanus_calcite_probability",
      --["entity:calcite:richness"] = "vulcanus_calcite_richness",
      ["entity:sulfuric-acid-geyser:probability"] = "vulcanus_sulfuric_acid_geyser_probability",
      ["entity:sulfuric-acid-geyser:richness"] = "vulcanus_sulfuric_acid_geyser_richness",
    },
    cliff_settings =
    {
      name = "cliff-vulcanus",
      cliff_elevation_interval = 120,
      cliff_elevation_0 = 70
    },
--    territory_settings =
--    {
--      units = {"small-demolisher", "medium-demolisher", "big-demolisher"},
--      territory_index_expression = "demolisher_territory_expression",
--     territory_variation_expression = "demolisher_variation_expression",
--      minimum_territory_size = 10
--    },
    autoplace_controls =
    {
      --["vulcanus_coal"] = {},
      ["sulfuric_acid_geyser"] = {},
      --["tungsten_ore"] = {},
      --["calcite"] = {},
      ["vulcanus_volcanism"] = {},
      --["rocks"] = {}, -- can't add the rocks control otherwise nauvis rocks spawn
    },
    autoplace_settings =
    {
      ["tile"] =
      {
        settings =
        {
          --nauvis tiles
          ["volcanic-soil-dark"] = {},
          ["volcanic-soil-light"] = {},
          ["volcanic-ash-soil"] = {},
          --end of nauvis tiles
          ["volcanic-ash-flats"] = {},
          ["volcanic-ash-light"] = {},
          ["volcanic-ash-dark"] = {},
          ["volcanic-cracks"] = {},
          ["volcanic-cracks-warm"] = {},
          ["volcanic-folds"] = {},
          ["volcanic-folds-flat"] = {},
          --["lava"] = {},
          --["lava-hot"] = {},
          ["volcanic-folds-warm"] = {},
          ["volcanic-pumice-stones"] = {},
          ["volcanic-cracks-hot"] = {},
          ["volcanic-jagged-ground"] = {},
          ["volcanic-smooth-stone"] = {},
          ["volcanic-smooth-stone-warm"] = {},
          ["volcanic-ash-cracks"] = {},
        }
      },
      ["decorative"] =
      {
        settings =
        {
          -- nauvis decoratives
          ["v-brown-carpet-grass"] = {},
          ["v-green-hairy-grass"] = {},
          ["v-brown-hairy-grass"] = {},
          ["v-red-pita"] = {},
          -- end of nauvis
          ["vulcanus-rock-decal-large"] = {},
          ["vulcanus-crack-decal-large"] = {},
          ["vulcanus-crack-decal-huge-warm"] = {},
          ["vulcanus-dune-decal"] = {},
          ["vulcanus-sand-decal"] = {},
          ["vulcanus-lava-fire"] = {},
          ["calcite-stain"] = {},
          ["calcite-stain-small"] = {},
          ["sulfur-stain"] = {},
          ["sulfur-stain-small"] = {},
          ["sulfuric-acid-puddle"] = {},
          ["sulfuric-acid-puddle-small"] = {},
          ["crater-small"] = {},
          ["crater-large"] = {},
          ["pumice-relief-decal"] = {},
          ["small-volcanic-rock"] = {},
          ["medium-volcanic-rock"] = {},
          ["tiny-volcanic-rock"] = {},
          ["tiny-rock-cluster"] = {},
          ["small-sulfur-rock"] = {},
          ["tiny-sulfur-rock"] = {},
          ["sulfur-rock-cluster"] = {},
          ["waves-decal"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {
		  ["fulgoran-ruin-vault"] = {},
          ["fulgoran-ruin-attractor"] = {},
          ["fulgoran-ruin-colossal"] = {},
          ["fulgoran-ruin-huge"] = {},
          ["fulgoran-ruin-big"] = {},
          ["fulgoran-ruin-stonehenge"] = {},
          ["fulgoran-ruin-medium"] = {},
          ["fulgoran-ruin-small"] = {},
		  -----------------------------------------------------
          --["coal"] = {},
          --["calcite"] = {},
          ["sulfuric-acid-geyser"] = {},
          --["tungsten-ore"] = {},
          ["huge-volcanic-rock"] = {},
          ["big-volcanic-rock"] = {},
          ["crater-cliff"] = {},
          ["vulcanus-chimney"] = {},
          ["vulcanus-chimney-faded"] = {},
          ["vulcanus-chimney-cold"] = {},
          ["vulcanus-chimney-short"] = {},
          ["vulcanus-chimney-truncated"] = {},
          ["ashland-lichen-tree"] = {},
          ["ashland-lichen-tree-flaming"] = {},
        }
      }
    }
  }
end

return nexus