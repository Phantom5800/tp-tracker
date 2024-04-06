--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canBreakMonkeyCage()
  return hasSword()
          or has("Iron_Boots")
          or has("Spinner")
          or has("Ball_and_Chain")
          or has("Shadow_Crystal")
          or hasBombs()
          or has("Clawshot")
end

function canFreeAllMonkeys()
  return canBreakMonkeyCage()
          and (has("Lantern")
              or hasBombs()
              or has("Iron_Boots"))
          and canBurnWebs()
          and has("Boomerang")
          and canDefeatBokoblin()
          and (has("Forest_Temple_Small_Key",4) or has("small-keysy-enabled"))
end

function canCutHangingWeb()
  return has("Clawshot")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Boomerang")
          or has("Ball_and_Chain")
end

function canAccessForestTemple()
  return canCompletePrologue() and (has("Shadow_Crystal") or has("Lantern"))
end

function canAccessForestTempleHubRoom()
  return canDefeatWalltula() and canDefeatBokoblin() and canBreakMonkeyCage()
end

function canCompleteForestTemple()
  return canBreakMonkeyCage()
          and has("Boomerang")
          and (has("Forest_Temple_Big_Key") or has("boss-keysy-enabled"))
          and (canFreeAllMonkeys() or has("Clawshot"))
          and canDefeatDiababa()
end

--[[-------------------------------------------------------
  Bosses
---------------------------------------------------------]]
function canDefeatOok()
  return hasSword()
          or has("Ball_and_Chain")
          or (has("Progressive_Bow") and canGetArrows())
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatDiababa()
  return canLaunchBombs()
          or (has("Boomerang")
              and (hasSword()
                    or has("Ball_and_Chain")
                    or has("Shadow_Crystal")
                    or hasBombs()))
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function ForestTemple_Dungeon_Reward()
  local boss_key = has("Forest_Temple_Big_Key") or has("boss-keysy-enabled")
  if has("Boomerang") and boss_key and canDefeatDiababa() then
    -- glitchless access
    local monkey_bridge = has("Clawshot") or canFreeAllMonkeys()
    if monkey_bridge then
      return true
    else -- boomerang LJA's
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function ForestTemple_Big_Baba_Key()
  local key_access = has("small-keysy-enabled") or has("Clawshot") or has("Forest_Temple_Small_Key",2)
  return canBurnWebs() and canDefeatBigBaba() and key_access
end

function ForestTemple_Big_Key_Chest()
  return has("Boomerang")
end

function ForestTemple_Central_Chest_Behind_Stairs()
  return has("Boomerang")
end

function ForestTemple_Central_Chest_Hanging_From_Web()
  return canCutHangingWeb()
end

function ForestTemple_Central_North_Chest()
  return has("Lantern")
end

function ForestTemple_East_Tile_Worm_Chest()
  return has("Boomerang") and (has("Forest_Temple_Small_Key",4) or has("small-keysy-enabled"))
end

function ForestTemple_Entrance_Vines_Chest()
  return canDefeatWalltula()
end

function ForestTemple_Gale_Boomerang()
  if canDefeatOok() then
    local key_access = has("small-keysy-enabled") or has("Forest_Temple_Small_Key",4)
    if key_access then
      if has("Lantern") or (canBurnWebs() and has("Boomerang")) then
        return true
      end
    else
      return has("Clawshot") and has("Boomerang") and canBurnWebs()
    end
  end
  return false
end

function ForestTemple_North_Deku_Like_Chest()
  return canBurnWebs() and has("Boomerang")
end

function ForestTemple_Second_Monkey_Under_Bridge_Chest()
  return has("Forest_Temple_Small_Key",4) or has("small-keysy-enabled")
end

function ForestTemple_Totem_Pole_Chest()
  local key_access = has("small-keysy-enabled") or has("Clawshot") or has("Forest_Temple_Small_Key",2)
  return canBurnWebs() and key_access
end

function ForestTemple_West_Deku_Like_Chest()
  local key_access = has("small-keysy-enabled") or has("Clawshot") or has("Forest_Temple_Small_Key",2)
  return canBurnWebs() and key_access
end

function ForestTemple_West_Tile_Worm_Chest_Behind_Stairs()
  local key_access = has("small-keysy-enabled") or has("Clawshot") or has("Forest_Temple_Small_Key",2)
  return canBurnWebs() and has("Boomerang") and key_access
end

function ForestTemple_West_Tile_Worm_Room_Vines_Chest()
  local key_access = has("small-keysy-enabled") or has("Clawshot") or has("Forest_Temple_Small_Key",2)
  return canBurnWebs() and key_access
end
