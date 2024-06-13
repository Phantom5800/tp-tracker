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
  if has("air-refill-off") then
    return false
  end
  return canUseWaterBombs()
          and (hasSword() or has("Clawshot"))
          and (has("Magic_Armor") or (has("Iron_Boots") and getItemWheelSlotCount() >= 3))
end

function canDoBallAndChainItemGrab()
  return has("b&c-items-on") and has("Ball_and_Chain")
end

function canDoMoonBoots()
  if has("moon-boots-off") then
    return false
  end
  return hasSword()
          and (has("Magic_Armor")
                or (has("Iron_Boots") and getItemWheelSlotCount() >= 3)) -- be able to force unequip iron
end

function canDoJSMoonBoots()
  if has("moon-boots-off") then
    return false
  end
  return canDoMoonBoots() and countof("Progressive_Hidden_Skill") >= 6
end

function canDoBSMoonBoots()
  if has("moon-boots-off") then
    return false
  end
  return countof("Progressive_Hidden_Skill") >= 3 and has("Magic_Armor")
end

function canDoEBMoonBoots()
  if has("moon-boots-off") then
    return false
  end
  return canDoMoonBoots()
          and countof("Progressive_Hidden_Skill") >= 1
          and has("Progressive_Sword_2")
end

function canDoLJA()
  if has("lja-off") then
    return false
  end
  return hasSword() and has("Boomerang")
end

function canDoMapGlitch()
  if has("map-glitch-off") then
    return false
  end
  return has("Shadow_Crystal") and canLeaveForest()
end

function canDoPreciseWolfJumps()
  return has("wolf-jumps-on") and has("Shadow_Crystal")
end

function canSinkWithMagicArmor()
  return has("magic-armor-on") and has("Magic_Armor")
end

function canDoStorage()
  return canDoMapGlitch() and hasOneHandedItem()
end
