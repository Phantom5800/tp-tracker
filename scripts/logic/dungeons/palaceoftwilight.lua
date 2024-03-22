function canAccessPoT()
  return canCompleteArbitersGrounds()
          and has("Shadow_Crystal") 
          and ((has("palace-vanilla") and canCompleteCityinTheSky()) 
            or (has("palace-fused") and has("Progressive_Fused_Shadow_3"))
            or (has("palace-mirror") and has("Progressive_Mirror_Shard_3")) 
            or has("palace-open"))
end

function canCompletePalaceofTwilight()
  return canAccessPoT() 
          and has("Progressive_Sword_4") 
          and has("Shadow_Crystal") 
          and (has("Palace_of_Twilight_Small_Key",7) or has("small-keysy-enabled"))
          and (has("Palace_of_Twilight_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatZant()
end

function canDefeatZantHead()
  return has("Shadow_Crystal") or hasSword()
end

function canDefeatPhantomZant()
  return has("Shadow_Crystal") or hasSword()
end

function canDefeatZant()
  return has("Progressive_Sword_3")
          and has("Boomerang")
          and has("Clawshot")
          and has("Ball_and_Chain")
          and has("Iron_Boots")
          and has("Zora_Armor")
end
