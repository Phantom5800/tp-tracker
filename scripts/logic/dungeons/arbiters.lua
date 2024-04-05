--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessArbiters()
  return (canSmash() or has("Gate_Keys"))
          and ((hasSword() and has("Slingshot")) or has("skip-prologue-on"))
          and has("Auru_Memo")
          and (has("early-arbiters-on") or has("Gerudo_Desert_Small_Key"))
          and canLeaveForest()
end

function canCompleteArbitersGrounds()
  return canAccessArbiters()
          and (has("Arbiters_Grounds_Small_Key",4) or has("small-keysy-enabled"))
          and has("Lantern")
          and has("Shadow_Crystal")
          and has("Clawshot")
          and has("Spinner")
          and (has("Arbiters_Grounds_Big_Key") or has("boss-keysy-enabled"))
          and ((has("palace-vanilla") and canCompleteCityinTheSky())
                or (has("palace-fused") and has("Progressive_Fused_Shadow_3"))
                or (has("palace-mirror") and has("Progressive_Mirror_Shard_3"))
                or has("palace-open"))
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
  return smkeys and has("Lantern") and has("Clawshot") and canSmash() and has("Spinner")
end

function Arbiters_Grounds_Death_Sword_Chest()
  local smkeys = has("Arbiters_Grounds_Small_Key",5) or has("small-keysy-enabled")
  return smkeys and has("Lantern") and canSmash() and canDefeatDeathSword()
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
