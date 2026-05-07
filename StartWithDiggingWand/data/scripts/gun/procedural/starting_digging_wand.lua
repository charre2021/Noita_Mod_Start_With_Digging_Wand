dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

ComponentSetValue( ability_comp, "ui_name", "Digging wand" )

ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", 1 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", 3 )
ComponentSetValue( ability_comp, "mana_charge_speed", 20 )

ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", 1 )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", 1 )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", 0 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", 0 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", 1 )

ComponentSetValue( ability_comp, "mana_max", 200 )
ComponentSetValue( ability_comp, "mana", 200 )

AddGunAction( entity_id, "DIGGER")
