local variant = Tracker.ActiveVariantUID
local has_map = true

Tracker:AddItems("items/common.json")
Tracker:AddItems("items/dungeon_items.json")
Tracker:AddItems("items/options.json")

ScriptHost:LoadScript("scripts/logic.lua")

if has_map then
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLocations("locations/overworld.json")
    Tracker:AddLocations("locations/dung_reg.json")
    Tracker:AddLocations("locations/forest.json")
    Tracker:AddLocations("locations/mines.json")
    Tracker:AddLayouts("layouts/options.json")
    Tracker:AddLayouts("layouts/dungeon_item_grid.json")
end


Tracker:AddLayouts("layouts/item_grids.json")
Tracker:AddLayouts("layouts/layouts.json")
Tracker:AddLayouts("layouts/capture.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
