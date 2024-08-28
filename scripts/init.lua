local variant = Tracker.ActiveVariantUID
local has_map = string.find(Tracker.ActiveVariantUID, "map")

-- data cache
has_item_data = {}
cache_reset = false

Tracker:AddItems("items/common.json")
Tracker:AddItems("items/dungeon_items.json")
Tracker:AddItems("items/options.json")

-- load map if necessary
if has_map then
    ScriptHost:LoadScript("scripts/logic.lua")

    Tracker:AddMaps("maps/maps.json")

    Tracker:AddLocations("locations/overworld.json")
    Tracker:AddLocations("locations/dung_reg.json")
    Tracker:AddLocations("locations/forest.json")
    Tracker:AddLocations("locations/mines.json")
    Tracker:AddLocations("locations/lakebed.json")
    Tracker:AddLocations("locations/grounds.json")
    Tracker:AddLocations("locations/snowpeakruins.json")
    Tracker:AddLocations("locations/templeoftime.json")
    Tracker:AddLocations("locations/cityinthesky.json")
    Tracker:AddLocations("locations/hyrulecastle.json")

    Tracker:AddLayouts("layouts/options.json")
end

-- load generic tracker
Tracker:AddLayouts("layouts/dungeon_item_grid.json")
Tracker:AddLayouts("layouts/item_grids.json")
Tracker:AddLayouts("layouts/layouts.json")
Tracker:AddLayouts("layouts/capture.json")
if (string.find(Tracker.ActiveVariantUID, "map_tracker")) then
    Tracker:AddLayouts("layouts/map_tracker.json")
else
    Tracker:AddLayouts("layouts/item_tracker.json")
end
Tracker:AddLayouts("layouts/broadcast.json")
