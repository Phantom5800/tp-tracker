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
