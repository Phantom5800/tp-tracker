function showGlitchLogic()
  return show_glitch_logic
end

local item_wheel_items = {
  "Auru_Memo",
  "Bomb_Bag",
  "Bottle",
  "Hawkeye",
  "Horse_Call",
  "Iron_Boots",
  "Lantern",
  "Progressive_Bow",
  "Progressive_Dominion_Rod",
  "Slingshot"
}

function getItemWheelSlotCount()
  local count = 0
  for k,v in pairs(item_wheel_items) do
    count = count + countof(v)
  end
  return count
end

function canDoAirRefill()
  return canUseWaterBombs()
          and (hasSword() or has("Clawshot"))
          and (has("Magic_Armor") or (has("Iron_Boots") and getItemWheelSlotCount() >= 3))
end

function canDoMoonBoots()
  return hasSword()
          and (has("Magic_Armor")
                or (has("Iron_Boots") and getItemWheelSlotCount() >= 3)) -- be able to force unequip iron
end

function canDoJSMoonBoots()
  return canDoMoonBoots() and countof("Progressive_Hidden_Skill") >= 6
end

function canDoBSMoonBoots()
  return countof("Progressive_Hidden_Skill") >= 3 and has("Magic_Armor")
end

function canDoEBMoonBoots()
  return canDoMoonBoots()
          and countof("Progressive_Hidden_Skill") >= 1
          and has("Progressive_Sword_2")
end

function canDoLJA()
  return hasSword() and has("Boomerang")
end

function canDoMapGlitch()
  return has("Shadow_Crystal") and canLeaveForest()
end

function canDoStorage()
  return canDoMapGlitch() and hasOneHandedItem()
end
