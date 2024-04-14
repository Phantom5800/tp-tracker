--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessOutsideToT()
  return canCompletePrologue()
          and has("Shadow_Crystal")
          and (canDefeatShadowBeast() and has("Progressive_Sword_3") or has("early-tot-open"))
end

function canAccessToT()
  if canAccessOutsideToT() then
    if has("TempleOfTime") then
      return true
    else
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function canCompleteTempleofTime()
  return canAccessToT()
          and has("Progressive_Dominion_Rod")
          and has("Progressive_Bow")
          and has("Spinner")
          --and (has("Temple_of_Time_Small_Key",3) or has("small-keysy-enabled")) -- never need small keys if first chest has boss key
          and (has("Temple_of_Time_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatArmogohma()
end

--[[-------------------------------------------------------
  Bosses
---------------------------------------------------------]]
function canDefeatDarknut()
  return hasSword()
end

function canDefeatArmogohma()
  return has("Progressive_Bow")
          and has("Progressive_Dominion_Rod")
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function Temple_of_Time_2F_Access()
  local key = has("Temple_of_Time_Small_Key",1) or has("small-keysy-enabled")
  return key
end

function Temple_of_Time_3F_Access()
  local key = has("Temple_of_Time_Small_Key",1) or has("small-keysy-enabled")
  return key
end

function Temple_of_Time_5F_Access()
  local key = has("Temple_of_Time_Small_Key",2) or has("small-keysy-enabled")
  return key and has("Spinner")
end

function Temple_of_Time_6F_Access()
  local key = has("Temple_of_Time_Small_Key",2) or has("small-keysy-enabled")
  return key and has("Spinner") and has("Progressive_Bow")
end

function Temple_of_Time_7F_Access()
  local key = has("Temple_of_Time_Small_Key",2) or has("small-keysy-enabled")
  return key and has("Spinner") and has("Progressive_Bow")
end

function Temple_of_Time_8F_Access()
  local key = has("Temple_of_Time_Small_Key",2) or has("small-keysy-enabled")
  return key and has("Spinner") and has("Progressive_Bow")
end

function Temple_of_Time_Darknut_Chest()
  local key = has("Temple_of_Time_Small_Key",3) or has("small-keysy-enabled")
  return key and canDefeatDarknut()
end

function Temple_of_Time_Dungeon_Reward()
  local key = has("Temple_of_Time_Big_Key") or has("boss-keysy-enabled")
  return key and has("Progressive_Bow") and has("Progressive_Dominion_Rod")
end

function Temple_of_Time_Lobby_Lantern_Chest()
  return has("Lantern")
end
