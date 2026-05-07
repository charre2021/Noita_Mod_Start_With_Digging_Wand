function add_items_to_inventory(player, items)
  for _, path in ipairs(items) do
    local item = EntityLoad(path)
    if item then
      GamePickUpInventoryItem(player, item)
    else
      GamePrint("Error: Couldn't load the item ["..path.."]!")
    end
  end
end

function OnPlayerSpawned(player)
  local items = {
    "data/entities/items/pickup/digging_wand.xml",
  }
  add_items_to_inventory(player, items)
end  