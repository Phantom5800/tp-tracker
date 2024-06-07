--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessLakebed()
  if canLeaveForest()
          and ((canSmash() and (hasSword() and has("Slingshot")) or has("skip-prologue-on"))
                or (has("Gate_Keys") and (hasSword() and has("Slingshot")) or has("skip-prologue-on")))
          and has("Zora_Armor")
          and (has("early-lakebed-on") or (has("Iron_Boots") and canUseWaterBombs())) then
    if has("Lakebed") then
      return true
    else
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function canGetThroughStalactiteRoom()
  if canLaunchBombs() then
    return true
  elseif has("Boomerang") then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function canCompleteLakebedTemple()
  if canDefeatMorpheel() then
    if has("Lakebed_Temple_Big_Key") or has("boss-keysy-enabled") then
      return true
    elseif hasSword() then -- boss key skip is possible
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

--[[-------------------------------------------------------
  Bosses
---------------------------------------------------------]]
function canDefeatDekuToad()
  return hasSword()
          or has("Ball_and_Chain")
          or has("Progressive_Bow")
          or has("Shadow_Crystal")
          or hasBombs()
end

function canDefeatMorpheel()
  return has("Zora_Armor")
          and has("Iron_Boots")
          and hasSword()
          and has("Clawshot")
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function Lakebed_Before_Deku_Toad_Alcove_Chest()
  if has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled") then
    return true
  elseif (has("Lakebed_Temple_Small_Key", 2) or has("small-keysy-enabled")) and has("Clawshot") then
    return true
  elseif has("Boomerang") then
    return true,AccessibilityLevel.SequenceBreak
  else
    return false
  end
end

function Lakebed_Before_Deku_Toad_Underwater_Chests()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Iron_Boots")
end

function Lakebed_Big_Key_Chest()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Clawshot")
end

function Lakebed_Central_Room_Spire_Chest()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Iron_Boots")
end

function Lakebed_Chandelier_Chest()
  return has("Clawshot")
end

function Lakebed_Deku_Toad_Chest()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Iron_Boots")
          and hasBombs()
          and canDefeatDekuToad()
end

function Lakebed_East_Lower_Waterwheel_Bridge_Chest()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Clawshot")
end

function Lakebed_East_Lower_Waterwheel_Stalactite_Chest()
  return canLaunchBombs()
end

function Lakebed_East_Second_Floor_Chests()
  return (has("Lakebed_Temple_Small_Key", 1) or has("small-keysy-enabled"))
end

function Lakebed_East_Water_Supply_Clawshot_Chest()
  return has("Clawshot")
end

function Lakebed_Stalactite_Room_Small_Chest()
  return canLaunchBombs()
end

function Lakebed_Water_Supply_Rooms()
  return (has("Lakebed_Temple_Small_Key", 2) or has("small-keysy-enabled"))
end

function Lakebed_West_Lower_Small_Chest()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Clawshot")
end

function Lakebed_West_Second_Floor_Chests()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Clawshot")
end

function Lakebed_West_Second_Floor_Underwater_Chest()
  return Lakebed_West_Second_Floor_Chests()
          and has("Iron_Boots")
end

function Lakebed_West_Water_Supply_Chests()
  return has("Clawshot")
end

function Lakebed_Underwater_Maze_Small_Chest()
  return (has("Lakebed_Temple_Small_Key", 3) or has("small-keysy-enabled"))
          and has("Iron_Boots")
          and hasBombs()
          and has("Clawshot")
end
