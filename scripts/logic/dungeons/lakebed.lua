--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessLakebed()
  return canLeaveForest() 
          and ((canSmash() and (hasSword() and has("Slingshot")) or has("skip-prologue-on")) 
                or (has("Gate_Keys") and (hasSword() and has("Slingshot")) or has("skip-prologue-on"))) 
          and has("Zora_Armor") 
          and (has("early-lakebed-on") or (has("Iron_Boots") and canUseWaterBombs()))
end

function canCompleteLakebedTemple()
  return canAccessLakebed() 
          and canLaunchBombs() 
          and (has("Lakebed_Temple_Small_Key",3) or has("small-keysy-enabled"))
          and (has("Lakebed_Temple_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatMorpheel()
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
