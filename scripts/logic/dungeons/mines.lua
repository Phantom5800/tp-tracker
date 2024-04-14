--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canPressMinesSwitch()
  return has("Iron_Boots")
end

function canAccessMines()
  if has("Iron_Boots")
      and canDefeatGoron()
      and ((hasSword() and has("Slingshot")) or has("skip-prologue-on"))
      and canLeaveForest() then
    if has("GoronMines") then
      return true
    else
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function canGetThroughFirstMinesRoom()
  return has("Iron_Boots") and canBreakWoodenDoor()
end

function canCompleteGoronMines()
  return has("Iron_Boots")
          and canBreakWoodenDoor()
          and (has("Goron_Mines_Small_Key",3) or has("small-keysy-enabled"))
          and has("Progressive_Bow")
          and canDefeatBulblin()
          and (has("Goron_Mines_Big_Key",3) or has("boss-keysy-enabled"))
          and canDefeatFyrus(),accessLevel
end

--[[-------------------------------------------------------
  Bosses
---------------------------------------------------------]]
function canDefeatDangoro()
  return (hasSword() or has("Ball_and_Chain") or has("Shadow_Crystal"))
          and has("Iron_Boots")
end

function canDefeatFyrus()
  return has("Progressive_Bow")
          and has("Iron_Boots")
          and hasSword()
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function GoronMines_After_Dangoro_Rooms()
  local key_access = has("Goron_Mines_Small_Key",3) or has("small-keysy-enabled")
  return key_access and has("Progressive_Bow") and canDefeatDangoro()
end

function GoronMines_Gor_Amato_Room()
  local key_access = has("Goron_Mines_Small_Key",1) or has("small-keysy-enabled")
  return key_access
end

function GoronMines_Gor_Ebizo_Room()
  local key_access = has("Goron_Mines_Small_Key",3) or has("small-keysy-enabled")
  return key_access
end

function GoronMines_Crystal_Switch_Room()
  local key_access = has("Goron_Mines_Small_Key",1) or has("small-keysy-enabled")
  return key_access
end

function GoronMines_Dangoro_Chest()
  local key_access = has("Goron_Mines_Small_Key",3) or has("small-keysy-enabled")
  return key_access and canDefeatDangoro()
end

function GoronMines_Dungeon_Reward()
  local smkey_access = has("Goron_Mines_Small_Key",3) or has("small-keysy-enabled")
  local bgkey_access = has("Goron_Mines_Big_Key",3) or has("boss-keysy-enabled")
  return smkey_access and bgkey_access and canDefeatFyrus()
end

function GoronMines_Outside_Beamos_Chest()
  local key_access = has("Goron_Mines_Small_Key",2) or has("small-keysy-enabled")
  if key_access then
    if hasSword() or has("Progressive_Bow") then -- need to drop bridge in previous room
      return true
    elseif has("Boomerang") then -- can LJA behind it
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end
