--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessSnowpeakRuins()
  if canSmash()
          and ((hasSword() and has("Slingshot")) or has("skip-prologue-on"))
          and canLeaveForest()
          and has("Shadow_Crystal") then
    local reekfish,access = hasReekfish()
    if has("Snowpeak") then
      return reekfish,access
    else
      return reekfish,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function canCompleteSnowpeakRuins()
  return canAccessSnowpeakRuins()
          and ((has("Snowpeak_Ruins_Small_Key",4) and has("Ordon_Goat_Cheese")) or has("small-keysy-enabled"))
          and  has("Ball_and_Chain")
          and hasBombs()
          and (has("Snowpeak_Ruins_Bedroom_Key") or has("boss-keysy-enabled"))
          and canDefeatBlizzeta()
end

function hasReekfish()
  if has("Reekfish_Scent") or has("early-snowpeak-on") then
    return true
  elseif canDoMapGlitch() then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

--[[-------------------------------------------------------
  Bosses
---------------------------------------------------------]]
function canDefeatDarkhammer()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatBlizzeta()
  return has("Ball_and_Chain")
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function Snowpeak_Ball_and_Chain()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local pumpkin = has("Ordon_Pumpkin") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",2) or has("small-keysy-enabled")

  return has("Ball_and_Chain") or (hasBombs() and (pumpkin or (cheese and keys)))
end

function Snowpeak_Broken_Floor_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  return cheese and has("Ball_and_Chain")
end

function Snowpeak_Chapel_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",4) or has("small-keysy-enabled")

  return has("Ball_and_Chain") and hasBombs() and cheese and keys
end

function Snowpeak_Chest_After_Darkhammer()
  return has("Ball_and_Chain")
end

function Snowpeak_Courtyard_Central_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local pumpkin = has("Ordon_Pumpkin") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",2) or has("small-keysy-enabled")

  return has("Ball_and_Chain")
          or (hasBombs() and (cheese or pumpkin or keys))
end

function Snowpeak_Dungeon_Reward()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local pumpkin = has("Ordon_Pumpkin") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",4) or has("small-keysy-enabled")
  local bedroom_key = has("Snowpeak_Ruins_Bedroom_Key") or has("boss-keysy-enabled")

  return cheese and keys and bedroom_key and hasBombs() and has("Ball_and_Chain")
end

function Snowpeak_Ice_Room_Poe()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",3) or has("small-keysy-enabled")

  return cheese and keys and has("Ball_and_Chain") and has("Shadow_Crystal")
end

function Snowpeak_Lobby_Armor_Chests()
  return has("Ball_and_Chain")
end

function Snowpeak_Lobby_Chandelier_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",3) or has("small-keysy-enabled")

  return has("Ball_and_Chain") and cheese and keys
end

function Snowpeak_Northeast_Chandelier_Chest()
  local keys = has("Snowpeak_Ruins_Small_Key",4) or has("small-keysy-enabled")
  return has("Ball_and_Chain") and has("Clawshot") and keys
end

function Snowpeak_Ordon_Pumpkin_Chest()
  local keys = has("Snowpeak_Ruins_Small_Key",4) or has("small-keysy-enabled")
  return keys
end

function Snowpeak_West_Cannon_Room_Central_Chest()
  return has("Ball_and_Chain")
end

function Snowpeak_West_Cannon_Room_Corner_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  return has("Ball_and_Chain") or (cheese and hasBombs())
end

function Snowpeak_West_Courtyard_Buried_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  return (cheese or has("Ball_and_Chain")) and has("Shadow_Crystal")
end

function Snowpeak_Wooden_Beam_Chests()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  return has("Ball_and_Chain") or (cheese and hasBombs())
end

function Snowpeak_Wooden_Beam_Chandelier_Chest()
  local cheese = has("Ordon_Goat_Cheese") or has("small-keysy-enabled")
  local keys = has("Snowpeak_Ruins_Small_Key",4) or has("small-keysy-enabled")

  return has("Ball_and_Chain") and cheese and keys
end
