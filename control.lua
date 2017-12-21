script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
		--Check for sandbox mode... or any mode without a player body.
		if (not player.character or not player.get_inventory(5)) then
			return
		end
		--Spawn and loadout armor
		player.insert{name="tiny-armor", count = 1}
		local p_armor = player.get_inventory(5)[1].grid --defines.inventory.player_armor = 5?
			p_armor.put({name = "micro-fusion-reactor-equipment"})
			p_armor.put({name = "energy-shield-equipment"})
			p_armor.put({name = "personal-roboport-equipment"})
			p_armor.put({name = "personal-roboport-equipment"})
			p_armor.put({name = "battery-mk2-equipment"})
			p_armor.put({name = "battery-mk2-equipment"})
		player.insert{name="construction-robot", count = 20}
		player.insert{name="blueprint-book", count = 1}
		local book = player.get_inventory(defines.inventory.player_quickbar).find_item_stack("blueprint-book").get_inventory(defines.inventory.item_main)
		book.insert{name="blueprint", count = 20}
		player.insert{name="deconstruction-planner", count = 1}
end)


--No longer needed with collectable graves coming to vanilla.
--Hopefully.
--(Don't die anywhere you can't get back to, OK?)
--Left here for reference

--[[

script.on_event(defines.events.on_player_respawned, function(event)
	local player = game.players[event.player_index]
		player.insert{name="tiny-armor", count = 1}
		local p_armor = player.get_inventory(5)[1].grid
			p_armor.put({name = "micro-fusion-reactor-equipment"})
			p_armor.put({name = "energy-shield-equipment"})
			p_armor.put({name = "personal-roboport-equipment"})
			p_armor.put({name = "personal-roboport-equipment"})
			p_armor.put({name = "battery-mk2-equipment"})
			p_armor.put({name = "battery-mk2-equipment"})
		player.insert{name="construction-robot", count = 20}
		player.insert{name="blueprint-book", count = 1}
		if player.get_inventory(defines.inventory.player_quickbar).find_item_stack("blueprint-book") ~= nil then
			local book = player.get_inventory(defines.inventory.player_quickbar).find_item_stack("blueprint-book").get_inventory(defines.inventory.item_main)
			book.insert{name="blueprint", count = 20}
		elseif player.get_inventory(defines.inventory.player_main).find_item_stack("blueprint-book") ~= nil then
			local book = player.get_inventory(defines.inventory.player_main).find_item_stack("blueprint-book").get_inventory(defines.inventory.item_main)
			book.insert{name="blueprint", count = 20}
		end
		player.insert{name="deconstruction-planner", count = 1}
end)
]]--