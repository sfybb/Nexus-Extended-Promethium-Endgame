--remove_tech.lua



for index, force in pairs(game.forces) do


  if force.technologies["promethium-science-pack"].enabled then
	 force.technologies["promethium-science-pack"].enabled = false
     force.technologies["promethium-science-pack"].visible_when_disabled = false
	 force.recipes["promethium-science-pack"].enabled = false
  end
----------------------------------------------------------------------------------------------------------------------
  if force.technologies["research-productivity"].enabled then
	 force.technologies["research-productivity"].enabled = false
     force.technologies["research-productivity"].visible_when_disabled = false
  end

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
end