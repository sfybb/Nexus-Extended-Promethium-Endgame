local script_data =
{
  finished = {},
  victory_location = "sol",
  no_victory = false
}

local on_space_platform_changed_state = function(event)
  if script_data.no_victory then return end

  if not script_data.victory_location then return end

  local platform = event.platform
  if not (platform and platform.valid) then return end

  local last_visited_location = platform.last_visited_space_location
  if not last_visited_location then return end
  if last_visited_location.name ~= script_data.victory_location then return end

  local force = platform.force
  if script_data.finished[force.name] then return end
  script_data.finished[force.name] = true

  game.reset_game_state()
  game.enable_galaxy_of_fame_button = true
  game.set_game_state
  {
    game_finished = true,
    player_won = true,
    can_continue = true,
    victorious_force = force
  }
end

remote.add_interface("nexus_finish_script",
{
  set_victory_location = function(location)
    script_data.victory_location = location
  end,
  set_no_victory = function(bool)
    script_data.no_victory = bool
  end,
  get_no_victory = function()
    return script_data.no_victory
  end,
})

local nexus_finish_script = {}

nexus_finish_script.events =
{
  [defines.events.on_space_platform_changed_state] = on_space_platform_changed_state
}

nexus_finish_script.on_configuration_changed = function()
  storage.nexus_finish_script = storage.nexus_finish_script or script_data

  if script_data.finished["player"] then
    game.enable_galaxy_of_fame_button = true
  end
end

nexus_finish_script.on_init = function()
  storage.nexus_finish_script = storage.nexus_finish_script or script_data
end

nexus_finish_script.on_load = function()
  script_data = storage.nexus_finish_script or script_data
end

return nexus_finish_script
