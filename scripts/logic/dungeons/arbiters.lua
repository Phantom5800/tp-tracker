--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessArbiters()
  if (canSmash() or has("Gate_Keys"))
          and ((hasSword() and has("Slingshot")) or has("skip-prologue-on"))
          and has("Auru_Memo")
          and (has("early-arbiters-on") or has("Gerudo_Desert_Small_Key"))
          and canLeaveForest() then
    if has("Arbiters") then
      return true
    else
      return true,AccessibilityLevel.SequenceBreak
    end
  end
  return false
end

function canCompleteArbitersGrounds()
  return canAccessArbiters()
          and (has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled"))
          and has("Lantern")
          and has("Shadow_Crystal")
          and has("Clawshot")
          and has("Spinner")
          and (has("Arbiters_Grounds_Big_Key") or has("boss-keysy-enabled"))
end

--[[-------------------------------------------------------
  Bosses
---------------------------------------------------------]]
function canDefeatDeathSword()
  return (hasSword() or has("Ball_and_Chain"))
          and (has("Boomerang")
                or has("Progressive_Bow")
                or has("Clawshot"))
          and has("Shadow_Crystal")
end

function canDefeatStallord()
  return has("Spinner") and hasSword()
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
function Arbiters_Grounds_Big_Key_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",5) or has("small-keysy-enabled")
  if smkeys and has("Lantern") and has("Clawshot") and canSmash() and has("Spinner") then
    return true
    -- insert big key early here
  end
  return false
end

function Arbiters_Grounds_Death_Sword_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",5) or has("small-keysy-enabled")
  if smkeys and has("Lantern") and canSmash() then -- can reach death sword logically
    if canDefeatDeathSword() then
      return true
    elseif has("Shadow_Crystal") then
      return true,AccessibilityLevel.SequenceBreak -- death sword skip
    end
  end
  return false
end

function Arbiters_Grounds_Dungeon_Reward()
  local smkeys = has("Arbiters_Grounds_Small_Key",5) or has("small-keysy-enabled")
  local bosskey = has("Arbiters_Grounds_Big_Key") or has("boss-keysy-enabled")

  return smkeys and bosskey
          and has("Lantern")
          and has("Clawshot")
          and has("Spinner")
          and hasSword()
          and canSmash()
end

function Arbiters_Grounds_East_Lower_Turnable_Redead_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",1) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_East_Turning_Room_Poe()
  local smkeys = has("Arbiters_Grounds_Small_Key",1) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and has("Clawshot") and has("Shadow_Crystal")
end

function Arbiters_Grounds_East_Upper_Turnable_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",2) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_East_Upper_Turnable_Redead_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",2) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_Ghoul_Rat_Room_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",3) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_Hidden_Wall_Poe()
  local smkeys = has("Arbiters_Grounds_Small_Key",3) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and has("Shadow_Crystal") and canDefeatRedeadKnight()
end

function Arbiters_Grounds_North_Turning_Room_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and has("Clawshot") and canSmash()
end

function Arbiters_Grounds_Second_Small_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",5) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and has("Clawshot") and canSmash() and has("Spinner")
end

function Arbiters_Grounds_Spinner_Room_Chests()
  local smkeys = has("Arbiters_Grounds_Small_Key",5) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and has("Clawshot") and canSmash() and has("Spinner")
end

function Arbiters_Grounds_Torch_Room_Chests()
  local smkeys = has("Arbiters_Grounds_Small_Key",1) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_West_Chandelier_Chest()
  local logical_smkeys = has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled")
  local ool_smkeys = has("Arbiters_Grounds_Small_Key",1) or has("small-keysy-enabled")
  if logical_smkeys and has("Lantern") then
    return true
  elseif ool_smkeys and has("Boomerang") then
    return true,AccessibilityLevel.SequenceBreak
  end
  return false
end

function Arbiters_Grounds_West_Poe()
  local smkeys = has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and has("Shadow_Crystal") and canSmash()
end

function Arbiters_Grounds_West_Small_Chest_Behind_Block()
  local smkeys = has("Arbiters_Grounds_Small_Key",1) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_West_Stalfos_Northeast_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end

function Arbiters_Grounds_West_Stalfos_West_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled")
  return smkeys and has("Lantern")
end
