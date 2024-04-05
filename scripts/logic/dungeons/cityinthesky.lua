--[[-------------------------------------------------------
  Dungeon Progress
---------------------------------------------------------]]
function canAccessCiTS()
  return canAccessLanayru() 
          and has("Clawshot") 
          and (has("Skybook",7) or has("early-city-on"))
end

function canCompleteCityinTheSky()
  return canAccessCiTS() 
          and has("Double_Clawshot") 
          and has("Shadow_Crystal") 
          and has("Iron_Boots") 
          and (has("City_in_The_Sky_Big_Key") or has("boss-keysy-enabled"))
          and canDefeatArgorok()
end

--[[-------------------------------------------------------
  Bosses and Unique Enemies
---------------------------------------------------------]]
function canDefeatAeralfos()
  return has("Clawshot")
          and (hasSword() 
                or has("Ball_and_Chain") 
                or has("Shadow_Crystal"))
end

function canDefeatArgorok()
  return has("Double_Clawshot")
          and has("Progressive_Sword_2")
          and has("Iron_Boots")
end

--[[-------------------------------------------------------
  Individual Checks
---------------------------------------------------------]]
