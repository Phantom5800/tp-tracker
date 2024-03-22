function canAccessSnowpeakRuins()
  return canSmash() 
          and ((hasSword() and has("Slingshot")) or has("skip-prologue-on"))
          and canLeaveForest() 
          and has("Shadow_Crystal") 
          and (has("Reekfish_Scent") or has("early-snowpeak-on"))
end

function canCompleteSnowpeakRuins()
  return canAccessSnowpeakRuins() 
          and ((has("Snowpeak_Ruins_Small_Key",4) and has("Ordon_Goat_Cheese")) or has("small-keysy-enabled"))
          and  has("Ball_and_Chain") 
          and hasBombs() 
          and (has("Snowpeak_Ruins_Bedroom_Key") or has("boss-keysy-enabled"))
          and canDefeatBlizzeta()
end

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
